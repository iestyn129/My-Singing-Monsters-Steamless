LuaQ  $   @data\common\scripts\ObjectInfo.lua           	D      A@  � J@  �   I� ���  �  E FA�\�� O��NA��� �B��� �����    �            �I���A         I����           �I����         I���� I���A I���� I���� I����    I���A    I����    I����    I����    I��Ɓ� $B ��Ɓ� $� ���^   �       include $   MenuElementPositionOffsetTransition 
   Animation            lua_sys    screenWidth       ~@     �r�   deviceMarginY �������   onInit    onPostInit    onTick 	   queuePop    showBio 
   showLikes 
   showStats    populateMineStats    populateBakeryStats    populateFuzerStats    populateBreedingStats    populateNurseryStats    populateTorchStats    PlayMe           i    Y  K @ �@  \��H   D   K�� ��  \��H � F A K@� \@ F A I�A�F A F � I�I Å�� ��C��� �� �I����� ��D��� �� �I����� ��E��� ��E�� �I����� ��D��� �� �I����� ��FI� ��  � G� @ AA ܀�
� 	�Ǆ	�ǅ	ȆD�	A��D 	A��D�	A���@��� �@H��� �   �,��� ��Hŀ ���� � ��  �   � ܀ � �@ �@�W H��ŀ �@�� �H�� A ܀�W���?�� @ A ܀� M�I��	  A�
 BJ��
 ��
  ���   ��@ � \� KB�ł �B�� �H�� @���\B  @ �� \� KB��� \B�@ � \� KB��� \B�@ �� \� KB��� \B�KM��\B�KBMł Ƃ��I�M�NE� FC�\�� NC��� Ń ���� O� \B  KBOł ���� �O\B K�O\B KP�� \B���+�ŀ �@�� �H� ܀  W���)�   A� � I��	 A�@ � ��E
 KA���
 � @  \����� �� �AK ��A����� �� �AK� �A���� �� �AL� �A����� �� �AK� �A���  �A��A�� �MA �� �BN��� ����� � �NE� F� �A  �A�� �NE� F���A ����A ��� �A����� ��P��� ŀ � �� @��� �@Q��� ŀ ���  A ܀�W�� ��   � ܀ � �A�	 �@�� @ A ܀�
 AJ��
 ��    ��@ � \� KA��A \A�@ �� \� KA��� \A�@ � \� KA��� \A�@ �� \� KA��� \A�KM��\A�KAMŁ Ɓ� E� FB�\�� NB��� ł ���� O� \A  KAOŁ ���� �O\A K�O\A KP�� \A� ��   � ܀ � �A �@�@��   �� �� � I �@��� �� �@  � L      GetElement    FadeSprite    GetComponent    Sprite    ImageFrame    Init    onDoneHide     OffsetTransition    delayOnStart       �?	   duration       �?   startX    game 	   hudScale       >@   startY    lua_sys    deviceMarginY �������   endX    screenWidth       ~@      d�   endY    ease    Linear_EaseNone    OnInit 
   InfoFrame 333333�?333333�?           selectedObjIsMonster 	   numGenes    selectedMonsterId    SetInt 	   geneType           �?   menu    addTemplateElement    template_elementicon 	   geneItem    SpriteName 
   SetString 
   SheetName    xml_resources/hud02.xml    Size 	   SetFloat    Layer    PopUps 
   setParent    setOrientation    MenuOrientation        @      D@   menuScaleY       �   HCENTER    VCENTER    setRelativeObjectAnchors    BOTTOM    init    setPositionBroadcast    seasonalSigilFromUid 
   geneItem0    selectedObjType    SpecificEntityType_CASTLE    objectName    string    find 
   MONSTER_N 
   gene_fire    collectgarbage    stop     Y                                                                                                                                !   !   !   !   !   !   "   #   $   %   %   &   &   '   '   !   *   *   *   *   *   +   +   +   +   +   +   ,   ,   ,   ,   ,   ,   .   .   /   /   /   /   /   /   /   /   /   0   0   0   1   1   1   1   2   2   2   2   2   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3   4   4   4   4   4   4   5   5   5   5   5   5   6   6   6   6   6   6   7   7   7   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   8   9   9   9   9   9   9   :   :   ;   ;   ;   1   =   ?   ?   ?   ?   ?   ?   @   @   A   A   A   A   A   A   B   B   B   C   C   C   C   C   C   D   D   D   D   D   D   E   E   E   E   E   E   F   F   F   F   F   F   G   G   G   G   G   G   H   H   H   I   I   I   I   I   I   I   I   I   I   I   I   I   I   I   J   J   J   J   J   J   K   K   L   L   L   N   O   O   O   O   O   O   O   Q   Q   Q   R   R   R   R   R   R   R   S   S   S   S   S   S   U   U   U   V   V   V   V   V   V   W   W   W   W   W   W   X   X   X   X   X   X   Y   Y   Y   Y   Y   Y   Z   Z   Z   Z   Z   Z   [   [   [   \   \   \   \   \   \   \   \   \   \   \   \   \   \   \   ]   ]   ]   ]   ]   ]   ^   ^   _   _   _   _   a   a   a   a   a   a   b   e   e   e   e   e   e   h   h   h   i         element     X     imageFrameTransition    X  	   numGenes E   �      parent Y   �      (for index) \   �      (for limit) \   �      (for step) \   �      i ]   �   	   geneItem e   �      seasonalSigil �   �      parent �   �   	   geneItem �   �      name �   N     parent   G  	   geneItem   G        fader    faderSprite    OffsetTransition    infoFrameEndY    infoFrameEndX     l   �    ]   E   F@� \�� �   ��@�� �	�E   F�� \�� �   � A�� � �K@A �� \@���E   F�� \�� �   ��A�� @�E   F � \�� Z    �E   F@� \�� Z@  � �K@A �� \@���K@A �� \@���K@A �� \@�� �K@A �� \@�F C K@� \@ D   F@� ��C � � �\@  E  F@� �� \@ A� H � F E K@� �� \��K�� \� ��C  �����E�� �� @�F F F@� �� \� K�� �  \@�F@G F�� �� \� K�� �  \@� �       game    selectedObjType    SpecificEntityType_MONSTER 	   showBios    PersistentData_BIO    DoStoredScript    showBio    PersistentData_LIKES    selectedMonsterHasLikes    hideMonsterLikes 
   showLikes 
   showStats    ImageFrame    Show    GetElement 
   InfoFrame    lua_sys    playSoundFx    audio/sfx/menu_slide.wav       �?   InfoContent    GetComponent    Text    absH 
   ScrollBar    Sprite    visible    SetInt            ScrollMarker    Marker     ]   n   n   n   n   n   n   n   o   o   o   o   o   o   o   p   p   p   p   q   q   q   q   q   q   q   r   r   r   r   r   r   r   r   r   r   s   s   s   s   u   u   u   v   x   x   x   y   {   {   {   ~   ~   ~                     �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         element     \         OffsetTransition    transitionState     �   �    b   �   �@@��� �� ���   ��@��@ A ܀� � JA  �� ��AI����@ � � W B@��@B ��B�� �� � C��  B���@B ��B�� �� �@C� �@�� A �� �� � C�� �  � ��� � �C���  �@ �@ �  �� �@ �  � � ��@ � �����@ A ܀�  AEA� ��E�� Ł ��܁� ���AF܁ � �F�� ���F� E� F�\�� BKB�\� ���� L���BF�� M���� ��F��� N��A  AA �� A� �       game    maxTickTime    OnTick    GetElement 
   InfoFrame    ease    lua_sys    Linear_EaseNone         
   Animation    Sprite    visible    GetInt    SetInt       �?   xOffset    collectgarbage    collect    restart    FadeSprite    BotFadeSprite    setClipping 	   Clipping    absX    deviceScaleX    absY    deviceScaleY    absW    absH    step       4@    b   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         element     a      dt     a   
   topSprite 8   a   
   botSprite ;   a         OffsetTransition    transitionState    infoFrameEndX     �   �       E   K@� \@ A�  H   F�@ K � �@ \@�F�A K@� \@ D � F@� ��A  � �\@   � 	      manager    hideContextBar        @   FadedBG    DoStoredScript    Hide    ImageFrame    GetElement 
   InfoFrame        �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         element              transitionState    OffsetTransition     �   �     i   E   �@  \@ F�@ F�� �  \� K@� �� \@�F�A F � �@ \� K@� �� \@�F�B K�� �  \@�F�B F � �@ \� K@� �@ \@�F�C K�� �� \@�F�C F � �@ \� K@� �� \@�F D W@� ��F D F�� �  \� K�� \� �� ��F D K�� �� \@�F D F � �@ \� K@� �� \@�F�@ K � ��  \��K@� \� ��E �  ����@E�� @ @�F�E F � �  \� K@� �� \@�F@F F�� �  \� K@� �� \@�E� F � �� �@G\@ F�G K�� �� \@�F H W@� � �F H K�� �@ \@� � "      print 	   Show Bio    InfoContent    Text    visible    SetInt       �?
   InfoFrame    Touch    enabled 
   BioButton    DoStoredScript    enable            StatsButton    disable    LikesButton  	   UpSprite    GetInt    GetComponent    absH    GetElement 
   ScrollBar    Sprite    ScrollMarker    Marker    game    setShowBios    PersistentData_BIO 
   StatsList 
   hideStats 
   InfoLikes 
   hideLikes     i   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         element     h           �   �     Q   F @ F@� ��  \� K�� �  \@�F@A F�� �� \� K�� �  \@�F B K@� �� \@�F B F�� �� \� K�� �� \@�F C W@� ��F C K@� �� \@�F C F�� �� \� K�� �  \@�F�C K@� �� \@�F�C F�� �� \� K�� �� \@�F D F@� ��  \� K�� �  \@�F�D F�� ��  \� K�� �  \@�E  F@� �  ��E\@ F�E K@� �  \@�F@F W@� � �F@F K@� �� \@� �       InfoContent    Text    visible    SetInt         
   InfoFrame    Touch    enabled 
   BioButton    DoStoredScript    disable       �?   LikesButton     enable    StatsButton 
   ScrollBar    Sprite    ScrollMarker    Marker    game    setShowBios    PersistentData_LIKES 
   StatsList 
   hideStats 
   InfoLikes 
   showLikes     Q   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �         element     P                  Y   F @ F@� ��  \� K�� �  \@�F@A F�� �� \� K�� �  \@�F B K@� �� \@�F B F�� �� \� K�� �� \@�F C F@� ��  \� K�� �  \@�F�C F�� ��  \� K�� �  \@�F D W@� ��F D F�� ��  \� K�� \� �� ��F D K@� �� \@�F D F�� �� \� K�� �� \@�F E K@� �@ \@�F E F�� �� \� K�� �  \@�E� F�� �� � F\@ F@F K@� �� \@�F�F W@� � �F�F K@� �  \@� �       InfoContent    Text    visible    SetInt         
   InfoFrame    Touch    enabled 
   BioButton    DoStoredScript    disable       �?
   ScrollBar    Sprite    ScrollMarker    Marker    LikesButton  	   UpSprite    GetInt    StatsButton    enable    game    setShowBios    PersistentData_STATS 
   StatsList 
   showStats 
   InfoLikes 
   hideLikes     Y                                                                                 
  
  
  
  
  
  
  
  
  
  
                                                                                      element     X             '    
(   E   K@� ��  �  @  \��� � AA �� ��@  ���  ABA� �� ��  CE FB� �@  ���  CE FA��@ ��� �@ � � � �@���A �@D��D� �@� �       menu    addTemplateElement    template_minetime 	   leftStat 
   setParent    GetElement 
   InfoFrame    setOrientation    lua_sys    MenuOrientation               �   LEFT    TOP    setRelativeObjectAnchors    init    setPositionBroadcast    Swiper    DoStoredScript    refresh     (                                                             !  !  !  !  !  !  "  "  #  #  #  %  %  %  %  %  '        element     '   	   leftStat    '           *  >   F   E   F@� \�� ��  ���@ � A�@ �� ��A�  �@��   ��A�� �   � �EA F����B�CB BC�� ��C��\��@  @��  �@D� A� �  ���� EKAE �� \��@  ��EEA F���  ��  B EB F���B ��F\ �@  � GEA F���A ��F�@ �@G�@ ˀGB� �@���E ��G� HA �@� � "      game    bakeryTime            BlackCover    Sprite    height    SetInt    size    setSize    lua_sys    Vector2    x    y    screenHeight       G@      t@   menu    addTemplateElement    template_bakerytime 	   leftStat 
   setParent    GetElement 
   InfoFrame    setOrientation    MenuOrientation       �   LEFT    TOP    setRelativeObjectAnchors    init    setPositionBroadcast    Swiper    DoStoredScript    refresh     F   ,  ,  ,  .  .  /  /  /  /  /  /  /  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  3  3  3  3  3  3  5  5  5  5  5  6  6  6  6  6  6  6  6  6  6  6  6  7  7  7  7  7  7  8  8  9  9  9  <  <  <  <  <  >        element     E   	   timeLeft    E   
   faderSize       	   leftStat $   @         faderSprite     @  U   F   E   F@� \�� ��  ���@ � A�@ �� ��A�  �@��   ��A�� �   � �EA F����B�CB BC�� ��C��\��@  @��  �@D� A� �  ���� EKAE �� \��@  ��EEA F���  ��  B EB F���B ��F\ �@  � GEA F���A ��F�@ �@G�@ ˀGB� �@���E ��G� HA �@� � "      game    timeLeftToFuze            BlackCover    Sprite    height    SetInt    size    setSize    lua_sys    Vector2    x    y    screenHeight       G@      t@   menu    addTemplateElement    template_fuzertime 	   leftStat 
   setParent    GetElement 
   InfoFrame    setOrientation    MenuOrientation       �   LEFT    TOP    setRelativeObjectAnchors    init    setPositionBroadcast    Swiper    DoStoredScript    refresh     F   C  C  C  E  E  F  F  F  F  F  F  F  G  G  G  H  H  H  H  H  H  H  H  H  H  H  H  H  H  H  J  J  J  J  J  J  L  L  L  L  L  M  M  M  M  M  M  M  M  M  M  M  M  N  N  N  N  N  N  O  O  P  P  P  S  S  S  S  S  U        element     E   	   timeLeft    E   
   faderSize       	   leftStat $   @         faderSprite     X  l   F   E   F@� \�� ��  ���@ � A�@ �� ��A�  �@��   ��A�� �   � �EA F����B�CB BC�� ��C��\��@  @��  �@D� A� �  ���� EKAE �� \��@  ��EEA F���  ��  B EB F���B ��F\ �@  � GEA F���A ��F�@ �@G�@ ˀGB� �@���E ��G� HA �@� � "      game    timeLeftToBreed            BlackCover    Sprite    height    SetInt    size    setSize    lua_sys    Vector2    x    y    screenHeight       G@      t@   menu    addTemplateElement    template_breedingtime 	   leftStat 
   setParent    GetElement 
   InfoFrame    setOrientation    MenuOrientation       �   LEFT    TOP    setRelativeObjectAnchors    init    setPositionBroadcast    Swiper    DoStoredScript    refresh     F   Z  Z  Z  \  \  ]  ]  ]  ]  ]  ]  ]  ^  ^  ^  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  a  a  a  a  a  a  c  c  c  c  c  d  d  d  d  d  d  d  d  d  d  d  d  e  e  e  e  e  e  f  f  g  g  g  j  j  j  j  j  l        element     E   	   timeLeft    E   
   faderSize       	   leftStat $   @         faderSprite     o  �   F   E   F@� \�� ��  ���@ � A�@ �� ��A�  �@��   ��A�� �   � �EA F����B�CB BC�� ��C��\��@  @��  �@D� A� �  ���� EKAE �� \��@  ��EEA F���  ��  B EB F���B ��F\ �@  � GEA F���A ��F�@ �@G�@ ˀGB� �@���E ��G� HA �@� � "      game    timeLeftToHatchEgg            BlackCover    Sprite    height    SetInt    size    setSize    lua_sys    Vector2    x    y    screenHeight       G@      t@   menu    addTemplateElement    template_nurserytime 	   leftStat 
   setParent    GetElement 
   InfoFrame    setOrientation    MenuOrientation       �   LEFT    TOP    setRelativeObjectAnchors    init    setPositionBroadcast    Swiper    DoStoredScript    refresh     F   q  q  q  r  r  s  s  s  s  s  s  s  t  t  t  u  u  u  u  u  u  u  u  u  u  u  u  u  u  u  w  w  w  w  w  w  y  y  y  y  y  z  z  z  z  z  z  z  z  z  z  z  z  {  {  {  {  {  {  |  |  }  }  }  �  �  �  �  �  �        element     E   	   timeLeft    E   
   faderSize       	   leftStat $   @         faderSprite     �  �   
A   E   F@� \�� Z   ��E�  K�� �  A @  \����� �A � ��@  �@� � �BA � �A � �CE� F�� �@  � � � �CE� F���@ �@� �@ ��� � �@���F�D F � �@ \� K�� �  \@�D   K�� \� �   � F� AFF�� ��� Ł ��܁� ����ρ�����@   �       game    showTorchTime    menu    addTemplateElement    template_torchtime 	   leftStat 
   setParent    GetElement 
   InfoFrame    setOrientation    lua_sys    MenuOrientation               �   LEFT    TOP    setRelativeObjectAnchors    init    setPositionBroadcast    BlackCover    Sprite    height    SetInt    size    setSize    Vector2    x    y    screenHeight       G@      t@    A   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        element     @   	   leftStat    '   
   faderSize 2   @         faderSprite     �  �    
�  F @ �@  ��@��� �    f�� � ��  �� � AA EA  F��\�� A�@��@  ��A��� �@  � �� @��@  �@B��� �    �� � �� �� � AA  �B� �@  � � �� �@C�� ���� E �A ��D��� ����D�A Ɓ�܁� �����\��@  � E E �� �� �AE��E�� ܁ �A�ρ�B �D�� ���D��\��@   M��@  � F��� �@   ��@  �@F��� �    ��@  ��F��� �@  ���@  ��F��� �    ��@  �@F��� �@  @�� � �� �� � A �@�� � �@ �� ��G� �@�� � �� �@C�� ���� E �A  �AH��� ���A  �A�܁� ��\��@  � E E �� �� �AE��E�� ܁ �A�ρ�� � BC�H��\��@  @;�� � �� �� � A� �@����  EA  FA�\�� NA��A  �AH��� �����@  � E  K� \� FA�O���� �� �AC��E�A  �A�܁� ��������@  @2��@  ��A��� �@  ƀ�� ��� � ��  �� � AA EA  F��\�� A�@�� � �� �� � AA  J� �@  ���  EA  FA�\�� NA���A  �AH��� ������@  � E  K� \� FA�O���� �� �AC��E�� ܁ �A�ρ�����@  �$��@  ��A��� �@  ���� �	�� � �� �� � AA  K�� AK �@  ���  EA  FA�\�� NA��A  �AH��� �����@  � E  K� \� FA�O���� �� �AC��E�� ܁ �A�ρ�����@  ��� � �� �� � AA  �B� �@  �@  ��A��� �@  ����  ��@  � L�   �@ @��@  �@L��� �    �� � �� �� ��GA  AH�� ���@����  EA  FA�\�� NA��A  �AH��� �����@  �@  � M�@  �@�� � ��  �    ��@  ��M�@  �@�� � ��  �    �� � �� �� ��GA  AH�� ���@����  EA  FA�\�� NA��A  �AH��� �����@  � E  K� \� FA�O���� �� �AC��E�A  �A�܁� ��������@  �@  �@N��� �   ���@  �@M��� �@  ƀ�  ܀ A  �N@� ��A��@  ��A��� �@  � ��  ��@  �@O��� ˀ� A� � �AP���@ � � �� �� ��G� �@�� � �  �� � AA �@� � F      Sprite    game    isObjectSelected    animationName 
   SetString 	   xml_bin/    objectAnim    selectedObjType    SpecificEntityType_CASTLE    isTribalIsland 
   animation    objectStoreAnim    size    y      �V@	   setScale    Vector2    lua_sys    screenHeight       t@   setOrientationPosition    x        @      .@!   selectedObjectIsActiveBoxMonster    selectedIsEvolvedMonster    isAmberIsland    isCelestialIsland 	   Activate 	   pingpong    SetInt       �?     �p@   menuScaleX 333333@   Store       �?	   hudScale    SpecificEntityType_CRUCIBLE    getCrucibleAnimFile    getSelectedCrucibleCurAnim 333333�?      @   SpecificEntityType_AWAKENER    SelectedObject    getClosedAnim       �?   SpecificEntityType_BUDDY    tintInfoBuddy 
   isDipster    yOffset       $@   isBoxMonster    selectedMonsterId    isEpicMonster       4@333333�?   selectedObjIsMonster    getEquippedCostumeForMonster    applyCostumeToAnimComponent    SpecificEntityType_ATTUNER    activeAttunerGene 	   AddRemap    window_placeholder_01.png    gfx/attuner_windows/    attunerGraphic    visible            layer    PopUps     �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        self     �  
   component    �     scale (   H      scale r   �      selectedMonsterId �  �     equippedCostume �  �     activeAttunerGene �  �          �  �    	M   F @ �@  ��@��� W�@@�� �  ܀ �@�A� �A  ��A��� U���@�� �  ܀ �@�@ �@�� � A ܀ ˀ�EA  F��\�� NA��@��@� E� �A  ��B��� �����A  ���܁� ����\��@  � D E� �A� �� ��D��D�A� ܁ �����B  BE�� ���\��@  �@  ���܀� A  F@�� EA  FA��� � \A�K�� \A K�� \A  �       Sprite    game    getDipsterShenanigans        animationName 
   SetString 	   xml_bin/    objectAnim 
   animation    yOffset    SetInt    menuScaleX       5@	   setScale    Vector2       �?   setOrientationPosition    size    x        @   y 	   hudScale       .@   selectedMonsterId    getEquippedCostumeForMonster    applyCostumeToAnimComponent    Stop    Play     M   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        self     L   
   component    L      s    L      selectedMonsterId ?   L      equippedCostume C   L       D                        	                              i   i   i   i   i   i   i   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �       '  '  >  >  >  U  U  U  l  l  l  �  �  �  �  �  �  �  �  �  �  �  �            OffsetTransition    C      ObjectInfo    C      transitionState    C      fader    C      faderSprite    C      infoFrameEndX    C      infoFrameEndY    C       