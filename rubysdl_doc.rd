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

== Error

���顼�����ѤΥ��饹�Ǥ���SDL�⥸�塼����������륨�顼�ۤܤ��٤�
���Υ��饹���Ѥ������Τ���ޤ���

=== �����ѡ����饹

StandardError

== video��Ϣ

=== SDL��Υ⥸�塼��ؿ�

--- blitSurface(src,srcX,srcY,srcW,srcH,dst,dstX,dstY)

--- warpMouse(x,y)

=== Surface

�������ݻ����륯�饹�Ǥ���

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Surface.new(flag,w,h,format)

--- Surface.loadBMP(filename)

==== �᥽�å�

--- Surface#mapRGB(r,g,b)

--- Surface#mapRGBA(r,g,b,a)

--- Surface#getRGB(pixel)

--- Surface#getRGBA(pixel)

--- Surface#displayFormat

--- Surface#setColorKey(flag,key)

--- Surface#fillRect(x,y,w,h)

--- Surface#setClipRect(x,y,w,h)

--- Surface#setAlpha(flag,alpha)

--- Surface#h

--- Surface#w

--- Surface#format

=== Screen

�����ˤ������ޤ줿���������̤�ɽ������ޤ���

==== �����ѡ����饹

((<Surface>))

==== ���饹�᥽�å�

--- Screen.setVideoMode(w,h,bpp,flags)

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
