=begin

= SDL

���٤ƤΥ��饹/�⥸�塼���module SDL�β��ˤ���ޤ���

== ���饹/�⥸�塼�빽��
* ((<Error>))
* ((<Surface>))
  * ((<Screen>))
* ((<PixelFormat>))
* ((<Event>))
* ((<Mixer>)) (module)
* ((<Mixer::Wave>))
* ((<WM>)) (module)
* ((<Key>)) (module)
* ((<Mouse>)) (module)
* ((<TTF>))

== Error

���顼�����ѤΥ��饹�Ǥ���SDL�⥸�塼����������륨�顼�ۤܤ��٤�
���Υ��饹���Ѥ������Τ���ޤ���

=== �����ѡ����饹

StandardError

== �������Ϣ

=== SDL��Υ⥸�塼��ؿ�

--- init(flag)

--- quit
      at_exit{ SDL.quit; } �Ȥ����褦�˻ȤäƤ���������

--- initializedSystem(flag)

== video��Ϣ

�����ε�ǽ�ϡ�SGE�饤�֥�꤬ɬ�פǤ���

=== SDL��Υ⥸�塼��ؿ�

--- blitSurface(src,srcX,srcY,srcW,srcH,dst,dstX,dstY)

--- warpMouse(x,y)

--- rotateXYScaled(src,dst,x,y,angle,xscale,yscale)
      SGE��ɬ��
      SGE��sge_rotate_xyscaled�ؿ��Ȥ�src��dst�ν���������ؤ�äƤ��뤳�Ȥ�
      ��դ���褦�ˡ�����2�Ĥδؿ���Ʊ�ͤǤ��롣
      ����ϡ�blitSurface�˹�碌������Ǥ��롣
      �ޤ������λ��ͤ��ѹ������ǽ�������롣

--- rotateScaled(src,dst,x,y,angle,scale)

--- rotate(src,dst,x,y,angle)

=== Surface

�������ݻ����륯�饹�Ǥ���

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Surface.new(flag,w,h,format)

--- Surface.loadBMP(filename)

==== �᥽�å�

--- Surface#displayFormat

--- Surface#setColorKey(flag,key)

--- Surface#fillRect(x,y,w,h)

--- Surface#setClipRect(x,y,w,h)

--- Surface#setAlpha(flag,alpha)

--- Surface#h

--- Surface#w

--- Surface#format

--- Surface#put(image,x,y)

--- Surface#getPixel(x,y) 
--- Surface#[]
      SGE��ɬ��

--- Surface#putPixel(x,y)
--- Surface#[]=
      SGE��ɬ��

--- Surface#drawLine(x1,y1,x2,y2,color)
      SGE��ɬ��

--- Surface#drawRect(x,y,w,h,color)
      SGE��ɬ��

--- Surface#drawCircle(x,y,r,color)
      SGE��ɬ��

--- Surface#drawFilledCircle(x,y,r,color)
      SGE��ɬ��

--- Surface#rotateScaledSurface(angle,scale,bgcolor)
      SGE��ɬ��
      ����ϡ�self��angle�ٷ�����scale�ܤ������������Surface�Υ��󥹥��󥹤�
      ��������᥽�åɤǤ��롣��ž�ˤ�ä��������֤�bgcolor�������롣

--- Surface#rotateSurface(angle,bgcolor)
      
=== Screen

�����ˤ������ޤ줿���������̤�ɽ������ޤ���
���Υ��饹�Ϥ�����Ĥ��������Ǥ��ʤ��褦�ˤʤäƤ��ơ�
SDL::setVideoMode�ˤ�äƤΤ���������롣
�ºݤˤϡ����Τ褦�ʥ��饹��¸�ߤ�����Surface�˰ʲ����ðۥ᥽�åɤ��ɲä���
���֥������ȤǤ��롣

==== �����ѡ����饹

((<Surface>))

==== ���饹�᥽�å�


==== �᥽�å�

--- Screen#updateRect(x,y,w,h)

--- Screen#flip

=== PixelFormat

SDL_PixelFormat�Υ�åѡ����饹��
Surface#format�Ǽ����Ǥ���((<Surface.new>))�Υե����ޥåȤȤ��Ƥ���
���֥������Ȥ�Ϳ���뤳�Ȥ��Ǥ��롣

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

�ʤ�

==== �᥽�å�

---PixelFormat#MapRGB(r,g,b)

---PixelFormat#MapRGBA(r,g,b,a)

---PixelFormat#getRGB(pixel)

---PixelFormat#getRGBA(pixel)

== Event��Ϣ

=== Event

���٥�Ȥ�Ȥꤢ�Ĥ������饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Event.new

==== �᥽�å�

--- Event#poll

--- Event#type

--- Event#keyPress?

--- Event#keySym

--- Event#keyMod


--- Event#gain?

--- Event#appState

--- Event#mouseX

--- Event#mouseY

--- Event#mouseXrel

--- Event#mouseYrel


--- Event#mouseButton

--- Event#mousePress?

=== Key

�����ܡ��ɤΥ������б����������������Ƥ���⥸�塼��
�����ܡ��ɤΥ����ξ��֤��Τ뤿��δؿ��⤳����ˤ��롣

==== �⥸�塼��ؿ�

--- scan
      �����ܡ��ɤξ��֤򥹥���󤷤ޤ�

--- state(key)
      �����ƤӽФ�����scan��ƤӤ����Ƥ���������
      scan ���������֤����ޤ���1�ǲ����Ƥ��롢0��Υ���Ƥ��롢�Ǥ���

--- modState

--- enableKeyRepeat(delay,interval)

--- disableKeyRepeat

== Mouse

�ޥ�����Ϣ������ȴؿ���������Ƥ���⥸�塼��

=== �⥸�塼��ؿ�

--- state
      �ޥ����ξ��֤�����η����֤��ޤ���
      ��������Ƥ�

      [ x , y , pressLButton? , pressMButton? , pressRButton? ]

      �ȤʤäƤ��ޤ���

== audio��Ϣ

=== Mixer

����������ꤹ��Τ˻Ȥ��⥸�塼��
�ܥ�塼���0����128��ͭ���Ǥ���
���Υ⥸�塼��ε�ǽ��Ȥ�����ˤϡ�SDL_mixer�饤�֥�꤬ɬ�פǤ���

==== �⥸�塼��ؿ�

--- open(frequency,format,channels,chunksize)

--- spec

--- playChannel(channel,wave,looping)

--- play?(channel)

--- setVolume(channel,volume)

--- halt(channel)

--- pause(chennel)

--- resume(channel)

--- pause?(channel)

=== Mixer::Wave

Wave�򤢤�魯���饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Mixer::Wave.load(filename)

==== �᥽�å�

--- Mixer::Wave#setVolume(volume)

== Window Manager ��Ϣ

=== WM

Window��Ϣ�ν�����ޤȤ᤿�⥸�塼��

==== �⥸�塼��ؿ�

--- caption

--- setCaption(title,icon)

--- icon=(iconImage)

--- iconify

== �ե���ȴط�

=== TTF

�ԣ����ԣ����ե���Ȥ�ɽ�����饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- TTF.init

--- TTF.open(filename,size)

==== �᥽�å�

--- TTF#style

--- TTF#style=(style)

--- TTF#drawSolidUTF8(dest,text,x,y,r,g,b)
      self�Υե���������dest(Surface�Υ��󥹥���)��String text��
      dest�ΰ���(x,y)�ν�˽񤭤��ࡣ����r,g,b�Ƿ����롣
      Ʃ����(ColorKey)��ͭ���Ǥ��롣text��UTF-8��Ȥ���
=end
