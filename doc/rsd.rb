#!/usr/local/bin/ruby -Ke

class Hash
  def hash_map
    new_hash = Hash.new
    each{|k,v| new_hash[k] = yield k,v}
    new_hash
  end
end

def convert_link(str)
  (?a..?z).include?(str[0]) ? "((<SDL.#{str}>))" : "((<SDL::#{str}>))"
end

def convert_dlink(desc, link)
  (?a..?z).include?(link[0]) ? "((<#{desc}|SDL.#{link}>))" :
    "((<#{desc}|SDL::#{link}>))"
end

def inline(str)
  str.gsub(/\$\[(.*?)\]/,'((|\1|))').
    gsub(/\@\[(.*?)\|(.*?)\]/){ convert_dlink($1,$2) }.
    gsub(/\@\[(.*?)\]/){ convert_link($1) }
end

def format(lines,spaces)
  if lines
    lines.split(/^/).map{|line| " "*spaces + inline(line)}.join + "\n"
  else
    ""
  end
end

MethodDesc = Struct.new(:output, :purpose, :fullname)

def rsd2rd(input)
  part = Hash.new{""}
  mode = nil
  
  input.each do |line|
    case line
    when /^(MOD|DEP|NAME|PURPOSE|TYPE)\s+/
      part[$1] = $'.chomp
    when /^(PROTO|DESC|NOTES|RET|EXCEPTION|EXAMPLE|BUG|SEEALSO)\s*$/
      mode = $1
    when "EXCEPTION *\n"
      part["EXCEPTION"] = "���Ԥ����Ȥ��ˤ��㳰@[Error]��ȯ�������ޤ���\n"
    else
      part[mode] += line
    end
  end

  %w(NAME PURPOSE TYPE PROTO DESC).each do |v|
    raise "There isn't #{v}" unless part.key?(v)
  end

  part = part.hash_map{|_, line| line.sub(/\n+\z/,"\n")}

  output = ""
  ns = if part.key?("MOD") then "SDL::#{part["MOD"]}" else "SDL" end

  part["PROTO"].each{|proto| output << "--- #{ns}#{part["TYPE"]}#{proto}"}
  output << "\n"
  output << format(part["DESC"],4)
  output << format(part["RET"],4)
  output << format(part["EXCEPTION"],4)
  if part.key?("EXAMPLE")
    output << "    EXAMPLE\n"
    output << format(part["EXAMPLE"],6)
  end
  if part.key?("NOTES")
    output << "    * NOTES\n\n"
    output << format(part["NOTES"],6)
  end
    if part.key?("BUG")
    output << "    * BUG\n\n"
    output << format(part["NOTES"],6)
  end
  if part.key?("SEEALSO")
    output << "    * See Also\n      \n      "
    output << part["SEEALSO"].
      split(/\n/).
      map{|line| line[0] == ?( ? line : convert_link(line) }.
      join(", ")
    output << "\n\n"
  end

  MethodDesc.new(output, part["PURPOSE"], "#{ns}#{part["TYPE"]}#{part["NAME"]}")
end

def toc(methods)
  methods.map{|m| ":((<#{m.fullname}>)) -- #{inline(m.purpose)}" }.join("\n")
end

synop, descs = ARGF.read.split(/^%%%$/)
methods = descs.split(/^%%$/).map{|m| rsd2rd(m)}

STDOUT << format(synop, 0).gsub(/^TOC$/){ toc(methods) }
methods.each{|m| STDOUT << m.output}

