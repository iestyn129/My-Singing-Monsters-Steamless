LuaQ  9   @data\common\scripts\DailyCumulativeLogin\DCLCatchup.lua           -   J     I À  Ê   À Ê   ÀÊ@  
A  J  	AÉ À I¤   ä@  $      I $Á       I $ I $A I $ I AÀ @dÁ     	AAÀ AAAAd        	A^          Fade    BG    CloseButton 	   Contents    CatchUp 
   BuyButton    Touch    onInit    onPostInit 	   queuePop    Show    Hide    onClose 
   onTouchUp 	                      @@  @  E   FÀÀ \  A  L ^          game    player    getDailyCumulativeLogin +   PlayerDailyCumulativeLogin_catchUpBaseCost    catchUpDaysUsed                                                     playerState          diamondCost                              @@  @  KÀ@ \  A  M ^          game    player    getDailyCumulativeLogin    catchUpDaysTotal    catchUpDaysUsed                                                  playerState               !   #                       "   #         self              root     %   0    '   E   @  \ À Á  D  \   @  À  EA FÁ\   @  ÀA  B@BBÁ  C  @ÀA @CC@BBÁ  C  @  ÀC @         LOC    CATCHUP_DAYS_REMAINING    gsub 	   %${DAYS}    %${MAX}    game *   PlayerDailyCumulativeLogin_catchUpMaxDays    BG 	   Contents    Text    GetVar    text 
   SetString    CatchUp 	   BuyPrice    Show     '   '   '   '   )   )   )   )   )   )   *   *   *   *   *   *   *   ,   ,   ,   ,   ,   ,   ,   ,   ,   -   -   -   -   -   -   -   -   -   -   -   /   /   0         self     &      txt    &         catchUpDaysRemaining    catchUpPrice     2   4        K @ \@         Hide        3   3   4         self                6   :        F @ K@À \@ F@ K@À \@ EÀ  F Á @ \@         BG    Show    Fade    lua_sys    playSoundFx    audio/sfx/menu_slide.wav        7   7   7   8   8   8   9   9   9   9   :         self     
           <   @        F @ K@À \@ F@ K@À \@ EÀ  F Á @ \@         BG    Hide    Fade    lua_sys    playSoundFx    audio/sfx/menu_slide.wav        =   =   =   >   >   >   ?   ?   ?   ?   @         self     
           B   D       D   K À \@         Hide        C   C   C   D         self              root     F   K    	   À A@  Á    AÁ  AD  \ A  A AÁAA  BA   	      Sprite 	   setColor       ð?   game    collectDailyCumulativeReward    _G 
   dcl_popup    HideButtons    Hide        G   G   G   G   G   G   H   H   H   H   H   I   I   I   I   J   J   J   K         self           element           x           y              catchUpPrice    root -            	   
   
                                    #   #   !   0   0   0   %   4   2   :   6   @   <   B   B   D   D   B   F   F   F   F   K   K   K   F   M   M         root     ,      DCLCatchup    ,      catchUpPrice    ,      catchUpDaysRemaining    ,       