LuaQ  .   @data\common\scripts\MonsterEvolveFanfare.lua           ;Ý      A@   E  À  \   Á   Å  A Ü   A  E  Á \   ÁA   Ê   Á  A  	ÆDBÜ  ÆFBÜ HB CHB Ã
 J
 
 
ÃÃÃCI

 ÄÊÄ
ÅJEI
 ÊÅ
ÆJÆFI

 
ÇJÇÊÄGI
 Â
   d       ËGKHËHKIËIKJÁ
 $L                   d            
  ¤Ì            ä   	                  $M d     ¤Í     ä         $N                              d            	                   	    
  ¤Î       
              
                                          	                          	                         É¤                 
É¤N      
                         É¤ É¤Î   ÉÞ   0      require    Tweener    include    FadeTransition $   MenuElementPositionOffsetTransition    MenuHelpers 
   ViewGroup    Pulser            new    COMMON    hexCode    #FFFFFF    r       ð?   g    b    RARE    #87E3C1 ö(\Âõà?{®Gázì?ÓMbX9è?   EPIC    #FBC75F °rhí|ï?ö(\Âõè?¬Zd;ß×?	   SEASONAL    #DB877D ëQ¸ë?\Âõ(\ß?   amber_crack_02.png        @   amber_crack_03.png       @   amber_crack_04.png       @   amber_crack_05.png       @   amber_crack_06.png       @   amber_crack_07.png       @   onInit    onPostInit    onTick 	   queuePop    setupEvolve        M   T          W @    @@    À @ Á  A @          isEpicMonster 	   AddRemap    amber_rare.png    gfx/amber_epic        O   O   O   P   P   P   P   P   Q   Q   Q   Q   T      
   component           element              monsterData     `   k    !           Ä  À  @  @À   Á  A  Ä  Á@ Á@  AÁ @    @ BÁÀ @   CA @                game    remapMenuAnim    crack    amber_crack_sheet.xml 
   animation 
   SetString    tap       à?   lua_sys    playSoundFx    audio/sfx/menu_click_small.wav    DoStoredScript    play     !   a   a   a   a   a   a   a   b   b   b   b   b   b   b   b   b   e   e   e   e   e   e   f   f   h   h   h   h   j   j   j   j   k      
   component            element               tapCounter 	   NUM_TAPS    amberCrackFrames    amberSprite    amberAnimationTimer    tapParticles     n   y         @   A@  A  D @    AÁ   AA AAÁAA  BA   	         ð?   DoStoredScript    Tap    enabled    SetInt            FadeTransition    Show 	   activate        o   o   o   r   r   r   r   t   t   t   t   u   u   u   u   u   u   v   v   v   v   w   w   w   y      
   component           element           x           y              tapCounter    amberSprite 	   NUM_TAPS    amberElement    amberGlowTween     {        w      W @ À@  @  E@  FÀÀ    \@ E@  F Á @ Á Á @   \@  E  K@Â Á \@E@  FÀÂ @   C  \  Z    E@  F@Ã   \@ E@  FÃ \ H  E@  FÀÃ   \@ À E@  FÀÃ @ \@ E@  F@Ä \   Á  ÀD @  Á@  ÀD @  Á  ÀD @  ÁÀ   FAF DKÆ\ NÁÆA@  Á    FAG DKÇ\ NÁÆA@  ÁÀ  ÀD @ È @HÁ  ÀDÁ @ È  IÁ  ÀDÁ @ @  @I @   &       game    currentIslandType    setBookOfMonstersIslandType 	   logEvent    book_o_monsters    island 	   tostring    manager    setContext    BLANK    usePagination    getBookOfMonstersIslandType    setSpotlightMonsterId    getSpotlightMonsterId 
   pushPopUp    book_o_monsters_paged 	   topPopUp 
   FromWorld    SetInt       ð?   SpotlightMonster    SpotlightCostume    SpotlightStartX 	   SetFloat    absX    absW       à?   SpotlightStartY    absY    absH    isCrucibleEvolve    MonsterList    Touch    enabled            Swiper    finishFlagFanfare     w   }   }   }                                                                                                                                                                                                                                                                                                                                                                     activeIslandType    r      top 2   r         monsterData 
   monsterId 
   costumeId    monsterElement        £     !       @ @   @@ @   @ D @   @ D  @  AÀ    A @ @ A   A @ @  ÀA D @  @B@  
      hide    show    Show    visible    SetInt       ð?   alpha    DoCelebrateEffect 
   playSound      !                                                                     ¡   ¡   ¡   ¡   ¡   ¡   ¢   ¢   ¢   ¢   ¢   ¢   £             viewGroupA    viewGroupD    OffsetTransition    barTop 
   barBottom    monsterAnim    MenuHelpers    mainElement     ¦   ­     %    @ A  @EA  FÁÀ\ OÁA  AA A@     Á  ÀA @   Á@  BÁ @   Á   @CÁ @C Á A  @       	   setScale    lua_sys    Vector2    screenWidth       `@   screenHeight    layer 
   SetString    FrontPopUps    alpha 	   SetFloat       ð?
   repeating    SetInt 
   setShader    include    ShaderScrollingPattern     %   §   ¨   ¨   ¨   ¨   ¨   ¨   ¨   ¨   ¨   ¨   ¨   §   ©   ©   ©   ©   ©   ©   ª   ª   ª   ª   ª   ª   «   «   «   «   «   «   ¬   ¬   ¬   ¬   ¬   ­      
   component     $      element     $           °   ¸                 A    @@  @ @  À@  A @   A    @A  @À  B A@ @   
      visible    GetInt            FadeTransition    Show    SetInt       ð?   lua_sys    playSoundFx    audio/sfx/menu_click.wav        ±   ±   ±   ±   ±   ±   ±   ±   ±   ±   ³   ³   ³   ³   ´   ´   ´   ´   ´   ´   µ   µ   µ   µ   ¸             isPostReveal    flashSprite     »   Å     	'       @ @  D   KÀ ÁÀ  \    A Ä   Ë@ÁE FÁÁB  ËÂ Ü ÁÆAB\Ü@  Ä  ÆÂ
@   ÁBÅ ÆAÃÜ ÎÁBBÀ "AÜ@         GetComponent    Text    GetElement    Genes    size    setSize    lua_sys    Vector2    absW    y    CenterHorizontally    CreateSpacer    game    menuScaleX        @    '   ¼   ¼   ¼   ¼   ½   ½   ½   ½   ¾   ¾   ¾   ¿   ¿   ¿   ¿   ¿   ¿   ¿   ¿   ¿   ¿   ¿   ¿   À   À   À   Á   Â   Â   Â   Â   Â   Â   Â   Â   Ä   Ä   À   Å         textComponent    &      genesElement    &      size    &         postNotificationElements    MenuHelpers     Ç   Ï           W @ @  @@   À@ D  @  @                     game    playMonsterSelectSound       ð?       È   È   È   Ê   Ê   Ê   Ë   Ë   Ë   Ë   Ë   Ì   Ì   Ï             monsterData    soundTimer 
   monsterId     Ñ   "   	,  E   F@À   \ H   D   WÀ H@   À  \ K Á \ H  D K@Á Á \@D  À \ K Â Á@   B Õ \@D   KÀÂ \ Z   @	D    \ K Â Á@ \@E FÀÃ     D Å   Æ@ÄÜ ÎÀ   ÁD Ï \   EA E@  @    ÁÀ   F  ÁD AF@@D    \ K Â Á \@D  @ E   F Ç   Ä  \@D  @ \ KÇ ÁÀ \@EÀ   \ @È  EÁ   ÁH \    @      I    À@È A	 DFÉFÁÉ @       J    À@È A	 DFAÊFÁÉ @  À   J    À@È A	 DFÁÊFÁÉ @  @È A	 DFËFÁÉ @    Á@  GA @  Á   F  D @  Á   GA @  Á@   B  @  Á@  GÁ @À Á  Ë@HAÁ Á Ä  ËÍÜ   Ü   Ä A Ü Ë Â@ Ü@Ä  Ë@ÍA Ü AÁ  B  ÁÁ  N A   AA  G A A  GÁ AAÁÁ A  O      AO A  ÀAA  BÁ Á  A    I   ÀÁ  Å  ÆAÐ Ü UÁ@  O     AÁ @  J     AA @  J     AÁ @  A  ÁA  B  AÁA  B A  J      game    getMonsterData  
   CostumeID    GetInt    DoStoredScript    Refresh    animationName 
   SetString 	   xml_bin/    animationFile    isBoxMonster 
   animation    Idle    math    min 	   hudScale    menuScaleX      Àb@   height 	   setScale    lua_sys    Vector2    yOffset 	   SetFloat       è?   Store            applyCostumeToAnimComponent    visible    SetInt    LOC    HATCH_FANFARE_MONSTER_NAME    gsub    %${MONSTER}    name    isSeasonal 
   %${COLOR} 	   SEASONAL    hexCode    isEpicMonster    EPIC    isRareMonster    RARE    COMMON       ð?   size 333333ã?
   autoScale    text    HATCH_FANFARE_CLASS 
   %${CLASS}    monsterClass    GetElement    Genes    GeneString 
   GetString 
   monsterId 	   useFlags 	   populate    isCelestial    isYouth    NOTIFICATION_ASCENDED_MONSTER    gfx/menu/gradient_bg_seasonal 
   gfx/menu/    monsterFanfareBg    gfx/menu/gradient_bg_common    gfx/menu/bg_symbols_celestial    gfx/menu/gradient_bg_epic    gfx/menu/bg_symbols_epic    gfx/menu/gradient_bg_rare    gfx/menu/bg_symbols_rare    gfx/menu/bg_symbols_common    spriteName     ,  Ó   Ó   Ó   Ó   Ó   Õ   Õ   Õ   ×   ×   ×   ×   ×   ×   Ù   Ù   Ù   Ù   Û   Û   Û   Û   Û   Û   Û   Û   Û   Û   Ý   Ý   Ý   Ý   Ý   Þ   Þ   Þ   Þ   Þ   Þ   ß   ß   ß   ß   ß   ß   ß   ß   ß   ß   ß   ß   ß   ß   à   à   à   à   à   à   à   à   á   á   á   á   á   á   á   á   á   á   ã   ã   ã   ã   ã   ã   æ   æ   æ   ç   ç   ç   ç   ç   ê   ê   ê   ê   ê   ê   ì   ì   ì   í   í   í   í   í   í   í   í   í   î   î   î   î   î   ï   ï   ï   ï   ï   ï   ï   ï   ð   ð   ð   ð   ð   ñ   ñ   ñ   ñ   ñ   ñ   ñ   ñ   ò   ò   ò   ò   ò   ó   ó   ó   ó   ó   ó   ó   ó   õ   õ   õ   õ   õ   õ   õ   ø   ø   ø   ø   ø   ø   ù   ù   ù   ù   ù   ù   ù   ù   ù   ú   ú   ú   ú   ú   ú   û   û   û   û   û   û   ü   ü   ü   ü   ü   ü   þ   þ   þ   ÿ   ÿ   ÿ   ÿ   ÿ   ÿ   ÿ   ÿ   ÿ                                                                                                   	  	  	  	  	  	  	  	                                                                                                                "        element     +     scale 5   F      monsterNameText ^   +  
   classText ¹   +     genes Ì   +  	   gradient ø   +     pattern ø   +        monsterData 
   monsterId 
   costumeId    amberSprite    monsterAnim    COLOR_TABLE    postNotificationMonsterName    postNotificationClass    postNotificationElements    postNotificationTop    gradientBG    scrollingBG     $  Y   
è   D   K À Á@  \@D    \ KÀÀ Å  Æ@ÁÜ ÎÀ \@D  À \ K Â Á@  B Õ \@D  À \ K Â Å  Æ ÃÜ  \@  E  F@Ã \  ÀCÅ  Æ@ÁÜ  D A Ä  ËÄEÁ FÅ À \Ü@  Ä  A Ü ËÀÀNÅ Ü@Å  ÆÀÅ @   \ KAÆ\ Ü  È Ä   Ü ËÀÆA Ü@Ä  A Ü Ë ÂA Ü@ÅÀ  Ü AÈ ÅÁ Â Ü   À  AÈ	 ÄÆAÉÆÉ À   A  ÁFÁ	 A A
  Á@ AA A A
  ÁFÁ	 A AA  BA A  ÁF AA  ÁFÁ	 AAÁ
  ÁFÁ	 AA
  Á@ AA AA
  ÁFÁ	 AAA  BA AA  ÁF A KÁ @ A \ KÂÁ \AD KAÌÁ \ÁÁ  B   AÂ  M A  ÁA  ÁFÂ	 AÀ AÁÁ  B A ÁÁ  BB ANA  ÁÁ  ÁF AOAOA  OA   ?      DoStoredScript    Refresh    offsetTransitionEndX 	   SetFloat    game 	   hudScale      [@   animationName 
   SetString 	   xml_bin/    getCrucibleAnimFile 
   animation    getCrucibleUnlockedAnim    crucibleHeight    math    min    menuScaleX       Y@	   setScale    lua_sys    Vector2    yOffset       è?   attachCurFlagsToCrucible    FlagInd    GetInt    visible    SetInt            text    FLAG_FANFARE_TITLE    LOC    HATCH_FANFARE_MONSTER_NAME    gsub    %${MONSTER} 
   FLAG_NAME 
   %${COLOR}    COMMON    hexCode       ð?   size 333333ã?
   autoScale 
   multiline       Ð?   FLAG_FANFARE_DESC    GetComponent    Text    EVOLVE_FANFARE_FLAGS_UNLOCKED    GetElement    Genes    GeneString 
   GetString 	   useFlags 	   populate    spriteName    gfx/menu/gradient_bg_common    gfx/menu/bg_symbols_common    hide    enabled    FadeTransition    Show 	   activate     è   &  &  &  &  (  (  (  (  (  (  (  (  (  +  +  +  +  +  +  +  +  +  +  ,  ,  ,  ,  ,  ,  ,  ,  -  -  -  .  .  .  .  .  .  .  .  .  .  .  /  /  /  /  /  /  /  /  0  0  0  0  0  0  2  2  2  2  2  2  2  2  2  2  4  4  4  4  4  4  6  6  6  6  6  6  8  8  8  9  9  9  9  9  9  9  :  :  :  :  :  :  :  <  <  <  <  <  <  =  =  =  =  =  =  =  =  =  >  >  >  >  >  >  ?  ?  ?  ?  ?  ?  @  @  @  @  @  @  B  B  B  B  B  B  C  C  C  C  C  C  D  D  D  D  D  D  D  D  D  E  E  E  E  E  E  F  F  F  F  F  F  G  G  G  G  G  G  I  I  I  I  J  J  J  J  J  J  L  L  L  L  M  M  M  M  M  M  M  M  M  M  N  N  N  N  N  N  O  O  O  Q  Q  Q  Q  Q  Q  R  R  R  R  R  R  U  U  U  V  V  V  V  V  V  W  W  W  W  X  X  X  Y        element     ç      height "   ç      scale -   ç      monsterNameText T   ç      elementsText ®   ç      genes ¸   ç         amberSprite    monsterElement    monsterAnim    flagAe    postNotificationTop    COLOR_TABLE    postNotificationMonsterName    postNotificationClass    postNotificationElements    gradientBG    scrollingBG    viewGroupA    amberTouch    amberElement    amberGlowTween     ]  H  - À     K @ Á@  \H  K @ Á  \KÀÀ Á  \K@Á Á  \@ K@A ÁÀ \@ K@A Á   \@ E@  \ H D Z    D KÀÂ Á  \H  D  K@Ã Á \@K @ ÁÀ \H D   @D
 	ÁD	ÁDd   	AdA     	AI D F Ä KÀÅ Á \@D KÀÀ Á  \H  D  K@Æ Ä \@D  K@Á Á \@ D  K@Á ÁÀ  \@ D KÀÀ Á  \H D K@Á Á  \@ D KÀÀ Á  \H D F@Ä @ ÇÀGÅ@ ÆÈÜ ÎÀÀ ä   À äÀ   À \ H  D @	 \ KÉ Á \@D KÀÀ ÁÀ	 \H  	D  	K@Á Á 
 $ \@ K @ Á@
 \H 	D 	  @D
 	J	ÁDdA   
 
            	Ad    	AI D 	F Ä KÀÅ ÁÀ \@D 	KÀÀ Á  \H  D  K@Æ Ä \@KÀ@ ÁÀ
 \H D   @D
A 	ÁG	ÁDdÁ  	Ad     
         	AdA        	    	AI D  K@Ë Ä  \@D  K@Ë Ä \@D  K@Ë Ä  	\@D  K@Ë Ë @ A ÜËÀÀA Ü \@  D  K@Ë Ë @ AÁ ÜËÀÀA Ü \@  D  K@Ë Ä  \@K @ Á@ \KÀÀ Á  \H K @ Á \KÀÀ Á  \H  K @ ÁÀ \KÀÀ Á  \H K @ Á  \H  D K@Ë Ä \@D K@Ë Ä  \@D K@Ë Ä \@D K@Ë Ä  \@D K@Ë Ä 	ËÀÀAA Ü \@  K @ Á \ @DÊ  ÉÀD$    É    ÀÀ  @A dÁ   @  
@KÁÀ  @   
@KÁÀ  @   
@KÁÀ  @   @ Á À@   Ä  Ë@ÄJ IANIÁDIÁD¤  IÜÀ   DÀE @ @  À@    @ Á À@   @A D @   @O ÁOE FÐ\ OAÐ P AN@    ÁÀ   QA @ @     ÀQÄ 
Á  EA FAÒ\ NA¥	A¤	Ã¥	J@ @      ÀQÄ  
Á  EA FAÒ\ NA¦	A¤	Ã¥	J@ @K @ @K@ @KÁ@ @   @K Á@ @   S@   O      GetElement 
   MainPanel    Fade    GetComponent    Touch    addLuaFunction 
   onTouchUp    SetupMonster    SetupFlags    include    ShaderColorize    getUniform 	   u_Factor 	   setFloat            AmberImage    FadeTransition    new 	   duration       ð?   maxFade    onDoneShow 	   onUpdate 	   SetAlpha    Sprite 
   setShader    Refresh    Tap    Glow    delay é?ëQ¸Õ?   targetValue    game    menuScaleX       4@   onPostDelay    visible    SetInt    TapParticles    play    MonsterAnim        @   flash    onDoneHide    add    Arrow    PreNotification    Text    PostNotificationTop    PostNotificationMonsterName    PostNotificationClass    PostNotificationElements 
   Particles 	   NewLabel    ContinueLabel    delayOnShow       @   BGGradient 
   BGPattern    onPostInit 	   setScale    lua_sys    Vector2    screenWidth       @   screenHeight    layer 
   SetString    FrontPopUps 
   BorderTop    OnInit    startY 	   hudScale       `À   endY    BorderBottom       `@   hide        r  w      D   F À K@À Á  \@D   À  \ K Á Á@ \@D   F À KÁ \@ EÀ F Â @ \@   
      FadeTransition 	   SetAlpha            visible    SetInt       ð?   Show    lua_sys    playSoundFx    audio/sfx/monster_level_up.wav        s  s  s  s  s  t  t  t  t  t  t  u  u  u  u  v  v  v  v  w        e              flashSprite     x  {      D      \ K@À À   \@D  KÀ À   \@        alpha 	   SetFloat 	   setFloat        y  y  y  y  y  y  z  z  z  z  {        alpha     
         amberElement    colorizeShaderFactor             D   K À Å@  ÆÀ   @  Ü \@  D   À  \ K Á Ï@A \@     	   setScale    lua_sys    Vector2    alpha 	   SetFloat       4@                                           value           
   amberGlow                 A    @@   @        visible    SetInt       ð?                            
   amberGlow              @      \ K@À Á  Á  AAA  Õ \@KA \@      
   animation 
   SetString    tap effcts 0    math    random       @   Play                                       
   component                  ´    ,      W @ @  @@ @   @ @   @ @  @ À   A A@ @  ÀA @   B @B @      W @  À   A A @  ÀB D  Á   @C  @           show 	   activate    lua_sys    playSoundFx    audio/sfx/happy_hearts.wav    game    viewMonsterInCrucible    FadeTransition    Show    audio/sfx/flag_unfurl.wav    playCrucibleFlagOpening    FlagInd    GetInt     ,                  ¡  ¡  ¡  ¤  ¤  ¤  ¥  ¥  ¦  ¦  ¦  ¦  «  «  «  ­  ­  ­  ­  ¯  ¯  °  °  °  ±  ±  ±  ±  ²  ²  ²  ²  ²  ²  ²  ²  ²  ´            monsterData    viewGroupC    labelPulser    flagAe    playMonsterSound    continueLabel    isPostReveal    element     µ  ¹   	   D   K À Í \@D  KÀ À   \@     	   setFloat       ð?	   setAlpha     	   ¶  ¶  ¶  ¶  ¸  ¸  ¸  ¸  ¹        alpha              colorizeShaderFactor    viewGroupB     Í  Ï      D   K À Á@  \KÀ À   \@        GetVar    alpha 	   SetFloat        Î  Î  Î  Î  Î  Î  Î  Ï        alpha              flashSprite     Ð  Þ  
  (         À   @ @    @ @   @ @   A@   @ À  @ A@   @ À  @  @ À A@   @ À  @  @   A @A @         hide    visible    SetInt            FadeTransition    Hide     (   Ñ  Ñ  Ñ  Ò  Ò  Ò  Ó  Ó  Ó  Ô  Ô  Ô  Õ  Õ  Õ  Õ  Õ  Õ  Ö  Ö  Ö  Ö  Ö  Ö  ×  ×  ×  Ù  Ù  Ù  Ù  Ù  Ù  Ú  Ú  Ý  Ý  Ý  Ý  Þ      
      isPostReveal    viewGroupB    viewGroupC    viewGroupD    monsterAnim    continueLabel    loadNextMenu 
   amberGlow    doMonsterReveal    flashSprite     ß  ë    %         @   @  @@ @   À@ A  @   A@  A À @  B @B @   @B D @  B @  ÀB À @  @         root 	   popPopUp    lua_sys    playSoundFx     audio/sfx/SFX_JackPotWin_01.wav    visible    SetInt            FadeTransition    Show    show 	   setAlpha     %   à  à  à  á  á  á  á  á  á  ã  ã  ã  ã  ä  ä  ä  ä  ä  ä  å  å  å  å  æ  æ  æ  æ  ç  ç  ç  è  è  è  è  é  é  ë            isPostReveal    mainElement    flashSprite    monsterElement    OffsetTransition    viewGroupB    centerElements             D   K À Á@  \KÀ ÅÀ  Æ Á   @  Ü \@          GetComponent    Text 	   setScale    lua_sys    Vector2                                      scale           	   newLabel                  @  @  @  @ AÀ  @     A @      	   isActive    lua_sys    playSoundFx    audio/sfx/happy_hearts.wav 	   activate                                            labelPulser     %  '      D   K À Á@  \KÀ À   \@        GetVar    alpha 	   SetFloat        &  &  &  &  &  &  &  '        alpha              continueLabel À  _  a  a  a  a  c  c  c  c  c  c  c  c  c  c  e  e  e  e  f  f  f  f  h  h  h  h  i  i  i  j  j  j  j  j  k  k  k  k  n  n  n  n  o  o  o  o  p  q  w  w  w  {  {  {  {  o  |  }  }  }  }  }                                                                                                                                                              ´  ´  ´  ´  ´  ´  ´  ´  ´  ´  ¹  ¹  ¹  ¹    º  »  »  »  »  »  ½  ½  ½  ½  ½  Ç  Ç  Ç  Ç  É  É  É  É  Ê  Ê  Ê  Ê  Ë  Ì  Ï  Ï  Ï  Þ  Þ  Þ  Þ  Þ  Þ  Þ  Þ  Þ  Þ  Þ  Þ  ë  ë  ë  ë  ë  ë  ë  ë  ë  Ê  ì  ù  ù  ù  ù  ú  ú  ú  ú  û  û  û  û  ü  ü  ü  ü  ü  ü  ü  ü  ü  ý  ý  ý  ý  ý  ý  ý  ý  ý  þ  þ  þ  þ                                                                                    	  	  	  	  	  	  	                                                                                                   !  !  !  !  "  #  $  '  '  '  !  (  )  )  )  )  )  +  +  +  +  +  +  +  ,  ,  ,  ,  ,  ,  ,  -  -  -  -  -  /  /  /  /  0  0  0  0  1  1  1  1  /  /  2  2  2  2  2  2  4  4  4  4  5  5  5  5  6  6  6  6  6  7  8  5  ;  ;  ;  ;  <  <  <  <  =  =  =  =  =  >  ?  <  B  B  B  B  C  C  C  C  D  D  D  D  D  D  D  E  E  E  E  E  E  E  F  F  F  H        element     ¿  	   newLabel $  ¿  -      mainElement 
   mainPanel    finishSequence    setupMonster    setupFlags    colorizeShader    colorizeShaderFactor    amberElement    FadeTransition    flashSprite    amberSprite    onAmberRefresh    onAmberTap    amberTouch    onTouchedAmber 
   amberGlow    amberGlowTween    Tweener    tapParticles    monsterElement    monsterData    viewGroupC    labelPulser    flagAe    playMonsterSound    continueLabel    isPostReveal    viewGroupB    monsterAnim    viewGroupD    loadNextMenu    doMonsterReveal    OffsetTransition    centerElements    viewGroupA    postNotificationTop    postNotificationMonsterName    postNotificationClass    postNotificationElements    Pulser    gradientBG    scrollingBG    initScrollingBG    barTop 
   barBottom     J  Y   -   D      \ K@À Á  \@D  FÀÀ   Ê@  AA  A É  A  A É  ÁB É  A  A É ÉÀC\@D K Ä \@ D  K Ä \@ D K@Ä \@         visible    SetInt            OnInit    startX    xOffset 	   GetFloat    startY    yOffset    endX    game 	   hudScale       T@   endY 	   duration       @   hide    Show     -   K  K  K  K  K  K  M  M  M  M  N  N  N  N  N  N  O  O  O  O  O  O  P  P  P  P  P  Q  Q  Q  Q  Q  Q  R  M  U  U  U  V  V  V  X  X  X  Y        element     ,         monsterAnim    OffsetTransition    monsterElement    viewGroupB    viewGroupC 
   mainPanel     [  |   H           @      @@@  @  @@@  @ À@Ä    @  Á   @A A   @@@  @ À@Ä   @ À@Ä    @ ÀA  @  ÀA  @  À @    @@  Á   @B @ @@@  @                FadeTransition    Tick    OnTick    visible    GetInt       ð?   tick 
   animation 
   SetString    idle     H   ]  ]  ]  ^  ^  ^  b  b  b  b  b  e  e  e  e  e  f  f  f  f  f  i  i  i  i  i  i  i  j  j  j  j  j  m  m  m  m  m  n  n  n  n  n  p  p  p  p  q  q  q  q  s  s  s  t  t  t  u  u  u  v  v  v  v  v  v  z  z  z  z  z  |        element     G      dt     G         soundTimer    amberElement    monsterElement    OffsetTransition    flashSprite    barTop 
   barBottom    labelPulser    amberGlowTween    amberAnimationTimer    amberSprite    continueLabel     ~         K @ \ K@À \@         root 	   popPopUp                        element                        @      \ K@À \ H   D   WÀ À KÀ@ Á  \@ KÀ@ Á@ \@     
   MonsterID    GetInt            DoStoredScript    SetupMonster    SetupFlags                                                element           
   monsterId Ý                                                                  	                           '   '   (   .   .   /   2   2   3   ;   =   >   >   >   >   >   >   ?   ?   ?   ?   ?   ?   @   @   @   @   @   @   A   A   A   A   A   A   E   H   K   T   T   V   W   X   Y   Z   [   \   ^   k   k   k   k   k   k   k   y   y   y   y   y   y                  £   £   £   £   £   £   £   £   £   ­   ¸   ¸   ¸   Å   Å   Å   Ï   Ï   Ï   Ï   "  "  "  "  "  "  "  "  "  "  "  "  "  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  Y  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  Y  Y  Y  Y  Y  Y  Y  Y  |  |  |  |  |  |  |  |  |  |  |  |  |  |                :      Tweener    Ü      FadeTransition    Ü      OffsetTransition 	   Ü      MenuHelpers    Ü   
   ViewGroup    Ü      Pulser    Ü      Tweener    Ü      MonsterEvolveFanfare    Ü      mainElement    Ü      colorizeShader    Ü      colorizeShaderFactor    Ü   
   monsterId    Ü      monsterData    Ü   
   costumeId    Ü      newFlag    Ü      flashSprite    Ü      monsterElement    Ü      monsterAnim    Ü      flagAe    Ü      viewGroupA    Ü   
   mainPanel    Ü      amberElement    Ü      amberSprite    Ü      amberTouch    Ü   
   amberGlow    Ü      amberGlowTween    Ü      tapParticles    Ü      viewGroupB     Ü      postNotificationTop !   Ü      postNotificationMonsterName !   Ü      postNotificationClass !   Ü      postNotificationElements !   Ü      viewGroupC #   Ü      labelPulser $   Ü      viewGroupD &   Ü      gradientBG '   Ü      scrollingBG '   Ü      barTop '   Ü   
   barBottom '   Ü      continueLabel '   Ü      soundTimer (   Ü      COLOR_TABLE A   Ü      tapCounter B   Ü      isPostReveal C   Ü      amberAnimationTimer D   Ü      onAmberRefresh F   Ü      amberCrackFrames G   Ü   	   NUM_TAPS N   Ü      onAmberTap U   Ü      onTouchedAmber [   Ü      loadNextMenu `   Ü      doMonsterReveal i   Ü      initScrollingBG j   Ü      finishSequence m   Ü      centerElements p   Ü      playMonsterSound t   Ü      setupMonster    Ü      setupFlags    Ü       