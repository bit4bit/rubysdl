=begin

= SDL

���γ�ĥ�饤�֥��Υ��󥿡��ե�������SDL���Τ����˻��Ƥ��ޤ���
��ä�SDL�Υɥ�����Ȥ����˻��ͤˤʤ�Ǥ��礦��

���٤ƤΥ��饹/�⥸�塼���module SDL�β��ˤ���ޤ���
���Υ⥸�塼����ǤϿ��Ϥۤܤ��٤�0����Ϥޤ�ޤ���

== ���饹/�⥸�塼�빽��
* ((<Error>))
* ((<Surface>))
  * ((<Screen>))
* ((<PixelFormat>))
* ((<Event>))
* ((<Key>)) (module)
* ((<Mouse>)) (module)
* ((<Mixer>)) (module)
* ((<Mixer::Wave>))
* ((<Mixer::Music>))
* ((<WM>)) (module)
* ((<CD>))
* ((<Joystick>))
* ((<TTF>))

== Error

���顼�����ѤΥ��饹�Ǥ���SDL�⥸�塼����������륨�顼�ۤܤ��٤�
���Υ��饹���Ѥ������Τ���ޤ���

=== �����ѡ����饹

StandardError

== �������Ϣ

=== SDL��Υ⥸�塼��ؿ�

--- init(flag)
      SDL���������롣flag�Ȥ���Ϳ����������ϰʲ��ΤȤ��ꡣ
        INIT_AUDIO
        INIT_VIDEO
        INIT_CDROM
        INIT_JOYSTICK

--- quit
      at_exit{ SDL.quit; } �Ȥ����褦�˻ȤäƤ���������

      version 0.3�ˤ��ѻߡ��饤�֥�꤫�鼫ưŪ�ˤ�Ӥ�����롣

--- initializedSystem(flag)
      Not documented yet

== video��Ϣ

�����ε�ǽ�ϡ�SGE�饤�֥���SDL_image��ɬ�פǤ��롣

bpp=bit per pixel�Ǥ��롣

=== SDL��Υ⥸�塼��ؿ�

--- getVideoSurface
      Not documented yet

--- setVideoMode(w,h,bpp,flags)
      ���ꤵ�줿���̤������⤵��bpp���ͤǥӥǥ��⡼�ɤ����ꤹ�롣
      bpp��0�ξ�硢���ߤΥǥ����ץ쥤��bpp���ͤ����Ѥ���롣
      ���������Ȥ���((<Screen>))�Υ��֥������Ȥ��֤���
      ���Ԥ����Ȥ���SDL::Error�㳰�������롣
      flags�ΰ�̣�ϰʲ��ΤȤ��ꡣ
      * SWSURFACE
        
        �����ƥ�Υ�����˥Хåե���Ȥ롣

      * HWSURFACE

        �ӥǥ�����˥Хåե���Ȥ롣

      * FULLSCREEN
        
        �ե륹���꡼��⡼�ɤ�ư��褦�Ȥ��롣

      * DOUBLEBUF

        ���֥�Хåե���󥰤��Ǥ���褦�ˤ��롣
        Screen#flip���Ӥ������Ȥˤ�äƥХåե����ڤ��ؤ����Ǥ��롣

      * ANYFORMAT

        SDL�饤�֥����׵ᤵ�줿bpp�Ǥ�������ߤ뤬������ȰۤʤäƤ�����
        ��ǽ�ʥ⡼�ɤ�����Ф�����֤��Ƥ��롣�ǥե���Ȥ�ư��Ǥϡ��׵ᤵ��
        ���⡼�ɤ�ľ�ܥ��ݡ��Ȥ���Ƥ��ʤ����ϥ��ߥ�졼������Ԥ���

      flag�Ϥ��Τۤ��ˤ⤢�롣����˾ܤ����Τ�ɬ�פ������
      SDL�Υɥ�����Ȥ򸫤Ƥ���������

--- checkVideoMode(w,h,bpp,flags)
      ���ꤵ�줿�ӥǥ��⡼�ɤ����ݡ��Ȥ���Ƥ��뤫�ɤ�����Ĵ�٤롣
      ���ꥵ�����Υ����꡼�󤬤ɤ�ʥǥץ��Ǥ⥵�ݡ��Ȥ���Ƥ��ʤ�����
      0���֤��������Ĥ��Υǥץ��ǻ��ꤵ�줿�����������ݡ��Ȥ���Ƥ���С�
      �����ǻ��ꤷ����Τ˺Ǥ�ᤤbpp���ͤ��֤����⤷�����ͤ��ӥǥ��⡼��
      �����ꤹ��ݤ˻��ꤷ����ΤȰ�äƤ�����ϡ�setVideoMode��
      �������뤬�����ꤵ�줿�⡼�ɤϥ���ɥ������ե�����Ȥäƥ��ߥ�졼
      �Ȥ���뤳�Ȥˤʤ롣
      
      checkVideoMode���Ф�������ϡ�setVideoMode()�ǻ��Ѥ�����
      ��Ʊ���Ǥ��롣

--- listModes(flags)
      ���Ѳ�ǽ�ʲ����٤��֤���
      ���Ѳ�ǽ�ʲ����٤�¸�ߤ��ʤ��Ȥ���nil�֤����ޤ�����������٤����Ѳ�
      ǽ�ʤȤ���true���֤������Ѳ�ǽ�ʲ����٤�1�İʾ夢��Ȥ��Ϥ��β����٤�
      �β��������������β����٤��ͤ򤪤��᤿����1�İʾ����äƤ���������֤���
      
      ������flag�ϡ�setVideoMode�ǻ��Ѥ����Τ�Ʊ���Ǥ��롣

--- setGamma(redgamma,greengamma,bluegamma)
      ����ޤ����ꤷ�ޤ���
      ����ޤϥ����꡼���Ǥο������뤵�䥳��ȥ饹�Ȥ�Ĵ�ᤷ�ޤ���
      r,g,b���줾��Υ�����ͤ�1.0��̵Ĵ����Ʊ���ˤʤ�ޤ���

--- autoLock
      SGE��ɬ��

      �����ե����Υ�å���ɬ�פʤȤ���ưŪ�˥�å����Ƥ���뤫�ɤ���
      ���֤����ǥե���Ȥ�true��

      ����˾ܤ������Ȥ��Τꤿ�����((<Surface::lock>))�򸫤Ƥ���������

--- autoLock=(autolocking)
      SGE��ɬ��
      �����ե����Υ�å���ɬ�פʤȤ���ưŪ�˥�å����Ƥ����褦�����ꤹ�롣
      
--- videoInfo
      Video�ξ����VideoInfo�Υ��󥹥��󥹤��֤����������Ƥϰʲ����̤ꡣ
      �����ͤ�ɽ����Τ�true,false�����äƤ��롣
      �ܤ�����̣��SDL�Υɥ�����Ȥ򻲾Ȥ��Ƥ���������
        VideoInfo#hw_available
        VideoInfo#wm_available
        VideoInfo#blit_hw
        VideoInfo#blit_hw_CC
        VideoInfo#blit_hw_A
        VideoInfo#blit_sw
        VideoInfo#blit_sw_CC
        VideoInfo#blit_sw_A
        VideoInfo#blit_fill
        VideoInfo#video_mem
        VideoInfo#vfmt
	
--- blitSurface(src,srcX,srcY,srcW,srcH,dst,dstX,dstY)
      src�ǻ��ꤵ�줿Surface����dst�ǻ��ꤵ�줿Surface�ؤι�®��blit
      ��Ԥ���

      srcX,srcY,srcW,srcH�ˤ��٤�0����ꤷ������src���Τ�blit���롣

      ���Ի��ˤ��㳰SDL::Error�������롣      
      
      ��å����������ե������Ф��Ƥ����Ĥ��äƤϤ����ʤ���

--- blitSurface2(src,srcRect,dst,dstRect)
      blitSurface2(src,[0,32,32,32],dst,[100,200])
      �Τ褦�˻Ȥ���

      srcRect��nil����ꤷ������src���Τ�blit���롣

--- rotateXYScaled(src,dst,x,y,angle,xscale,yscale)
      SGE��ɬ��

      SGE��sge_rotate_xyscaled�ؿ��Ȥ�src��dst�ν���������ؤ�äƤ��뤳�Ȥ�
      ��դ���褦�ˡ�����2�Ĥδؿ���Ʊ�ͤǤ��롣
      ����ϡ�blitSurface�˹�碌������Ǥ��롣
      �ޤ������λ��ͤ��ѹ������ǽ�������롣

      �ޤ���ColorKey��̵�뤵��롣

--- rotateScaled(src,dst,x,y,angle,scale)
      rotateXYScaled��Ʊ�͡�������xscale��yscale���Ȥ��scale�Ǥ����
      ���롣

--- rotate(src,dst,x,y,angle)
      rotateXYScaled��Ʊ�͡�������xscale��yscale���Ȥ��1�Ǥ����
      ���롣

--- rotateScaledBlit(src,dst,x,y,angle,scale)
      SGE��ɬ��
      ColorKey��ͭ���Ȥʤ롣
      rotateBlit��Ʊ�ͤǤ��롣

--- rotateBlit(src,dst,x,y,angle)
      rotateScaledBlit��Ʊ�͡�������scale��1�Ǥ���Ȥ��롣

=== Surface

�������ݻ����륯�饹�Ǥ���

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Surface.new(flag,w,h,format)
      Not documented yet

--- Surface.loadBMP(filename)
      ���ꤵ�줿�ե�����̾��Windows BMP�����Υե����뤫��((<Surface>))
      �Υ��󥹥��󥹤�������롣
      �ե����뤬�����ʤ����Υ��顼������������SDL::Error�㳰�������롣

--- Surface.load(filename)
      SDL_image��ɬ��

      ���ꤵ�줿�ե�����̾�β����ե����뤫��((<Surface>))
      �Υ��󥹥��󥹤�������롣
      BMP,PPX,XPM,PCX,GIF,JPEG,PNG,TGA�ʤɤ���ɤǤ��롣

==== �᥽�å�

--- Surface#displayFormat
      self��ӥǥ��ե졼��Хåե��Υԥ�����ե����ޥåȤȿ��˹�碌��
      �����������ե����˥��ԡ������֤���
      ������surface��Ȥ����Ȥˤ�ä�screen�ؤι�®��blit���Ǥ��롣
      
      ���顼�����Ȧ��ͤ��Ф���blit�Υ�������졼���������Ѥ������Τʤ�С�
      ���δؿ��θƤӽФ�����Ω�äƥ��顼�����Ȧ��ͤ������ԤäƤ���
      ɬ�פ����롣

--- Surface#setColorKey(flag,key)
      blit��ǽ�ʥ����ե������Ф��ƥ��顼����(Ʃ���ʥԥ�����)�����ꤹ�롣

      flag��SDL::SRCCOLORKEY����ꤹ��ȡ����Υԥ������blit��src�ˤʤ�
      �ۤ���Ʃ���ԥ�����򼨤��Ƥ��뤳�Ȥˤʤ롣
      �̾�Ϥ��Υե饰��Ȥ���
      
      flag��SDL::RLEACCEL��OR��Ȥäƻ��ꤹ��ȡ�RLE��Ȥäƹ�®��blit��
      ���褦�Ȥ��롣

      flag��0�ξ��ϡ�color key�򥯥ꥢ���롣

--- Surface#fillRect(x,y,w,h,color)
      ���ꤵ�줿Ĺ�������ΰ��color�Ǥ̤�Ĥ֤���

--- Surface#setClipRect(x,y,w,h)
      ����åԥ󥰤򤹤�Ĺ��������ꤹ�롣
      ((<blitSurface>)),((<Surface#put>))���Ǥ��Υ��󥹥��󥹤����褷�褦��
      �����Ȥ�������ǻ��ꤷ��Ĺ���������Τߤ����褵��롣
      
--- Surface#setAlpha(flag,alpha)
      ����ե�������򤹤롣
      flag��SDL::SRCALPHA�����ꤹ�뤳�Ȥǥ���ե���ͭ���ˤʤ롣
      SDL::RLEACCEL��OR��Ȥäƻ��ꤹ���RLE�ˤ���®����ͭ���ˤʤ롣
      alpha�ϥ���ե��ͤ��̣����0��Ʃ����255���̾��Ʊ���Ȥʤ롣

      flag��0����ꤹ��Х���ե���̵���Ȥʤ롣

--- Surface#h
      self�ι⤵���֤���

--- Surface#w
      self�β������֤���

--- Surface#format
      self��pixel format���֤���
      �ܤ�����((<PixelFormat>))�򻲾ȡ�

--- Surface#put(image,x,y)
      self�ΰ���(x,y)��image�����褹�롣
      blitSurface�Ǽ�������Ƥ��롣

--- Surface#lock
      getPixel,setPixel��drawLine���Υ᥽�åɤ�Ȥä����褹��
      ����ν����򤹤롣

      ((<Surface#mustLock?>))��true���֤������󥹥��󥹤Τߤ������
      ��ɬ�פȤʤ롣

      ((<Surface#unlock>))��ƤӤ����ޤǡ�¾�饤�֥��θƤӤ�����
      OS���Ф������򤷤ƤϤʤ�ʤ���

      ((<autoLock>))��true���֤��Ȥ��ϥ饤�֥�꤬��ưŪ�ˤ�������
      ���Ƥ����ΤǤ��Υ᥽�åɤ�ƤӤ���ɬ�פϤʤ���

--- Surface#unlock
      ((<Surface#lock>))�ǥ�å������Τ������롣

--- Surface#mustLock?
      ((<Surface#lock>))��ƤӤ���ɬ�פ�����Ȥ���true��
      �ʤ��Ȥ���false���֤���

--- Surface#getPixel(x,y) 
--- Surface#[](x,y)
      SGE��ɬ�� ��å���ɬ��

      x,y�ΰ��֤Υԥ�������ͤ��֤���

--- Surface#putPixel(x,y,pixel)
--- Surface#[]=(x,y,pixel)
      SGE��ɬ�� ��å���ɬ��

      x,y�ΰ��֤Υԥ�������ͤ�pixel�ˤ��롣
      �Ĥޤꡢx,y�ΰ��֤�pixel�ο��������Ǥġ�

--- Surface#drawLine(x1,y1,x2,y2,color)
      SGE��ɬ�� ��å���ɬ��

      ����color������(x1,y1)����(x2,y2)�ޤ�������

--- Surface#drawRect(x,y,w,h,color)
      SGE��ɬ�� ��å���ɬ��

      ����color��Ĺ��������������Ϥ̤�Ĥ֤��ʤ���

--- Surface#drawCircle(x,y,r,color)
      SGE��ɬ�� ��å���ɬ��

      ����color�αߤ���������Ϥ̤�Ĥ֤��ʤ���

--- Surface#drawFilledCircle(x,y,r,color)
      SGE��ɬ�� ��å���ɬ��

      ����color�αߤ����������̤�Ĥ֤���

--- Surface#drawEllispe(x,y,rx,ry,color)
      SGE��ɬ�� ��å���ɬ��

      ����color���ʱߤ���������Ϥ̤�Ĥ֤��ʤ���

--- Surface#drawFilledEllispe(x,y,rx,ry,color)
      SGE��ɬ�� ��å���ɬ��

      ����color���ʱߤ����������̤�Ĥ֤�����

--- Surface#rotateScaledSurface(angle,scale,bgcolor)
      SGE��ɬ�� 

      ����ϡ�self��angle�ٷ�����scale�ܤ������������Surface�Υ��󥹥��󥹤�
      ��������᥽�åɤǤ��롣��ž�ˤ�ä��������֤�bgcolor�������롣

--- Surface#rotateSurface(angle,bgcolor)
      rotateScaledSurface��Ʊ�͡�������scale��1�Ȥ������Ȥˤʤ롣

--- Surface#mapRGB(r,g,b)
      self�Υ����ե����Υե����ޥå�(bpp�ʤ�)�˽��ä�r,g,b�ˤ�ä�
      ����蘆��뿧���б�����pixel���ͤ��֤���

--- Surface#mapRGBA(r,g,b,a)
      ((<Surface#mapRGB>))��Ʊ�͡�����������ե��ͤ�ޤ�뤳�Ȥ��Ǥ��롣

--- Surface#getRGB(pixel)
      ((<Surface#mapRGB>))�ȵդ��Ѵ��򤹤롣�֤��ͤ� [r,g,b]
      �Ȥ������Ƥ�������֤���

--- Surface#getRGBA(pixel)
      ((<Surface#getRGB>))��Ʊ�͡��������֤��ͤ˥���ե���ޤ�Ǥ��롣
      �֤��ͤ�[r,g,b,a]�Ȥ������Ƥ�����Ǥ��롣

--- Surface#bpp
      �����ե����Υե����ޥåȤ�1�ԥ����뤢����Υӥåȿ����֤���

--- Surface#colorkey
      �����ե��������ꤵ�줿���顼�������ͤ��֤���

--- Surface#alpha
      �����ե��������ꤵ�줿����ե��ͤ��֤���

=== Screen

�����ˤ������ޤ줿���������̤�ɽ������롣
���Υ��饹�Ϥ�����Ĥ��������Ǥ��ʤ��褦�ˤʤäƤ��ơ�
SDL::setVideoMode�ˤ�äƤΤ���������롣
�ºݤˤϡ����Τ褦�ʥ��饹��¸�ߤ�����Surface�˰ʲ����ðۥ᥽�åɤ��ɲä���
���֥������ȤǤ��롣

==== �����ѡ����饹

((<Surface>))

==== ���饹�᥽�å�


==== �᥽�å�

--- Screen#updateRect(x,y,w,h)
    ���δؿ���ƤӽФ��ȡ�Ϳ����줿���̾�λ��ꤵ�줿Ĺ�����ΰ�Υꥹ�Ȥ�
    �μ¤˹�������롣
    x��y��w��h�����٤�0�ξ�硢�����̤򹹿����롣���̤���å�����Ƥ�
    ��Ȥ��ˤϤ��δؿ���ƤӽФ��ʤ��褦�ˤ��롣

--- Screen#flip
      ���֥�Хåե��򥵥ݡ��Ȥ��Ƥ���ϡ��ɥ�������Ǥϡ����δؿ���
      �Хåե��θ򴹤��׵ᤷ���֤롣�ϡ��ɥ������ˤ�äƼ��ο�ľ�������֤ޤ�
      �ԤäƤ��顢���Υӥǥ������ե����ؤ�blit���å����θƤӽФ����֤���
      �˥ӥǥ��Хåե��θ򴹤��Ԥ��롣���֥�Хåե��򥵥ݡ��Ȥ��ʤ�
      �ϡ��ɥ�������Ǥϡ����θƤӽФ���((<Screen#updateRect>))(0, 0, 0, 0)
      �Ȥ��Ƥ���Τ�Ʊ���Ǥ��롣���Υ᥽�åɤ���Ѥ��ƥϡ��ɥ������ˤ����̤�
      �򴹤�Ԥ�����ˤϡ�((<setVideoMode>))�ΰ�����DOUBLEBUF�ե饰����
      �ꤷ�Ƥ������Ȥ�ɬ�פǤ��롣

=== PixelFormat

���Υ��饹�ε�ǽ�Ϥ��٤�((<Surface>))�ˤ��Ĥ��줿�����������Ѥ����ۤ���
�褤��

SDL_PixelFormat�Υ�åѡ����饹��
((<Surface#format>))�Ǽ����Ǥ���((<Surface.new>))��format�Ȥ��Ƥ���
���֥������Ȥ�Ϳ���뤳�Ȥ��Ǥ��롣

SDL�Ǥϡ�16bit color��surface��32bit��surface�Ȥ����褦��ʣ���β����η�����
��¸�Ǥ��롣��äƤ��β��������뤿�ᡢ���η����˴ؤ������
ɬ�פȤʤ롣PixelFormat�Υ��󥹥��󥹤�ɽ���Ƥ����ΤϤ���Ǥ��롣

�̾￧��ɽ������ˤ�r,g,b���ͤ��Ȥ��뤬�������surface�����������˽��ä�
�ҤȤĤ��ͤˤ��뤿��ˤ�����Ѥ��롣�դ��Ѵ���Ǥ��롣

���Υ饤�֥����ǤϤ���ˤ�äƻ��ꤵ�줿�ͤ������ƿ�����ꤹ�롣

�ޤ���������Ѥ��ƿ���ɽ�����Ȥ�Ǥ��롣����� r,g,b ���ͤ�
[r,g,b]��ɽ����ΤǤ��롣

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

�ʤ�

==== �᥽�å�

--- PixelFormat#mapRGB(r,g,b)
      self�Υե����ޥåȤ˽��ä�r,g,b�ˤ�äƤ���蘆��뿧���б�����
      pixel���ͤ��֤���

--- PixelFormat#mapRGBA(r,g,b,a)
      ((<PixelFormat#mapRGB>))��Ʊ�͡�����������ե��ͤ�ޤ�뤳�Ȥ��Ǥ��롣

--- PixelFormat#getRGB(pixel)
      ((<PixelFormat#mapRGB>))�ȵդ��Ѵ��򤹤롣�֤��ͤ� [r,g,b]
      �Ȥ������Ƥ�������֤���

--- PixelFormat#getRGBA(pixel)
      ((<PixelFormat#getRGB>))��Ʊ�͡��������֤��ͤ˥���ե���ޤ�Ǥ��롣
      �֤��ͤ�[r,g,b,a]�Ȥ������Ƥ�����Ǥ��롣

--- PixelFormat#bpp
      �ե����ޥåȤ�1�ԥ����뤢����Υӥåȿ����֤���

--- PixelFormat#colorkey
      Not documented yet

--- PixelFormat#alpha
      Not documented yet

== Event��Ϣ

=== Event

���٥�Ȥ�Ȥꤢ�Ĥ������饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Event.new

==== �᥽�å�

--- Event#poll
      ���ߥ��٥�ȥ��塼��ǽ����Ԥ����Ƥ��륤�٥�Ȥ��ʤ����򤷤�١�
      �ҤȤĤǤ⤢���1�򡢤ҤȤĤ�ʤ����0���֤���
      �ޤ��������Ԥ��򤷤Ƥ��륤�٥�Ȥ�����С����ξ����self�˳�Ǽ���롣

--- Event#wait
      ���Υ��٥�Ȥ����ޤ��Ԥ�������1�򡢤ޤ����٥�Ȥ��ԤĴ֤˥��顼
      ������������0���֤��������Ƥ��ξ����self�˳�Ǽ���롣

--- Event#type
      ��Ǽ����Ƥ��륤�٥�Ȥ������ʤ����Τ�ΤǤ��뤫���֤���
      ���μ���ϰʲ�������Ǽ�����롣
      
        Event::ACTIVEEVENT 
        Event::KEYDOWN
        Event::KEYUP
        Event::MOUSEMOTION
        Event::MOUSEBUTTONDOWN
        Event::MOUSEBUTTONUP
        Event::JOYAXISMOTION
        Event::JOYBALLMOTION
        Event::JOYHATMOTION
        Event::JOYBUTTONDOWN
        Event::JOYBUTTONUP
        Event::QUIT
        Event::SYSWMEVENT
        Event::VIDEORESIZE

--- Event#info
      ���٥�Ȥξ����������֤���
      ���Υ᥽�åɤϡ�����ʲ��Υ᥽�åɤ򤹤٤����ѤǤ��롣

--- Event#keyPress?
      �������٥�Ȥǥ����������������Ƥ����true�򡢤��ʤ����false���֤���

--- Event#keySym
      �������٥�Ȥǲ�������/�夲��줿��������֤���

--- Event#keyMod
      �������٥�ȤǤν�������(SHIFT,CTRL�ʤ�)�ξ��֤��֤���

--- Event#gain?
      ACTIVEEVENT���٥�Ȥǥ�����ɥ����ե��������������ʤ�true��
      ���ʤä��ʤ��false���֤���

--- Event#appState
      ACTIVEEVENT���٥�ȤǤΥ��٥�Ȥμ�����֤���
      �������Ƥϰʲ��Τ����줫��
        Event::APPMOUSEFOCUS
        Event::APPINPUTFOCUS
        Event::APPACTIVE

--- Event#mouseX
      �ޥ������٥�ȤǤΥޥ������������X��ɸ���֤���

--- Event#mouseY
      �ޥ������٥�ȤǤΥޥ������������Y��ɸ���֤���      

--- Event#mouseXrel
      �ޥ������٥�ȤǤΥޥ������������X��ɸ���Ѳ��̤��֤���

--- Event#mouseYrel
      �ޥ������٥�ȤǤΥޥ������������X��ɸ���Ѳ��̤��֤���

--- Event#mouseButton
      �ޥ������٥�ȤǤɤΥܥ���Υ��٥�ȤǤ��뤫�򤫤�����
      ����ϰʲ�������Ǥ��ᤵ��롣

        SDL::Mouse::BUTTON_LEFT  ���ܥ���
        SDL::Mouse::BUTTON_MIDDLE  ��ܥ���
        SDL::Mouse::BUTTON_RIGHT ���ܥ���

--- Event#mousePress?
      MOUSEBUTTONDOWN,MOUSEBUTTONUP���٥�Ȥˤ����ơ��ޥ����ܥ���
      �����줿�ʤ�true��Υ���줿�ʤ�false���֤���

=== Key

�����ܡ��ɤΥ������б����������������Ƥ���⥸�塼��
�����ܡ��ɤΥ����ξ��֤��Τ뤿��δؿ��⤳����ˤ��롣

==== �⥸�塼��ؿ�

--- scan
      �����ܡ��ɤξ��֤򥹥���󤷤ޤ�

--- press?(key)
      �����ƤӽФ�����scan��ƤӤ����Ƥ���������
      scan ���������֤����ޤ���true�ǲ����Ƥ��롢false��Υ���Ƥ���Ǥ���

--- modState
      ��������(CTRL,ATL,�ʤ�)�ξ��֤��֤���
      �֤��ͤϰʲ��������OR��Ȥä���Τ�ɽ����롣
        Key::MOD_NONE
        Key::MOD_LSHIFT
        Key::MOD_RSHIFT
        Key::MOD_LCTRL
        Key::MOD_RCTRL
        Key::MOD_LALT
        Key::MOD_RALT
        Key::MOD_LMETA
        Key::MOD_RMETA
        Key::MOD_NUM
        Key::MOD_CAPS
        Key::MOD_MODE
        Key::MOD_RESERVED
        Key::MOD_CTRL = Key::MOD_LCTRL|Key::MOD_RCTRL
        Key::MOD_SHIFT = Key::MOD_LSHIFT|Key::MOD_RSHIFT
        Key::MOD_ALT = Key::MOD_LALT|Key::MOD_RALT
        Key::MOD_META = Key::MOD_LMETA|Key::MOD_RMETA

--- enableKeyRepeat(delay,interval)
      ������ԡ��Ȥ�������Ѥ��롣
      

--- disableKeyRepeat
      ������ԡ��Ȥ�̵���ˤ��롣
    
== Mouse

�ޥ�����Ϣ������ȴؿ���������Ƥ���⥸�塼��

=== �⥸�塼��ؿ�

--- state
      �ޥ����ξ��֤�����η����֤��ޤ���
      ��������Ƥ�
        [ x , y , pressLButton? , pressMButton? , pressRButton? ]
      �ȤʤäƤ��ޤ���

--- warp(x,y)
      �ޥ�����������ΰ��֤����ꤹ��ʥޥ�����ư�Υ��٥�Ȥ���������)��

--- show
      �ޥ������������ɽ�����롣

--- hide
      �ޥ������������ä���

--- setCursor(bitmap,white,black,transparent,inverted,hot_x=0,hot_y=0)
      �ޥ�������������Ѥ��롣
      bitmap�Ȥ���((<Surface>))�Υ��󥹥��󥹤�Ϳ���롣
      ��������ο����������������롣
      white,black,transparent,inverted�Ϥ��Υ����ե�����ǡ��ɤ�
      �ԥ����뤬����������򡢹���Ʃ����ȿž�ˤ����뤫�򼨤���

== audio��Ϣ

=== Mixer

����������ꤹ��Τ˻Ȥ��⥸�塼��
�ܥ�塼���0����128��ͭ���Ǥ��롣
���Υ⥸�塼��ε�ǽ��Ȥ�����ˤϡ�SDL_mixer�饤�֥�꤬ɬ�פǤ��롣
���Υ⥸�塼����ε�ǽ��Ȥ�����ˤϡ�init��INIT_AUDIO��ͭ���ˤ���
����Фʤ�ʤ���

==== �⥸�塼��ؿ�

--- open(frequency=Mixer::DEFAULT_FREQUENCY,format=Mixer::DEFAULT_FORMAT,cannels=Mixer::DEFAULT_CHANNELS,chunksize=4096)
      ���Υ⥸�塼��ε�ǽ�ν�����ؿ���
      frequency�ϼ��ȿ���format�ϥ�����ɤη�����
      channels��1�ǥ�Υ�롢2�ǥ��ƥ쥪
      chunksize�ϥХåե����礭�����򤽤줾����ꤹ�롣
      chunksize��2�γ����Ȥ��褦�ˤ��롣
      �����Ǥ���channels��playChannel�ʤɤǤ�channel����ʪ�Ǥ��롣

--- spec
      ��������������ǥ�������ǽ��������֤���
      �������Ƥϡ�
        [ rate,format,channels ]

--- playChannel(channel,wave,loop)
      ���ꤷ��channel��wave����դ��롣
      channel��-1����ꤹ��ȡ������Ƥ���channel��Ŭ���ˤ���Ф�롣
      loops���ꤷ����������֤���
      loops��-1�ΤȤ��Ϻݸ¤ʤ����꤫������
      loops��0�ΤȤ��ϰ��٤Τ߱��դ��롣

      �ɤΥ����ͥ����դ����Ѥ��������֤���

--- play?(channel)
      ���ꤷ��channel�����߱��դ��Ƥ����true�򡢤��Ƥ��ʤ����
      false���֤���

--- setVolume(channel,volume)
      ���ꤷ��channel�Υܥ�塼������ꤹ�롣
      channel=-1����ꤹ��Ȥ��٤Ƥ�channel���Ф��ܥ�塼�����ꤹ�롣

      volume=-1�Ȥ���ȡ����ߤΥܥ�塼�ब�֤롣

--- halt(channel)
      ���ꤷ��channel�α��դ�ߤ�롣

--- pause(chennel)
      ���ꤷ��channel�α��դ�����ߤ��롣

--- resume(channel)
      ���ꤷ�������ߤ��Ƥ���channel�α��դ�Ƴ����롣

--- pause?(channel)
      ���ꤷ��channel�������ߤ��Ƥ����true�����Ƥ��ʤ����false��
      �֤���

--- playMusic(music,loops)
      music�ǻ��ꤷ�����ڤ���դ��롣
      loops��((<playChannel>))��Ʊ����

--- fadeInMusic(music,loops,ms)
      music�ǻ��ꤷ�����ڤ�ե����ɥ��󤷤Ʊ��դ��롣
      loops��((<playChannel>))��Ʊ����
      �ե����ɥ����ms�ϻ��ꤷ���ߥ��ä���������

--- setVolumeMusic(volume)
      ���ڤΥܥ�塼�����ꤹ�롣

--- haltMusic
      ���ڤ�ߤ�롣

--- fadeOutMusic(ms)
      ���ڤ���ꤷ���ߥ��ä����ƥե����ɥ����Ȥ��롣

--- pauseMusic
      ���ڤ�����ߤ��롣
      
--- resumeMusic
      �����ߤ��Ƥ��벻�ڤκ�����Ƴ����롣

--- rewindMusic
      ���ڤκ������֤���ֺǽ�ˤ��롣

--- pauseMusic?
      ���ڤ������ߤ��Ƥ����true�����ʤ����false���֤���

--- playMusic?
      ���ڤ����դ���Ƥ����true�����Ƥ��ʤ����false���֤���

=== Mixer::Wave

Wave�򤢤�魯���饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Mixer::Wave.load(filename)
      wave�ե��������ɤ���������б�����Mixer::Wave���饹��
      ���󥹥��󥹤��֤���

==== �᥽�å�

--- Mixer::Wave#setVolume(volume)
      self�Υܥ�塼����֤���

=== Mixer::Music

����(.mod .s3m .it .xm .mid .mp3)��ɽ����
������midi�ե������MP3����դ��뤿��ˤϤ��Τ�������꤬ɬ�ס�

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- Mixer::Music.load(filename)
      ����(.mod .s3m .it .xm .mid .mp3)��ե����뤫����ɤ���
      ���Υǡ������б�����Mixer::Music���饹�Υ��󥹥��󥹤��֤���

== Window Manager ��Ϣ

=== WM

Window��Ϣ�ν�����ޤȤ᤿�⥸�塼��

==== �⥸�塼��ؿ�

--- caption
      caption��ʸ�����������֤��Ƥ��롣
      ���Ƥϡ�
        [ ������ɥ��Υ����ȥ� , ��������Υ����ȥ� ]

--- setCaption(title,icon)
      �嵭�����Ƥ��ѹ����롣

--- icon=(iconImage)
      ������ɥ��Υ�������γ�����ꤹ�롣
      setVideoMode�θƤӤ������˸ƤӤ����ʤ���Фʤ�ʤ���
      
--- iconify
      ������ɥ��Υ������󲽡��Ǿ����򤹤롣
      ��������С�Event::APPACTIVE���٥�Ȥ������롣

== CDROM�ط�

=== CD

CDROM�ɥ饤�֤�ɽ�����饹

CD#numTrack���ξ����CD#status��ƤӤ������Ȥˤ�äƹ�������롣

�����Ǥ�CD�ΰ��֡����ջ��֤�Ĺ����ɽ������˥ե졼��Ȥ���ñ�̤��Ѥ��롣
1frame=2K�Ǥ��ꡢ
�̾�β���CD�ˤ�����75�ե졼��=1�äǤ��롣

=== �����ѡ����饹

Object

=== ���饹�᥽�å�

--- CD.numDrive
      �����Ĥ�CDROM�ɥ饤�֤����ѤǤ��뤫���֤���

--- CD.name(drive)
      ���ꤷ���ɥ饤�֤�̾����ʸ������֤���
      �ɥ饤�֤λ����0����CD.numDrive-1�������ǻ��ꤹ�롣

--- CD.open(drive)
      ���ꤷ���ɥ饤�֤򳫤���
      ���������CD�Υ��󥹥��󥹤��֤롣
      �ɥ饤�֤λ����0����CD.numDrive-1�������ǻ��ꤹ�롣
      0�ɥ饤�֤��ǥե���ȤΥɥ饤�֤Ǥ��롣

=== �᥽�å�

--- CD#status
      currentTrack,currentFrame,numTracks,trackType,trackLenght
      �ξ���򹹿����롣
      ���ߤ�CD�ξ��֤��֤����������Ƥϰʲ��ΤȤ��ꡣ
        TRAYEMPTY
        STOPPED
        PLAYING
        PAUSED
        ERROR

--- CD#play(start,length)
      CD��start�ե졼�फ��length�ե졼��δֱ��դ��롣

--- CD#playTrack(start_track,start_frame,ntracks,nframes)
      CD��start_track��start_frame���顢ntracks��Υȥ�å���nframe�ΤȤ���
      �ޤǱ��դ��롣
      �ʤ������Υ饤�֥����Ǥϥȥ�å��Υ���ǥå�����0����Ϥ��ޤ롣
      ���Υ᥽�åɤ�((<CD#status>))��ƤӤ��������Ȥ˸ƤӤ����ʤ���Фʤ�ʤ���

        ��
        cd.playTrack(0,0,1,0) # �ǽ�Υȥ�å�����դ��롣
        cd.playTrack(1,0,0,SDL::CD::FPS*15) # 2�ȥ�å��ܤ�ǽ餫��15�ñ��դ��롣

--- CD#pause
      CD�α��դ�����ߤ��롣

--- CD#resume
      CD�α��դ�Ƴ����롣

--- CD#stop
      CD�α��դ�ߤ�롣

--- CD#eject
      CD�򥤥������Ȥ��롣

--- CD#numTracks
      CD�Υȥ�å������֤���

--- CD#currentTrack
      ���߱��դ��Ƥ���ȥ�å����֤���

--- CD#currentFrame
      ���߱��դ��Ƥ�����֤�ե졼������֤���
      ���Τ������ϸ��ߤΥȥ�å��κǽ餫����ͤǤ��롣

--- CD#trackType(track)
      ���ꤷ���ȥ�å����ʤ�Ǥ��뤫���֤��������ͤϰʲ��ΤȤ��ꡣ
        AUDIO_TRACK
        DATA_TRACK

--- CD#trackLength(track)
      ���ꤷ���ȥ�å���Ĺ����ե졼������֤���

== ���祤���ƥ��å���Ϣ

=== Joystick

��ĤΥ��祤���ƥ��å���ɽ�����饹

=== �����ѡ����饹

Object

=== ���饹�᥽�å�

--- Joystick.pall
      ���٥�Ȥ�polling�˹�碌�ơ�Joystick.updateAll��ƤӤ������ɤ���
      �����롣
      
--- Joystick.pall=(polling)
      ���٥�Ȥ�polling�˹�碌�ơ�Joystick.updateAll��ƤӤ������ɤ���
      �����ꤹ�롣

--- Joystick.num
      ���Ѳ�ǽ�ʥ��祤���ƥ��å��ο����֤���

--- Joystick.name(index)
      ���ꤷ�����祤���ƥ��å���̾����ʸ������֤���
      0����Joystick.num-1�������ǻ��ꤹ�롣

--- Joystick.open(index)
      ���ꤷ�����祤���ƥ��å��򳫤���
      ���������Joystick�Υ��󥹥��󥹤��֤äƤ��롣

--- Joystick.open?(index)
      ���ꤷ�����祤���ƥ��å������Ǥ˳�����Ƥ��뤫���֤���

--- Joystick.updateAll
      ���ƤΥ��祤���ƥ��å��ξ���򹹿����롣
      Joystick#button/ball/hat/axis�ξ���Ϥ���ǹ�������롣

=== �᥽�å�

--- Joystick#index
      ���祤���ƥ��å����б������������֤���

--- Joystick#numAxes
      �����륢�ʥ��������֤ο����֤���
      ��������2���Υ��ʥ��ƥ��å���2�Ĥ����֤�����ȿ������롣

--- Joystick#numBalls
      �ȥ�å��ܡ���ο����֤���

--- Joystick#numButtons
      �ܥ���ο����֤���

--- Joystick#axis(axis_index)
      ���ʥ��������֤����Ͼ��֤��֤���
      �����ͤ�-32768����32768�Ǥ��롣
      �̾�0�ˤ�x����1�ˤ�y�������Ƥ��롣

--- Joystick#hat(hat_index)
      �����뽽�����������Ͼ��֤��֤����������Ƥϰʲ��ΤȤ��ꡣ
        Joystick::HAT_CENTERED
        Joystick::HAT_UP
        Joystick::HAT_RIGHT
        Joystick::HAT_DOWN
        Joystick::HAT_LEFT
        Joystick::HAT_RIGHTUP
        Joystick::HAT_RIGHTDOWN
        Joystick::HAT_LEFTUP
        Joystick::HAT_LEFTDOWN

--- Joystick#button(button_index)
      �ܥ���β���������֤���
      �����Ƥ����true�����ʤ����false���֤���

--- Joystick#ball(ball_index)
      �ȥ�å��ܡ�������Ͼ�����֤���
      �������ƤϺǸ�ˤ��Υ᥽�åɤ�ƤӽФ��Ƥ���X����Y���ˤɤ����
      ư�������������� [dx,dy] ���֤���

== �ե���ȴط�

=== TTF

�ԣ����ԣ����ե���Ȥ�ɽ�����饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- TTF.init
      TrueTypeFont��Ȥ�����ˤϺǽ�ˤ��δؿ���ƤФʤ���Фʤ�ʤ���

--- TTF.open(filename,size)
      TrueTypeFont��ե����뤫���ɤ߽Ф������Υ�������size�ǻ��ꤹ�롣
      
==== �᥽�å�

--- TTF#style
      �ե���ȤΥ���������֤���

--- TTF#style=(style)
      �ե���ȤΥ�����������ꤹ�롣����Ǥ���Τϰʲ��������OR��Ȥä���Ρ�
        TTF::STYLE_NORMAL
        TTF::STYLE_BOLD
        TTF::STYLE_ITALIC
        TTF::STYLE_UNDERLINE

--- TTF#textSize(text)
      text�����褷���Ȥ��νġ�����ɬ�פ��礭����������֤�

--- TTF#drawSolidUTF8(dest,text,x,y,r,g,b)
      self�Υե���������dest(Surface�Υ��󥹥���)��String text��
      dest�ΰ���(x,y)�ν�˽񤭤��ࡣ����r,g,b�Ƿ����롣
      Ʃ����(ColorKey)��ͭ���Ǥ��롣text��UTF-8��Ȥ���

--- TTF#drawBlendedUTF8(dest,text,x,y,r,g,b)
      drawSolidUTF8��Ʊ�͡�drawSolidUTF8������ʼ������褬�Ǥ��롣

== �������

=== �⥸�塼��ؿ�

--- getTicks
      SDL.init���ƤФ�Ƥ���λ��֤�ߥ��ä��֤���
      49���ۤɥ�����ץȤ����餻�ĤŤ����0�ˤ�ɤ롣

--- delay(ms)
      �ߥ��äǻ��ꤵ�줿���֤����Ԥġ�
      OS�Υ������塼��󥰤Τ�����ꤷ�����֤���Ĺ���ԤĲ�ǽ�������롣

=end
