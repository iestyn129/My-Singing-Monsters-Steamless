LuaQ  &   @data\common\scripts\ElementFader.lua           (      A@   J IÀ@I@AIÀAI@BI@BIÀÀ@ CI ¤   I¤@  I ¤  II@ ¤À     I¤      I ¤@ I¤ I ¤À I¤  I ¤@ I¤ I ^          include    ElementTools 	   autoTick  	   duration ëQ¸Õ?   maxFade       ð?   delayOnShow            delayOnHide    startVisible    ease    lua_sys    Quadratic_EaseIn    onDone 	   onUpdate    onUpdateComponent    __index    New    Init    Show    Hide    GetTransitionTime 	   SetAlpha    Stop    tick                                         fader            showing                                                  alpha            dt            fader                                               
   component            alpha            fader                 $   )        À @    @  @  À    Ë@@  Ü@           setmetatable    Init        %   %   %   %   &   &   &   &   '   '   '   (   )         element           options           elementFader             ElementFader     ,   V    +   	@ @@    @¤       I ÀÀ  AA A   @ @ ÀAÆ @ $A         É 	@B	@B	@B	@Â	@B	@ÂÆC Ú     	ÀÃÄ   Æ@Ä  d       Ü 	À ËD FAC Ü@        root 	   autoTick    ElementFaderUpdate    SetupGenericListener    game    engineReceiver    sys::msg::MsgUpdate 
   onDestroy    fadeTransitionStartAlpha            fadeTransitionTargetAlpha    fadeTransitionRemainingTime    fadeTransitionDelayRemaining    currentAlpha    startVisible       ð?   components    FindAllComponents 	   SetAlpha        1   3           @AÀ @        tick    time        2   2   2   2   3         e        
   msgUpdate              self     :   @    
   D      I D  Z    D     \@         components     
   ;   ;   ;   =   =   =   >   >   >   @         e     	         self    oldOnDestroy     Q   Q       K @ Á@  \Z   @F@ Z@   KÀ@ Á@  \K Á \    @A   B@  B  ^          HasVar    alpha    ignoreFade    V 	   GetFloat    currentAlpha        Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q   Q      
   component              self +   -   /   /   /   3   3   3   5   5   5   5   5   5   5   9   9   :   @   @   @   @   B   C   D   E   G   I   J   J   J   K   N   N   O   Q   Q   S   N   S   U   U   U   V         self     *      element     *      oldOnDestroy    *         ElementTools     Y   j        Z@    @ @@@@   @À@ A @@A    À@A À    @ÀA 	  A 	  @ 	ÀB 	 À@ ÁA @     	   duration            Stop 	   SetAlpha    maxFade    onDone    fadeTransitionStartAlpha    currentAlpha    fadeTransitionTargetAlpha    fadeTransitionRemainingTime    fadeTransitionDelayRemaining    delayOnShow        Z   Z   Z   Z   Z   [   [   [   \   \   \   ^   ^   ^   _   _   _   _   `   b   b   c   c   d   d   f   f   h   h   h   j         self           instant                m   ~        Z@    @ @@@@   @À@ A  @ A     A À     @@A 		@À @ 	 B 	À@ A @     	   duration            Stop 	   SetAlpha    onDone    fadeTransitionStartAlpha    currentAlpha    fadeTransitionTargetAlpha    fadeTransitionRemainingTime    fadeTransitionDelayRemaining    delayOnHide        n   n   n   n   n   o   o   o   p   p   p   r   r   r   s   s   s   s   t   v   v   w   x   x   z   z   |   |   |   ~         self           instant                           F @ ^          fadeTransitionRemainingTime                       self                            	@ @  Æ@  @ÆÁ@ÚA    Á BA ÂAÂ B¡  Àü B    @  Æ@   ÆB   @   ÜA ¡   þ  	      currentAlpha    ipairs    components    maxFade       ð?   V    alpha 	   SetFloat    onUpdateComponent                                                                                                               self           value           (for generator)          (for state)          (for control)          _       
   component          maxFade 	         (for generator)          (for state)          (for control)          _       
   component                          	@@Z    @ Á@ @        fadeTransitionRemainingTime         	   SetAlpha    fadeTransitionTargetAlpha                                   self           finish                   Å     D      @@À    @  À@ Æ A À A  E  FÁÁA ÍA \ 	 KB ÆAB \A  E  FÁÁA ÍA\À 	À @ ÁA  FÂB \MA ÆAC C @ ËB @ ÜAÆÁC Ú   ÆÁC   @   ÜA @ÁÆD Ú  ÀÆD    FC @Á  BB  B ÜA        math    min L7A`å ?   ease    fadeTransitionRemainingTime            fadeTransitionDelayRemaining    max 	   SetAlpha    currentAlpha       ð?	   duration    lerp    fadeTransitionStartAlpha    fadeTransitionTargetAlpha 	   onUpdate    onDone     D                        ¡   £   £   ¥   ¦   ¦   §   §   §   §   §   §   ¨   ª   ª   ª   «   ®   ®   ®   ®   ®   ®   °   ²   ²   ²   ²   ²   ²   ²   µ   µ   µ   µ   µ   ·   ·   ·   ¹   ¹   ¹   º   º   º   º   º   ½   ½   ¾   ¾   ¾   ¿   ¿   ¿   ¿   ¿   ¿   ¿   ¿   Å         self     C      dt     C      ease    C      transitionTime    C      delay    C   
   easedTime &   C      alpha +   C       (                     	                                          )   )   $   V   V   ,   j   Y   ~   m                     Å      Ç   Ç         ElementTools    '      ElementFader    '       