=begin

= SDL

���γ�ĥ�饤�֥��Υ��󥿡��ե�������SDL���Τ����˻��Ƥ��ޤ���
��ä�SDL�Υɥ�����Ȥ����˻��ͤˤʤ�Ǥ��礦��

���٤ƤΥ��饹/�⥸�塼���module SDL�β��ˤ���ޤ���
���Υ⥸�塼����ǤϿ��Ϥۤܤ��٤�0����Ϥޤ�ޤ���

== ���饹/�⥸�塼�빽��
* ((<SDL::Error>))
* ((<SDL::Surface>))
  * ((<SDL::Screen>))
* ((<SDL::PixelFormat>))
* ((<SDL::Event>))
* ((<SDL::Key>)) (module)
* ((<SDL::Mouse>)) (module)
* ((<SDL::Mixer>)) (module)
* ((<SDL::Mixer::Wave>))
* ((<SDL::Mixer::Music>))
* ((<SDL::WM>)) (module)
* ((<SDL::CD>))
* ((<SDL::Joystick>))
* ((<SDL::TTF>))

== SDL::Error

���顼�����ѤΥ��饹�Ǥ���SDL�⥸�塼����������륨�顼�ۤܤ��٤�
���Υ��饹���Ѥ������Τ���ޤ���

=== �����ѡ����饹

StandardError

== �������Ϣ

=== SDL��Υ⥸�塼��ؿ�

--- SDL.init(flag)
      SDL���������롣flag�Ȥ���Ϳ����������ϰʲ��ΤȤ��ꡣ
        INIT_AUDIO
        INIT_VIDEO
        INIT_CDROM
        INIT_JOYSTICK

--- SDL.quit
      at_exit{ SDL.quit; } �Ȥ����褦�˻ȤäƤ���������

      version 0.3�ˤ��ѻߡ��饤�֥�꤫�鼫ưŪ�ˤ�Ӥ�����롣

--- SDL.initializedSystem(flag)
      Not documented yet

== video��Ϣ

�����ε�ǽ�ϡ�SGE�饤�֥���SDL_image��ɬ�פǤ��롣

bpp=bit per pixel�Ǥ��롣

=== SDL��Υ⥸�塼��ؿ�

--- SDL.getVideoSurface
      Not documented yet

--- SDL.setVideoMode(w,h,bpp,flags)
      ���ꤵ�줿���̤������⤵��bpp���ͤǥӥǥ��⡼�ɤ����ꤹ�롣
      bpp��0�ξ�硢���ߤΥǥ����ץ쥤��bpp���ͤ����Ѥ���롣
      ���������Ȥ���((<SDL::Screen>))�Υ��֥������Ȥ��֤���
      ���Ԥ����Ȥ���SDL::Error�㳰�������롣
      flags�ΰ�̣�ϰʲ��ΤȤ��ꡣ
      * SDL::SWSURFACE
        
        �����ƥ�Υ�����˥Хåե���Ȥ롣

      * SDL::HWSURFACE

        �ӥǥ�����˥Хåե���Ȥ롣

      * SDL::FULLSCREEN
        
        �ե륹���꡼��⡼�ɤ�ư��褦�Ȥ��롣

      * SDL::DOUBLEBUF

        ���֥�Хåե���󥰤��Ǥ���褦�ˤ��롣
        ((<SDL::Screen#flip>))���Ӥ������Ȥˤ�äƥХåե����ڤ��ؤ�
        ���Ǥ��롣

      * SDL::ANYFORMAT

        SDL�饤�֥����׵ᤵ�줿bpp�Ǥ�������ߤ뤬������ȰۤʤäƤ�����
        ��ǽ�ʥ⡼�ɤ�����Ф�����֤��Ƥ��롣�ǥե���Ȥ�ư��Ǥϡ��׵ᤵ��
        ���⡼�ɤ�ľ�ܥ��ݡ��Ȥ���Ƥ��ʤ����ϥ��ߥ�졼������Ԥ���

      flag�Ϥ��Τۤ��ˤ⤢�롣����˾ܤ����Τ�ɬ�פ������
      SDL�Υɥ�����Ȥ򸫤Ƥ���������

--- SDL.checkVideoMode(w,h,bpp,flags)
      ���ꤵ�줿�ӥǥ��⡼�ɤ����ݡ��Ȥ���Ƥ��뤫�ɤ�����Ĵ�٤롣
      ���ꥵ�����Υ����꡼�󤬤ɤ�ʥǥץ��Ǥ⥵�ݡ��Ȥ���Ƥ��ʤ�����
      0���֤��������Ĥ��Υǥץ��ǻ��ꤵ�줿�����������ݡ��Ȥ���Ƥ���С�
      �����ǻ��ꤷ����Τ˺Ǥ�ᤤbpp���ͤ��֤����⤷�����ͤ��ӥǥ��⡼��
      �����ꤹ��ݤ˻��ꤷ����ΤȰ�äƤ�����ϡ�((<SDL.setVideoMode>))��
      �������뤬�����ꤵ�줿�⡼�ɤϥ���ɥ������ե�����Ȥäƥ��ߥ�졼
      �Ȥ���뤳�Ȥˤʤ롣
      
      SDL.checkVideoMode���Ф�������ϡ�((<SDL.setVideoMode>))�ǻ��Ѥ�����
      ��Ʊ���Ǥ��롣

--- SDL.listModes(flags)
      ���Ѳ�ǽ�ʲ����٤��֤���
      ���Ѳ�ǽ�ʲ����٤�¸�ߤ��ʤ��Ȥ���nil�֤����ޤ�����������٤����Ѳ�
      ǽ�ʤȤ���true���֤������Ѳ�ǽ�ʲ����٤�1�İʾ夢��Ȥ��Ϥ��β����٤�
      �β��������������β����٤��ͤ򤪤��᤿����1�İʾ����äƤ���������֤���
      
      ������flag�ϡ�((<SDL.setVideoMode>))�ǻ��Ѥ����Τ�Ʊ���Ǥ��롣

--- SDL.setGamma(redgamma,greengamma,bluegamma)
      ����ޤ����ꤷ�ޤ���
      ����ޤϥ����꡼���Ǥο������뤵�䥳��ȥ饹�Ȥ�Ĵ�ᤷ�ޤ���
      r,g,b���줾��Υ�����ͤ�1.0��̵Ĵ����Ʊ���ˤʤ�ޤ���

--- SDL.autoLock
      SGE��ɬ��

      �����ե����Υ�å���ɬ�פʤȤ���ưŪ�˥�å����Ƥ���뤫�ɤ���
      ���֤����ǥե���Ȥ�true��

      ����˾ܤ������Ȥ��Τꤿ�����((<Surface::lock>))�򸫤Ƥ���������

--- SDL.autoLock=(autolocking)
      SGE��ɬ��
      �����ե����Υ�å���ɬ�פʤȤ���ưŪ�˥�å����Ƥ����褦�����ꤹ�롣
      
--- SDL.videoInfo
      Video�ξ����VideoInfo�Υ��󥹥��󥹤��֤����������Ƥϰʲ����̤ꡣ
      �����ͤ�ɽ����Τ�true,false�����äƤ��롣
      �ܤ�����̣��SDL�Υɥ�����Ȥ򻲾Ȥ��Ƥ���������
        SDL::VideoInfo#hw_available
        SDL::VideoInfo#wm_available
        SDL::VideoInfo#blit_hw
        SDL::VideoInfo#blit_hw_CC
        SDL::VideoInfo#blit_hw_A
        SDL::VideoInfo#blit_sw
        SDL::VideoInfo#blit_sw_CC
        SDL::VideoInfo#blit_sw_A
        SDL::VideoInfo#blit_fill
        SDL::VideoInfo#video_mem
        SDL::VideoInfo#bpp
	
--- SDL.blitSurface(src,srcX,srcY,srcW,srcH,dst,dstX,dstY)
      src�ǻ��ꤵ�줿Surface����dst�ǻ��ꤵ�줿Surface�ؤι�®��blit
      ��Ԥ���

      srcX,srcY,srcW,srcH�ˤ��٤�0����ꤷ������src���Τ�blit���롣

      ���Ի��ˤ��㳰SDL::Error�������롣      
      
      ��å����������ե������Ф��Ƥ����Ĥ��äƤϤ����ʤ���

--- SDL.blitSurface2(src,srcRect,dst,dstRect)
      blitSurface2(src,[0,32,32,32],dst,[100,200])
      �Τ褦�˻Ȥ���

      srcRect��nil����ꤷ������src���Τ�blit���롣

--- SDL.rotateXYScaled(src,dst,x,y,angle,xscale,yscale)
      SGE��ɬ��

      SGE��sge_rotate_xyscaled�ؿ��Ȥ�src��dst�ν���������ؤ�äƤ��뤳�Ȥ�
      ��դ���褦�ˡ�����2�Ĥδؿ���Ʊ�ͤǤ��롣
      ����ϡ�blitSurface�˹�碌������Ǥ��롣
      �ޤ������λ��ͤ��ѹ������ǽ�������롣

      �ޤ���ColorKey��̵�뤵��롣

--- SDL.rotateScaled(src,dst,x,y,angle,scale)
      ((<SDL.rotateXYScaled>))��Ʊ�͡�������xscale��yscale���Ȥ��scale�Ǥ����
      ���롣

--- SDL.rotate(src,dst,x,y,angle)
      ((<SDL.rotateXYScaled>))��Ʊ�͡�������xscale��yscale���Ȥ��1�Ǥ����
      ���롣

--- SDL.rotateScaledBlit(src,dst,x,y,angle,scale)
      SGE��ɬ��
      ColorKey��ͭ���Ȥʤ롣
      ((<SDL.rotateBlit>))��Ʊ�ͤǤ��롣

--- SDL.rotateBlit(src,dst,x,y,angle)
      ((<SDL.rotateScaledBlit>))��Ʊ�͡�������scale��1�Ǥ���Ȥ��롣

--- SDL.transform(src,dst,angle,xscale,yscale,px,py,qx,qy,flags)
      SGE��ɬ��
      ��ž�̾���������褹�롣
      src���Τ�px,py���濴��angle�ٲ�ž��X������xscale�ܡ�Y������yscale�ܤ���
      px��py��dst��qx��qy�˰��פ���褦�����褹�롣
      flag�ΰ�̣�ϰʲ����̤ꡣ������OR��ȤäƤ�褤��

      * 0

        ���̤˲�ž������

      * SDL::TRANSFORM_SAFE

        src��dst�Υե����ޥåȤ���äƤ⤦�ޤ������褦�ˤ��롣¿���٤���

      * SDL::TRANSFORM_AA

        �̾����٤����ߤ�����ɤ��ʤ롣

      * SDL::TRANSFORM_TMAP

        �ƥ������㡼�ޥåԥ󥰤���Ѥ��롣�ۤ�ξ����Ϥ䤤���ߤ��᤬����
        �����ʤ롣px��py��flags��̵�뤵��롣

=== SDL::Surface

�������ݻ����륯�饹�Ǥ���

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- SDL::Surface.new(flag,w,h,format)
      ������((<SDL::Surface>))�Υ��󥹥��󥹤��������롣
      ((<SDL.setVideoMode>))��ƤӤ�������Ǥ������Ѥ��ƤϤʤ�ʤ���

      format�Ȥ��Ƥ�((<SDL::Surface>))�Υ��󥹥��󥹤�Ϳ�������ꤷ��
      �����ե�����Ʊ��bpp�Υ����ե������������롣

      flag�ˤϰʲ��Υե饰��OR���ä���Τ�Ϳ���뤳�Ȥ��Ǥ��롣

      * SDL::SWSURFACE

        �����ƥ������˥����ե�����Ȥ롣

      * SDL::HWSURFACE

        �ӥǥ�������˥����ե��������Ȥ��롣

      * SDL::SRCCOLORKEY

        �����ƥ���꤫�ӥǥ�����Τ����ϡ��ɥ������ˤ��Ʃ������ǽ��
        ���ѤǤ���ۤ��˥����ե��������Ȥ��롣

      * SDL::SRCALPHA      

        �����ƥ���꤫�ӥǥ�����Τ����ϡ��ɥ������ˤ�륢��ե�������
        �Ǥ���ۤ��˥����ե��������Ȥ��롣
        
--- SDL::Surface.loadBMP(filename)
      ���ꤵ�줿�ե�����̾��Windows BMP�����Υե����뤫��((<SDL::Surface>))
      �Υ��󥹥��󥹤�������롣
      �ե����뤬�����ʤ����Υ��顼������������((<SDL::Error>))�㳰�������롣

--- SDL::Surface.load(filename)
      SDL_image��ɬ��

      ���ꤵ�줿�ե�����̾�β����ե����뤫��((<SDL::Surface>))
      �Υ��󥹥��󥹤�������롣
      BMP,PPX,XPM,PCX,GIF,JPEG,PNG,TGA�ʤɤ���ɤǤ��롣

==== �᥽�å�

--- SDL::Surface#displayFormat
      self��ӥǥ��ե졼��Хåե��Υԥ�����ե����ޥåȤȿ��˹�碌��
      �����������ե����˥��ԡ������֤���
      ������surface��Ȥ����Ȥˤ�ä�screen�ؤι�®��blit���Ǥ��롣
      
      ���顼�����Ȧ��ͤ��Ф���blit�Υ�������졼���������Ѥ������Τʤ�С�
      ���δؿ��θƤӽФ�����Ω�äƥ��顼�����Ȧ��ͤ������ԤäƤ���
      ɬ�פ����롣

--- SDL::Surface#setColorKey(flag,key)
      blit��ǽ�ʥ����ե������Ф��ƥ��顼����(Ʃ���ʥԥ�����)�����ꤹ�롣

      flag��SDL::SRCCOLORKEY����ꤹ��ȡ����Υԥ������blit��src�ˤʤ�
      �ۤ���Ʃ���ԥ�����򼨤��Ƥ��뤳�Ȥˤʤ롣
      �̾�Ϥ��Υե饰��Ȥ���
      
      flag��SDL::RLEACCEL��OR��Ȥäƻ��ꤹ��ȡ�RLE��Ȥäƹ�®��blit��
      ���褦�Ȥ��롣

      flag��0�ξ��ϡ�color key�򥯥ꥢ���롣

--- SDL::Surface#fillRect(x,y,w,h,color)
      ���ꤵ�줿Ĺ�������ΰ��color�Ǥ̤�Ĥ֤���

--- SDL::Surface#setClipRect(x,y,w,h)
      ����åԥ󥰤򤹤�Ĺ��������ꤹ�롣
      ((<SDL.blitSurface>)),((<SDL::Surface#put>))���Ǥ��Υ��󥹥��󥹤�
      ���褷�褦�Ȥ����Ȥ�������ǻ��ꤷ��Ĺ���������Τߤ����褵��롣
      
--- SDL::Surface#setAlpha(flag,alpha)
      ����ե�������򤹤롣
      flag��SDL::SRCALPHA�����ꤹ�뤳�Ȥǥ���ե���ͭ���ˤʤ롣
      SDL::RLEACCEL��OR��Ȥäƻ��ꤹ���RLE�ˤ���®����ͭ���ˤʤ롣
      alpha�ϥ���ե��ͤ��̣����0��Ʃ����255���̾��Ʊ���Ȥʤ롣

      flag��0����ꤹ��Х���ե���̵���Ȥʤ롣

--- SDL::Surface#h
      self�ι⤵���֤���

--- SDL::Surface#w
      self�β������֤���

--- SDL::Surface#format
      self��pixel format���֤���
      �ܤ�����((<SDL::PixelFormat>))�򻲾ȡ�

--- SDL::Surface#put(image,x,y)
      self�ΰ���(x,y)��image�����褹�롣
      ((<SDL.blitSurface>))�Ǽ�������Ƥ��롣

--- SDL::Surface#lock
      getPixel,setPixel��drawLine���Υ᥽�åɤ�Ȥä����褹��
      ����ν����򤹤롣

      ((<SDL::Surface#mustLock?>))��true���֤������󥹥��󥹤Τߤ������
      ��ɬ�פȤʤ롣

      ((<SDL::Surface#unlock>))��ƤӤ����ޤǡ�¾�饤�֥��θƤӤ�����
      OS���Ф������򤷤ƤϤʤ�ʤ���

      ((<SDL.autoLock>))��true���֤��Ȥ��ϥ饤�֥�꤬��ưŪ�ˤ�������
      ���Ƥ����ΤǤ��Υ᥽�åɤ�ƤӤ���ɬ�פϤʤ���

--- SDL::Surface#unlock
      ((<SDL::Surface#lock>))�ǥ�å������Τ������롣

--- SDL::Surface#mustLock?
      ((<SDL::Surface#lock>))��ƤӤ���ɬ�פ�����Ȥ���true��
      �ʤ��Ȥ���false���֤���

--- SDL::Surface#getPixel(x,y) 
--- SDL::Surface#[](x,y)
      SGE��ɬ�� ��å���ɬ��

      x,y�ΰ��֤Υԥ�������ͤ��֤���

--- SDL::Surface#putPixel(x,y,pixel)
--- SDL::Surface#[]=(x,y,pixel)
      SGE��ɬ�� ��å���ɬ��

      x,y�ΰ��֤Υԥ�������ͤ�pixel�ˤ��롣
      �Ĥޤꡢx,y�ΰ��֤�pixel�ο��������Ǥġ�

--- SDL::Surface#drawLine(x1,y1,x2,y2,color)
      SGE��ɬ�� ��å���ɬ��

      ����color������(x1,y1)����(x2,y2)�ޤ�������

--- SDL::Surface#drawRect(x,y,w,h,color)
      SGE��ɬ�� ��å���ɬ��

      ����color��Ĺ��������������Ϥ̤�Ĥ֤��ʤ���

--- SDL::Surface#drawCircle(x,y,r,color)
      SGE��ɬ�� ��å���ɬ��

      ����color�αߤ���������Ϥ̤�Ĥ֤��ʤ���

--- SDL::Surface#drawFilledCircle(x,y,r,color)
      SGE��ɬ�� ��å���ɬ��

      ����color�αߤ����������̤�Ĥ֤���

--- SDL::Surface#drawEllispe(x,y,rx,ry,color)
      SGE��ɬ�� ��å���ɬ��

      ����color���ʱߤ���������Ϥ̤�Ĥ֤��ʤ���

--- SDL::Surface#drawFilledEllispe(x,y,rx,ry,color)
      SGE��ɬ�� ��å���ɬ��

      ����color���ʱߤ����������̤�Ĥ֤�����

--- SDL::Surface#rotateScaledSurface(angle,scale,bgcolor)
      SGE��ɬ�� 

      ����ϡ�self��angle�ٷ�����scale�ܤ������������Surface�Υ��󥹥��󥹤�
      ��������᥽�åɤǤ��롣��ž�ˤ�ä��������֤�bgcolor�������롣

--- SDL::Surface#rotateSurface(angle,bgcolor)
      ((<SDL::Surface#rotateScaledSurface>))��Ʊ�͡�
      ������scale��1�Ȥ������Ȥˤʤ롣

--- SDL::Surface#transformSurface(bgcolor,angle,xscale,yscale,flags)
      self��angle�ٲ�ž����X������xscale�ܡ�Y������yscale�ܤ��ơ�������
      �����ޤ�bgcolor���ɤ�Ĥ֤������������DSL::Surface�Υ��󥹥���
      ����������᥽�åɡ�
      flag��((<SDL.transform>))��Ʊ����

--- SDL::Surface#mapRGB(r,g,b)
      self�Υ����ե����Υե����ޥå�(bpp�ʤ�)�˽��ä�r,g,b�ˤ�ä�
      ����蘆��뿧���б�����pixel���ͤ��֤���

--- SDL::Surface#mapRGBA(r,g,b,a)
      ((<SDL::Surface#mapRGB>))��Ʊ�͡�����������ե��ͤ�ޤ�뤳�Ȥ��Ǥ��롣

--- SDL::Surface#getRGB(pixel)
      ((<SDL::Surface#mapRGB>))�ȵդ��Ѵ��򤹤롣�֤��ͤ� [r,g,b]
      �Ȥ������Ƥ�������֤���

--- SDL::Surface#getRGBA(pixel)
      ((<SDL::Surface#getRGB>))��Ʊ�͡��������֤��ͤ˥���ե���ޤ�Ǥ��롣
      �֤��ͤ�[r,g,b,a]�Ȥ������Ƥ�����Ǥ��롣

--- SDL::Surface#bpp
      �����ե����Υե����ޥåȤ�1�ԥ����뤢����Υӥåȿ����֤���

--- SDL::Surface#colorkey
      �����ե��������ꤵ�줿���顼�������ͤ��֤���

--- SDL::Surface#alpha
      �����ե��������ꤵ�줿����ե��ͤ��֤���

--- SDL::Surface#setPalette(flag,colors,firstcolor)
      8bpp�Υ����ե����˥ѥ�åȤ����ꤹ�롣
      
      ((<SDL.setVideoMode>))��flag��SDL::HWPALETTE��bpp��8����ꤷ������
      �����꡼�󥵡��ե����ˤϡ�2�ĤΥѥ�åȤ����롣�����������ѥ�åȤ�
      ((<SDL.blitSurface>))�ʤɤǲ�����ž������Ȥ����Ѥ����롣
      ¾����ʪ���ѥ�åȤǡ��ºݤ˲��̤�ɽ�������Ȥ��ο�����ꤹ�롣

      flag�� SDL::LOGPAL����ꤹ��������ѥ�åȤ�SDL::PHYSPAL����ꤹ���
      ʪ���ѥ�åȤ��ѹ����롣ξ����OR����ȡ�ξ���ѹ����롣

      �ºݤΥѥ�åȤ��ͤ�����λ����ϰʲ����̤�Ǥ��롣
      0����255�Τ���X����Y�ޤǤ��ѹ��������Ȥ��롣
      �ޤ�colors�ˤ�Y-X+1�����Ǥ�����������ꤹ�롣
      ���γơ������Ǥ�3�Ĥ����Ǥ���ä����������롣
      ����ˤ�r,g,b���ͤ����쿧����ꤹ�롣������firstcolor�ˤ�X����ꤹ�롣
      
      �ѥ�åȤ��ѹ������������Ȥ���true�����Ԥ����Ȥ���false���֤���

--- SDL::Surface#setColors(colors,firstcolor)
      ((<SDL::Surface#setColors>))��flag��SDL::LOGPAL|SDL::PHYSPAL�����
      ����Τ�Ʊ����

--- SDL::Surface#getPalette
      �ѥ�åȤ�������֤����������Ƥϰʲ����ͤˤʤäƤ��롣
        [ [r0,g0,b0],[r1,g1,b1], ... ,[r255,g255,b255] ]
      �����ե������ѥ�åȤ���äƤ��ʤ��Ȥ���nil���֤���

=== SDL::Screen

�����ˤ������ޤ줿���������̤�ɽ������롣
���Υ��饹�Ϥ�����Ĥ��������Ǥ��ʤ��褦�ˤʤäƤ��ơ�
((<SDL.setVideoMode>))�ˤ�äƤΤ���������롣
�ºݤˤϡ����Τ褦�ʥ��饹��¸�ߤ�����((<SDL::Surface>))�˰ʲ����ð�
�᥽�åɤ��ɲä������֥������ȤǤ��롣

==== �����ѡ����饹

((<SDL::Surface>))

==== ���饹�᥽�å�


==== �᥽�å�

--- SDL::Screen#updateRect(x,y,w,h)
    ���δؿ���ƤӽФ��ȡ�Ϳ����줿���̾�λ��ꤵ�줿Ĺ�����ΰ�Υꥹ�Ȥ�
    �μ¤˹�������롣
    x��y��w��h�����٤�0�ξ�硢�����̤򹹿����롣���̤���å�����Ƥ�
    ��Ȥ��ˤϤ��δؿ���ƤӽФ��ʤ��褦�ˤ��롣

--- SDL::Screen#flip
      ���֥�Хåե��򥵥ݡ��Ȥ��Ƥ���ϡ��ɥ�������Ǥϡ����δؿ���
      �Хåե��θ򴹤��׵ᤷ���֤롣�ϡ��ɥ������ˤ�äƼ��ο�ľ�������֤ޤ�
      �ԤäƤ��顢���Υӥǥ������ե����ؤ�blit���å����θƤӽФ����֤���
      �˥ӥǥ��Хåե��θ򴹤��Ԥ��롣���֥�Хåե��򥵥ݡ��Ȥ��ʤ�
      �ϡ��ɥ�������Ǥϡ����θƤӽФ���((<SDL::Screen#updateRect>))(0,0,0,0)
      �Ȥ��Ƥ���Τ�Ʊ���Ǥ��롣���Υ᥽�åɤ���Ѥ��ƥϡ��ɥ������ˤ����̤�
      �򴹤�Ԥ�����ˤϡ�((<SDL.setVideoMode>))�ΰ�����DOUBLEBUF�ե饰����
      �ꤷ�Ƥ������Ȥ�ɬ�פǤ��롣

=== SDL::PixelFormat

���Υ��饹�ε�ǽ�Ϥ��٤�((<SDL::Surface>))�ˤ��Ĥ��줿�����������Ѥ����ۤ���
�褤�����Υ��饹�ϸߴ����Τ���˻Ĥ��Ƥ��롣

SDL_PixelFormat�Υ�åѡ����饹��
((<SDL::Surface#format>))�Ǽ����Ǥ��롣

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

--- SDL::PixelFormat#mapRGB(r,g,b)
      self�Υե����ޥåȤ˽��ä�r,g,b�ˤ�äƤ���蘆��뿧���б�����
      pixel���ͤ��֤���

--- SDL::PixelFormat#mapRGBA(r,g,b,a)
      ((<SDL::PixelFormat#mapRGB>))��Ʊ�͡�����������ե��ͤ�ޤ�뤳�Ȥ��Ǥ��롣

--- SDL::PixelFormat#getRGB(pixel)
      ((<SDL::PixelFormat#mapRGB>))�ȵդ��Ѵ��򤹤롣�֤��ͤ� [r,g,b]
      �Ȥ������Ƥ�������֤���

--- SDL::PixelFormat#getRGBA(pixel)
      ((<SDL::PixelFormat#getRGB>))��Ʊ�͡��������֤��ͤ˥���ե���ޤ�Ǥ��롣
      �֤��ͤ�[r,g,b,a]�Ȥ������Ƥ�����Ǥ��롣

--- SDL::PixelFormat#bpp
      �ե����ޥåȤ�1�ԥ����뤢����Υӥåȿ����֤���

--- SDL::PixelFormat#colorkey
      Not documented yet

--- SDL::PixelFormat#alpha
      Not documented yet

== Event��Ϣ

=== SDL::Event

���٥�Ȥ�Ȥꤢ�Ĥ������饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- SDL::Event.new

==== �᥽�å�

--- SDL::Event#poll
      ���ߥ��٥�ȥ��塼��ǽ����Ԥ����Ƥ��륤�٥�Ȥ��ʤ����򤷤�١�
      �ҤȤĤǤ⤢���1�򡢤ҤȤĤ�ʤ����0���֤���
      �ޤ��������Ԥ��򤷤Ƥ��륤�٥�Ȥ�����С����ξ����self�˳�Ǽ���롣

--- SDL::Event#wait
      ���Υ��٥�Ȥ����ޤ��Ԥ�������1�򡢤ޤ����٥�Ȥ��ԤĴ֤˥��顼
      ������������0���֤��������Ƥ��ξ����self�˳�Ǽ���롣

--- SDL::Event#type
      ��Ǽ����Ƥ��륤�٥�Ȥ������ʤ����Τ�ΤǤ��뤫���֤���
      ���μ���ϰʲ�������Ǽ�����롣
      
        SDL::Event::ACTIVEEVENT 
        SDL::Event::KEYDOWN
        SDL::Event::KEYUP
        SDL::Event::MOUSEMOTION
        SDL::Event::MOUSEBUTTONDOWN
        SDL::Event::MOUSEBUTTONUP
        SDL::Event::JOYAXISMOTION
        SDL::Event::JOYBALLMOTION
        SDL::Event::JOYHATMOTION
        SDL::Event::JOYBUTTONDOWN
        SDL::Event::JOYBUTTONUP
        SDL::Event::QUIT
        SDL::Event::SYSWMEVENT
        SDL::Event::VIDEORESIZE

--- SDL::Event#info
      ���٥�Ȥξ����������֤���
      ���Υ᥽�åɤϡ�����ʲ��Υ᥽�åɤ򤹤٤����ѤǤ��롣

--- SDL::Event#keyPress?
      �������٥�Ȥǥ����������������Ƥ����true�򡢤��ʤ����false���֤���

--- SDL::Event#keySym
      �������٥�Ȥǲ�������/�夲��줿��������֤���

--- SDL::Event#keyMod
      �������٥�ȤǤν�������(SHIFT,CTRL�ʤ�)�ξ��֤��֤���

--- SDL::Event#gain?
      ACTIVEEVENT���٥�Ȥǥ�����ɥ����ե��������������ʤ�true��
      ���ʤä��ʤ��false���֤���

--- SDL::Event#appState
      ACTIVEEVENT���٥�ȤǤΥ��٥�Ȥμ�����֤���
      �������Ƥϰʲ��Τ����줫��
        SDL::Event::APPMOUSEFOCUS
        SDL::Event::APPINPUTFOCUS
        SDL::Event::APPACTIVE

--- SDL::Event#mouseX
      �ޥ������٥�ȤǤΥޥ������������X��ɸ���֤���

--- SDL::Event#mouseY
      �ޥ������٥�ȤǤΥޥ������������Y��ɸ���֤���      

--- SDL::Event#mouseXrel
      �ޥ������٥�ȤǤΥޥ������������X��ɸ���Ѳ��̤��֤���

--- SDL::Event#mouseYrel
      �ޥ������٥�ȤǤΥޥ������������X��ɸ���Ѳ��̤��֤���

--- SDL::Event#mouseButton
      �ޥ������٥�ȤǤɤΥܥ���Υ��٥�ȤǤ��뤫�򤫤�����
      ����ϰʲ�������Ǥ��ᤵ��롣

        SDL::Mouse::BUTTON_LEFT  ���ܥ���
        SDL::Mouse::BUTTON_MIDDLE  ��ܥ���
        SDL::Mouse::BUTTON_RIGHT ���ܥ���

--- SDL::Event#mousePress?
      MOUSEBUTTONDOWN,MOUSEBUTTONUP���٥�Ȥˤ����ơ��ޥ����ܥ���
      �����줿�ʤ�true��Υ���줿�ʤ�false���֤���

=== SDL::Key

�����ܡ��ɤΥ������б����������������Ƥ���⥸�塼��
�����ܡ��ɤΥ����ξ��֤��Τ뤿��δؿ��⤳����ˤ��롣

==== �⥸�塼��ؿ�

--- SDL::Key.scan
      �����ܡ��ɤξ��֤򥹥���󤷤ޤ�

--- SDL::Key.press?(key)
      �����ƤӽФ�����scan��ƤӤ����Ƥ���������
      scan ���������֤����ޤ���true�ǲ����Ƥ��롢false��Υ���Ƥ���Ǥ���

--- SDL::Key.modState
      ��������(CTRL,ATL,�ʤ�)�ξ��֤��֤���
      �֤��ͤϰʲ��������OR��Ȥä���Τ�ɽ����롣
        SDL::Key::MOD_NONE
        SDL::Key::MOD_LSHIFT
        SDL::Key::MOD_RSHIFT
        SDL::Key::MOD_LCTRL
        SDL::Key::MOD_RCTRL
        SDL::Key::MOD_LALT
        SDL::Key::MOD_RALT
        SDL::Key::MOD_LMETA
        SDL::Key::MOD_RMETA
        SDL::Key::MOD_NUM
        SDL::Key::MOD_CAPS
        SDL::Key::MOD_MODE
        SDL::Key::MOD_RESERVED
        SDL::Key::MOD_CTRL = SDL::Key::MOD_LCTRL|SDL::Key::MOD_RCTRL
        SDL::Key::MOD_SHIFT = SDL::Key::MOD_LSHIFT|SDL::Key::MOD_RSHIFT
        SDL::Key::MOD_ALT = SDL::Key::MOD_LALT|SDL::Key::MOD_RALT
        SDL::Key::MOD_META = SDL::Key::MOD_LMETA|SDL::Key::MOD_RMETA

--- SDL::Key.enableKeyRepeat(delay,interval)
      ������ԡ��Ȥ�������Ѥ��롣
      

--- SDL::Key.disableKeyRepeat
      ������ԡ��Ȥ�̵���ˤ��롣
    
== SDL::Mouse

�ޥ�����Ϣ������ȴؿ���������Ƥ���⥸�塼��

=== �⥸�塼��ؿ�

--- SDL::Mouse.state
      �ޥ����ξ��֤�����η����֤��ޤ���
      ��������Ƥ�
        [ x , y , pressLButton? , pressMButton? , pressRButton? ]
      �ȤʤäƤ��ޤ���

--- SDL::Mouse.warp(x,y)
      �ޥ�����������ΰ��֤����ꤹ��ʥޥ�����ư�Υ��٥�Ȥ���������)��

--- SDL::Mouse.show
      �ޥ������������ɽ�����롣

--- SDL::Mouse.hide
      �ޥ������������ä���

--- SDL::Mouse.setCursor(bitmap,white,black,transparent,inverted,hot_x=0,hot_y=0)
      �ޥ�������������Ѥ��롣
      bitmap�Ȥ���((<SDL::Surface>))�Υ��󥹥��󥹤�Ϳ���롣
      ��������ο����������������롣
      white,black,transparent,inverted�Ϥ��Υ����ե�����ǡ��ɤ�
      �ԥ����뤬����������򡢹���Ʃ����ȿž�ˤ����뤫�򼨤���

== audio��Ϣ

=== SDL::Mixer

����������ꤹ��Τ˻Ȥ��⥸�塼��
�ܥ�塼���0����128��ͭ���Ǥ��롣
���Υ⥸�塼��ε�ǽ��Ȥ�����ˤϡ�SDL_mixer�饤�֥�꤬ɬ�פǤ��롣
���Υ⥸�塼����ε�ǽ��Ȥ�����ˤϡ�((<SDL.init>))��SDL::INIT_AUDIO��
ͭ���ˤ��ʤ���Фʤ�ʤ���

==== �⥸�塼��ؿ�

--- SDL::Mixer.open(frequency=Mixer::DEFAULT_FREQUENCY,format=Mixer::DEFAULT_FORMAT,cannels=Mixer::DEFAULT_CHANNELS,chunksize=4096)
      ���Υ⥸�塼��ε�ǽ�ν�����ؿ���
      frequency�ϼ��ȿ���format�ϥ�����ɤη�����
      channels��1�ǥ�Υ�롢2�ǥ��ƥ쥪
      chunksize�ϥХåե����礭�����򤽤줾����ꤹ�롣
      chunksize��2�γ����Ȥ��褦�ˤ��롣
      �����Ǥ���channels��playChannel�ʤɤǤ�channel����ʪ�Ǥ��롣

--- SDL::Mixer.spec
      ��������������ǥ�������ǽ��������֤���
      �������Ƥϡ�
        [ rate,format,channels ]

--- SDL::Mixer.playChannel(channel,wave,loop)
      ���ꤷ��channel��wave����դ��롣
      channel��-1����ꤹ��ȡ������Ƥ���channel��Ŭ���ˤ���Ф�롣
      loops���ꤷ����������֤���
      loops��-1�ΤȤ��Ϻݸ¤ʤ����꤫������
      loops��0�ΤȤ��ϰ��٤Τ߱��դ��롣

      �ɤΥ����ͥ����դ����Ѥ��������֤���

--- SDL::Mixer.play?(channel)
      ���ꤷ��channel�����߱��դ��Ƥ����true�򡢤��Ƥ��ʤ����
      false���֤���

--- SDL::Mixer.setVolume(channel,volume)
      ���ꤷ��channel�Υܥ�塼������ꤹ�롣
      channel=-1����ꤹ��Ȥ��٤Ƥ�channel���Ф��ܥ�塼�����ꤹ�롣

      volume=-1�Ȥ���ȡ����ߤΥܥ�塼�ब�֤롣

--- SDL::Mixer.halt(channel)
      ���ꤷ��channel�α��դ�ߤ�롣

--- SDL::Mixer.pause(chennel)
      ���ꤷ��channel�α��դ�����ߤ��롣

--- SDL::Mixer.resume(channel)
      ���ꤷ�������ߤ��Ƥ���channel�α��դ�Ƴ����롣

--- SDL::Mixer.pause?(channel)
      ���ꤷ��channel�������ߤ��Ƥ����true�����Ƥ��ʤ����false��
      �֤���

--- SDL::Mixer.playMusic(music,loops)
      music�ǻ��ꤷ�����ڤ���դ��롣
      loops��((<SDL::Mixer.playChannel>))��Ʊ����

--- SDL::Mixer.fadeInMusic(music,loops,ms)
      music�ǻ��ꤷ�����ڤ�ե����ɥ��󤷤Ʊ��դ��롣
      loops��((<SDL::Mixer.playChannel>))��Ʊ����
      �ե����ɥ����ms�ϻ��ꤷ���ߥ��ä���������

--- SDL::Mixer.setVolumeMusic(volume)
      ���ڤΥܥ�塼�����ꤹ�롣

--- SDL::Mixer.haltMusic
      ���ڤ�ߤ�롣

--- SDL::Mixer.fadeOutMusic(ms)
      ���ڤ���ꤷ���ߥ��ä����ƥե����ɥ����Ȥ��롣

--- SDL::Mixer.pauseMusic
      ���ڤ�����ߤ��롣
      
--- SDL::Mixer.resumeMusic
      �����ߤ��Ƥ��벻�ڤκ�����Ƴ����롣

--- SDL::Mixer.rewindMusic
      ���ڤκ������֤���ֺǽ�ˤ��롣

--- SDL::Mixer.pauseMusic?
      ���ڤ������ߤ��Ƥ����true�����ʤ����false���֤���

--- SDL::Mixer.playMusic?
      ���ڤ����դ���Ƥ����true�����Ƥ��ʤ����false���֤���

=== SDL::Mixer::Wave

Wave�򤢤�魯���饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- SDL::Mixer::Wave.load(filename)
      wave�ե��������ɤ���������б�����SDL::Mixer::Wave���饹��
      ���󥹥��󥹤��֤���

==== �᥽�å�

--- SDL::Mixer::Wave#setVolume(volume)
      self�Υܥ�塼����֤���

=== SDL::Mixer::Music

����(.mod .s3m .it .xm .mid .mp3)��ɽ����
������midi�ե������MP3����դ��뤿��ˤϤ��Τ�������꤬ɬ�ס�

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- SDL::Mixer::Music.load(filename)
      ����(.mod .s3m .it .xm .mid .mp3)��ե����뤫����ɤ���
      ���Υǡ������б�����Mixer::Music���饹�Υ��󥹥��󥹤��֤���

== Window Manager ��Ϣ

=== SDL::WM

Window��Ϣ�ν�����ޤȤ᤿�⥸�塼��

==== �⥸�塼��ؿ�

--- SDL::WM.caption
      caption��ʸ�����������֤��Ƥ��롣
      ���Ƥϡ�
        [ ������ɥ��Υ����ȥ� , ��������Υ����ȥ� ]

--- SDL::WM.setCaption(title,icon)
      �嵭�����Ƥ��ѹ����롣

--- SDL::WM.icon=(iconImage)
      ������ɥ��Υ�������γ�����ꤹ�롣
      setVideoMode�θƤӤ������˸ƤӤ����ʤ���Фʤ�ʤ���
      
--- SDL::WM.iconify
      ������ɥ��Υ������󲽡��Ǿ����򤹤롣
      ��������С�SDL::Event::APPACTIVE���٥�Ȥ������롣

== CDROM�ط�

=== SDL::CD

CDROM�ɥ饤�֤�ɽ�����饹

CD#numTrack���ξ����CD#status��ƤӤ������Ȥˤ�äƹ�������롣

�����Ǥ�CD�ΰ��֡����ջ��֤�Ĺ����ɽ������˥ե졼��Ȥ���ñ�̤��Ѥ��롣
1frame=2K�Ǥ��ꡢ
�̾�β���CD�ˤ�����75�ե졼��=1�äǤ��롣

=== �����ѡ����饹

Object

=== ���饹�᥽�å�

--- SDL::CD.numDrive
      �����Ĥ�CDROM�ɥ饤�֤����ѤǤ��뤫���֤���

--- SDL::CD.name(drive)
      ���ꤷ���ɥ饤�֤�̾����ʸ������֤���
      �ɥ饤�֤λ����0����CD.numDrive-1�������ǻ��ꤹ�롣

--- SDL::CD.open(drive)
      ���ꤷ���ɥ饤�֤򳫤���
      ���������CD�Υ��󥹥��󥹤��֤롣
      �ɥ饤�֤λ����0����CD.numDrive-1�������ǻ��ꤹ�롣
      0�ɥ饤�֤��ǥե���ȤΥɥ饤�֤Ǥ��롣

=== �᥽�å�

--- SDL::CD#status
      currentTrack,currentFrame,numTracks,trackType,trackLenght
      �ξ���򹹿����롣
      ���ߤ�CD�ξ��֤��֤����������Ƥϰʲ��ΤȤ��ꡣ
        TRAYEMPTY
        STOPPED
        PLAYING
        PAUSED
        ERROR

--- SDL::CD#play(start,length)
      CD��start�ե졼�फ��length�ե졼��δֱ��դ��롣

--- SDL::CD#playTrack(start_track,start_frame,ntracks,nframes)
      CD��start_track��start_frame���顢ntracks��Υȥ�å���nframe�ΤȤ���
      �ޤǱ��դ��롣
      �ʤ������Υ饤�֥����Ǥϥȥ�å��Υ���ǥå�����0����Ϥ��ޤ롣
      ���Υ᥽�åɤ�((<SDL::CD#status>))��ƤӤ��������Ȥ˸ƤӤ�����
      ����Фʤ�ʤ���

        ��
        cd.playTrack(0,0,1,0) # �ǽ�Υȥ�å�����դ��롣
        cd.playTrack(1,0,0,SDL::CD::FPS*15) # 2�ȥ�å��ܤ�ǽ餫��15�ñ��դ��롣

--- SDL::CD#pause
      CD�α��դ�����ߤ��롣

--- SDL::CD#resume
      CD�α��դ�Ƴ����롣

--- SDL::CD#stop
      CD�α��դ�ߤ�롣

--- SDL::CD#eject
      CD�򥤥������Ȥ��롣

--- SDL::CD#numTracks
      CD�Υȥ�å������֤���

--- SDL::CD#currentTrack
      ���߱��դ��Ƥ���ȥ�å����֤���

--- SDL::CD#currentFrame
      ���߱��դ��Ƥ�����֤�ե졼������֤���
      ���Τ������ϸ��ߤΥȥ�å��κǽ餫����ͤǤ��롣

--- SDL::CD#trackType(track)
      ���ꤷ���ȥ�å����ʤ�Ǥ��뤫���֤��������ͤϰʲ��ΤȤ��ꡣ
        SDL::CD::AUDIO_TRACK
        SDL::CD::DATA_TRACK

--- SDL::CD#trackLength(track)
      ���ꤷ���ȥ�å���Ĺ����ե졼������֤���

== ���祤���ƥ��å���Ϣ

=== SDL::Joystick

��ĤΥ��祤���ƥ��å���ɽ�����饹

=== �����ѡ����饹

Object

=== ���饹�᥽�å�

--- SDL::Joystick.pall
      ���٥�Ȥ�polling�˹�碌�ơ�((<SDL::Joystick.updateAll>))��Ƥ�
      �������ɤ��������롣
      
--- SDL::Joystick.pall=(polling)
      ���٥�Ȥ�polling�˹�碌�ơ�((<SDL::Joystick.updateAll>))��ƤӤ���
      ���ɤ��������ꤹ�롣

--- SDL::Joystick.num
      ���Ѳ�ǽ�ʥ��祤���ƥ��å��ο����֤���

--- SDL::Joystick.name(index)
      ���ꤷ�����祤���ƥ��å���̾����ʸ������֤���
      0����Joystick.num-1�������ǻ��ꤹ�롣

--- SDL::Joystick.open(index)
      ���ꤷ�����祤���ƥ��å��򳫤���
      ���������Joystick�Υ��󥹥��󥹤��֤äƤ��롣

--- SDL::Joystick.open?(index)
      ���ꤷ�����祤���ƥ��å������Ǥ˳�����Ƥ��뤫���֤���

--- SDL::Joystick.updateAll
      ���ƤΥ��祤���ƥ��å��ξ���򹹿����롣
      Joystick#button/ball/hat/axis�ξ���Ϥ���ǹ�������롣

=== �᥽�å�

--- SDL::Joystick#index
      ���祤���ƥ��å����б������������֤���

--- SDL::Joystick#numAxes
      �����륢�ʥ��������֤ο����֤���
      ��������2���Υ��ʥ��ƥ��å���2�Ĥ����֤�����ȿ������롣

--- SDL::Joystick#numBalls
      �ȥ�å��ܡ���ο����֤���

--- SDL::Joystick#numButtons
      �ܥ���ο����֤���

--- SDL::Joystick#axis(axis_index)
      ���ʥ��������֤����Ͼ��֤��֤���
      �����ͤ�-32768����32768�Ǥ��롣
      �̾�0�ˤ�x����1�ˤ�y�������Ƥ��롣

--- SDL::Joystick#hat(hat_index)
      �����뽽�����������Ͼ��֤��֤����������Ƥϰʲ��ΤȤ��ꡣ
        SDL::Joystick::HAT_CENTERED
        SDL::Joystick::HAT_UP
        SDL::Joystick::HAT_RIGHT
        SDL::Joystick::HAT_DOWN
        SDL::Joystick::HAT_LEFT
        SDL::Joystick::HAT_RIGHTUP
        SDL::Joystick::HAT_RIGHTDOWN
        SDL::Joystick::HAT_LEFTUP
        SDL::Joystick::HAT_LEFTDOWN

--- SDL::Joystick#button(button_index)
      �ܥ���β���������֤���
      �����Ƥ����true�����ʤ����false���֤���

--- SDL::Joystick#ball(ball_index)
      �ȥ�å��ܡ�������Ͼ�����֤���
      �������ƤϺǸ�ˤ��Υ᥽�åɤ�ƤӽФ��Ƥ���X����Y���ˤɤ����
      ư�������������� [dx,dy] ���֤���

== �ե���ȴط�

=== SDL::TTF

�ԣ����ԣ����ե���Ȥ�ɽ�����饹

==== �����ѡ����饹

Object

==== ���饹�᥽�å�

--- SDL::TTF.init
      TrueTypeFont��Ȥ�����ˤϺǽ�ˤ��δؿ���ƤФʤ���Фʤ�ʤ���

--- SDL::TTF.open(filename,size)
      TrueTypeFont��ե����뤫���ɤ߽Ф������Υ�������size�ǻ��ꤹ�롣
      
==== �᥽�å�

--- SDL::TTF#style
      �ե���ȤΥ���������֤���

--- SDL::TTF#style=(style)
      �ե���ȤΥ�����������ꤹ�롣����Ǥ���Τϰʲ��������OR��Ȥä���Ρ�
        SDL::TTF::STYLE_NORMAL
        SDL::TTF::STYLE_BOLD
        SDL::TTF::STYLE_ITALIC
        SDL::TTF::STYLE_UNDERLINE

--- SDL::TTF#textSize(text)
      text�����褷���Ȥ��νġ�����ɬ�פ��礭����������֤�

--- SDL::TTF#drawSolidUTF8(dest,text,x,y,r,g,b)
      self�Υե���������dest(Surface�Υ��󥹥���)��String text��
      dest�ΰ���(x,y)�ν�˽񤭤��ࡣ����r,g,b�Ƿ����롣
      Ʃ����(ColorKey)��ͭ���Ǥ��롣text��UTF-8��Ȥ���

--- SDL::TTF#drawBlendedUTF8(dest,text,x,y,r,g,b)
      drawSolidUTF8��Ʊ�͡�drawSolidUTF8������ʼ������褬�Ǥ��롣

== �������

=== �⥸�塼��ؿ�

--- SDL.getTicks
      ((<SDL.init>))���ƤФ�Ƥ���λ��֤�ߥ��ä��֤���
      49���ۤɥ�����ץȤ����餻�ĤŤ����0�ˤ�ɤ�Τ���ա�

--- SDL.delay(ms)
      �ߥ��äǻ��ꤵ�줿���֤����Ԥġ�
      OS�Υ������塼��󥰤Τ�����ꤷ�����֤���Ĺ���ԤĲ�ǽ�������롣

=end
