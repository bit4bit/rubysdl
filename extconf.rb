require 'mkmf'

$srcs = Dir.glob(File.join($srcdir, "*.c"))
if /mswin32/ =~ CONFIG["arch"]
  have_library("SDL")
else
  sdl_config = with_config('sdl-config', 'sdl-config')
  $CPPFLAGS += " " + `#{sdl_config} --cflags`.chomp
  $LOCAL_LIBS += ' ' + `#{sdl_config} --libs`.chomp

  $CPPFLAGS.gsub!(/-Dmain=SDL_main/, "")
end

if enable_config("static-libs",false) then
  have_library("stdc++")
  have_library("z")
  have_library("png")
  have_library("tiff")
  have_library("jpeg")
  have_library("freetype")
  have_library("iconv")
  have_library("ogg")
  have_library("vorbis")
  have_library("vorbisfile")
  have_library("vorbisenc")
  have_library("winmm")
  have_library("SDL")
end

if have_library("smpeg","SMPEG_new") then
  $CPPFLAGS+= " -D HAVE_SMPEG "
  smpeg_config = with_config('smpeg-config', 'smpeg-config')
  if system(smpeg_config, "--version")
    $CPPFLAGS += ' ' + `#{smpeg_config} --cflags`.chomp
    $LOCAL_LIBS += ' ' + `#{smpeg_config} --libs`.chomp
  end
end
if have_library("SDL_mixer","Mix_OpenAudio") then
  $CPPFLAGS+= " -D HAVE_SDL_MIXER "
end
if have_library("SDL_image","IMG_Load") then
  $CPPFLAGS+= " -D HAVE_SDL_IMAGE "
end
if have_library("SDL_ttf","TTF_Init") then
  $CPPFLAGS+= " -D HAVE_SDL_TTF "
end
use_bundled_sge = enable_config("bundled-sge", false)
if use_bundled_sge
  $CPPFLAGS+= " -Isge -D HAVE_SGE "
else
  if have_library("SGE","sge_Line") then
    $CPPFLAGS+= " -D HAVE_SGE "
  end
end

have_func("TTF_OpenFontIndex")
have_func("TTF_FontFaces")
have_func("TTF_FontFaceIsFixedWidth")
have_func("TTF_FontFaceFamilyName")
have_func("TTF_FontFaceStyleName")
have_func("Mix_LoadMUS_RW")
have_func("rb_thread_blocking_region")
if have_header("ruby/thread.h")
  have_func("rb_thread_call_without_gvl")
end

if enable_config("m17n", true)
  if have_func("rb_enc_str_new") && have_func("rb_str_export_to_enc")
    $CPPFLAGS += " -D ENABLE_M17N "
    if enable_config("m17n-filesystem", false)
      $CPPFLAGS += " -D ENABLE_M17N_FILESYSTEM "
    end
  end
end

if have_library("SDLSKK","SDLSKK_Context_new") then
  $CPPFLAGS+= " -D HAVE_SDLSKK "
end
if enable_config("opengl",true) then
  dir_config('x11','/usr/X11R6')
  
  $CPPFLAGS+= " -D ENABLE_OPENGL "

  if /linux/ =~ CONFIG["arch"] then
    have_library("GL","glVertex3d")
  elsif /mingw32/ =~ CONFIG["arch"] then
    have_library("opengl32","glVertex3d")
    have_library("glu32","gluGetString")
  end
end

if use_bundled_sge
  $srcs += Dir.glob(File.join($srcdir, "sge/*.cpp"))
  $objs = $srcs.map{|fname| fname.sub(/\.(c|cpp)\Z/, ".o") }
end

create_makefile("sdl_ext")

