; XX|Y|Z

if !Define_Global_ROMToAssemble == !ROM_SMW_J
	dw $0000 ;00
	dw $4452 ;01
	dw $4453 ;02
	dw $2290 ;03
	dw $2207 ;04
	dw $6203 ;05
	dw $6204 ;06
	dw $2209 ;07
	dw $6240 ;08
	dw $6202 ;09
	dw $4251 ;0A
	dw $2406 ;0B
	dw $6501 ;0C
	dw $6502 ;0D
	dw $2709 ;0E
	dw $6601 ;0F
	dw $6701 ;10
	dw $7000 ;11
	dw $6F00 ;12
	dw $2208 ;13
	dw $7230 ;14
	dw $6201 ;15
	dw $6F00 ;16
	dw $0000 ;17
	dw $2A60 ;18
	dw $0000 ;19
	dw $2909 ;1A
	dw $2906 ;1B
	dw $6905 ;1C
	dw $6904 ;1D
	dw $6F00 ;1E
	dw $2806 ;1F
	dw $2809 ;20
	dw $2907 ;21
	dw $6901 ;22
	dw $6903 ;23
	dw $6902 ;24
	dw $2109 ;101
	dw $6104 ;102
	dw $6103 ;103
	dw $6E00 ;104
	dw $6101 ;105
	dw $6102 ;106
	dw $2307 ;107
	dw $6F00 ;108
	dw $4351 ;109
	dw $6303 ;10A
	dw $4252 ;10B
	dw $6F00 ;10C
	dw $6C00 ;10D
	dw $6D00 ;10E
	dw $6B04 ;10F
	dw $2B09 ;110
	dw $2B06 ;111
	dw $0000 ;112
	dw $6B03 ;113
	dw $2B07 ;114
	dw $6B02 ;115
	dw $6B01 ;116
	dw $4951 ;117
	dw $6302 ;118
	dw $6304 ;119
	dw $6301 ;11A
	dw $6310 ;11B
	dw $2309 ;11C
	dw $2807 ;11D
	dw $6801 ;11E
	dw $6804 ;11F
	dw $6802 ;120
	dw $6820 ;121
	dw $4851 ;122
	dw $6803 ;123
	dw $6F00 ;124
	dw $00DA ;125
	dw $00DA ;126
	dw $40CA ;127
	dw $40CA ;128
	dw $6F00 ;129
	dw $60AA ;12A
	dw $60AA ;12B
	dw $60BA ;12C
	dw $60BA ;12D
	dw $6F00 ;12E
	dw $6F00 ;12F
	dw $7102 ;130
	dw $6F00 ;131
	dw $7103 ;132
	dw $6F00 ;133
	dw $7101 ;134
	dw $7104 ;135
	dw $7105 ;136
	dw $6F00 ;137
	dw $6F00 ;138
elseif !Define_Global_HackROMToAssemble&(!ROM_HACK_SMW_br|!ROM_HACK_SMASW_br) != $00 ;[BR]
	dw SMW_CUSTOM_LevelNamesLong_Strings_None ;00
	dw SMW_CUSTOM_LevelNamesLong_Strings_001
	dw SMW_CUSTOM_LevelNamesLong_Strings_002
	dw SMW_CUSTOM_LevelNamesLong_Strings_003
	dw SMW_CUSTOM_LevelNamesLong_Strings_004
	dw SMW_CUSTOM_LevelNamesLong_Strings_005
	dw SMW_CUSTOM_LevelNamesLong_Strings_006
	dw SMW_CUSTOM_LevelNamesLong_Strings_007
	dw SMW_CUSTOM_LevelNamesLong_Strings_008
	dw SMW_CUSTOM_LevelNamesLong_Strings_009
	dw SMW_CUSTOM_LevelNamesLong_Strings_00A
	dw SMW_CUSTOM_LevelNamesLong_Strings_00B
	dw SMW_CUSTOM_LevelNamesLong_Strings_00C
	dw SMW_CUSTOM_LevelNamesLong_Strings_00D
	dw SMW_CUSTOM_LevelNamesLong_Strings_00E
	dw SMW_CUSTOM_LevelNamesLong_Strings_00F
	dw SMW_CUSTOM_LevelNamesLong_Strings_010
	dw SMW_CUSTOM_LevelNamesLong_Strings_011
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;12
	dw SMW_CUSTOM_LevelNamesLong_Strings_013
	dw SMW_CUSTOM_LevelNamesLong_Strings_014
	dw SMW_CUSTOM_LevelNamesLong_Strings_015
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;16
	dw SMW_CUSTOM_LevelNamesLong_Strings_MortonsGarbage ;17
	dw SMW_CUSTOM_LevelNamesLong_Strings_018
	dw SMW_CUSTOM_LevelNamesLong_Strings_MortonsGarbage ;19
	dw SMW_CUSTOM_LevelNamesLong_Strings_01A
	dw SMW_CUSTOM_LevelNamesLong_Strings_01B
	dw SMW_CUSTOM_LevelNamesLong_Strings_01C
	dw SMW_CUSTOM_LevelNamesLong_Strings_01D
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;1E
	dw SMW_CUSTOM_LevelNamesLong_Strings_01F
	dw SMW_CUSTOM_LevelNamesLong_Strings_020
	dw SMW_CUSTOM_LevelNamesLong_Strings_021
	dw SMW_CUSTOM_LevelNamesLong_Strings_022
	dw SMW_CUSTOM_LevelNamesLong_Strings_023
	dw SMW_CUSTOM_LevelNamesLong_Strings_024
	dw SMW_CUSTOM_LevelNamesLong_Strings_101 ;25
	dw SMW_CUSTOM_LevelNamesLong_Strings_102 ;26
	dw SMW_CUSTOM_LevelNamesLong_Strings_103 ;27
	dw SMW_CUSTOM_LevelNamesLong_Strings_104 ;28
	dw SMW_CUSTOM_LevelNamesLong_Strings_105 ;29
	dw SMW_CUSTOM_LevelNamesLong_Strings_106 ;2A
	dw SMW_CUSTOM_LevelNamesLong_Strings_107 ;2B
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;2C (Lv. 108)
	dw SMW_CUSTOM_LevelNamesLong_Strings_109 ;2D
	dw SMW_CUSTOM_LevelNamesLong_Strings_10A ;2E
	dw SMW_CUSTOM_LevelNamesLong_Strings_10B ;2F
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;30 (Lv. 10C)
	dw SMW_CUSTOM_LevelNamesLong_Strings_10D ;31
	dw SMW_CUSTOM_LevelNamesLong_Strings_10E ;32
	dw SMW_CUSTOM_LevelNamesLong_Strings_10F ;33
	dw SMW_CUSTOM_LevelNamesLong_Strings_110 ;34
	dw SMW_CUSTOM_LevelNamesLong_Strings_111 ;35
	dw SMW_CUSTOM_LevelNamesLong_Strings_None ;36 (Lv. 112)
	dw SMW_CUSTOM_LevelNamesLong_Strings_113 ;37
	dw SMW_CUSTOM_LevelNamesLong_Strings_114 ;38
	dw SMW_CUSTOM_LevelNamesLong_Strings_115 ;39
	dw SMW_CUSTOM_LevelNamesLong_Strings_116 ;3A
	dw SMW_CUSTOM_LevelNamesLong_Strings_117 ;3B
	dw SMW_CUSTOM_LevelNamesLong_Strings_118 ;3C
	dw SMW_CUSTOM_LevelNamesLong_Strings_119 ;3D
	dw SMW_CUSTOM_LevelNamesLong_Strings_11A ;3E
	dw SMW_CUSTOM_LevelNamesLong_Strings_11B ;3F
	dw SMW_CUSTOM_LevelNamesLong_Strings_11C ;40
	dw SMW_CUSTOM_LevelNamesLong_Strings_11D ;41
	dw SMW_CUSTOM_LevelNamesLong_Strings_11E ;42
	dw SMW_CUSTOM_LevelNamesLong_Strings_11F ;43
	dw SMW_CUSTOM_LevelNamesLong_Strings_120 ;44
	dw SMW_CUSTOM_LevelNamesLong_Strings_121 ;45
	dw SMW_CUSTOM_LevelNamesLong_Strings_122 ;46
	dw SMW_CUSTOM_LevelNamesLong_Strings_123 ;47
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;48 (Lv. 124)
	dw SMW_CUSTOM_LevelNamesLong_Strings_125 ;49
	dw SMW_CUSTOM_LevelNamesLong_Strings_126 ;4A
	dw SMW_CUSTOM_LevelNamesLong_Strings_127 ;4B
	dw SMW_CUSTOM_LevelNamesLong_Strings_128 ;4C
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;4D (Lv. 129)
	dw SMW_CUSTOM_LevelNamesLong_Strings_12A ;4E
	dw SMW_CUSTOM_LevelNamesLong_Strings_12B ;4F
	dw SMW_CUSTOM_LevelNamesLong_Strings_12C ;50
	dw SMW_CUSTOM_LevelNamesLong_Strings_12D ;51
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;52 (Lv. 12E)
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;53 (Lv. 12F)
	dw SMW_CUSTOM_LevelNamesLong_Strings_130 ;54
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;55 (Lv. 131)
	dw SMW_CUSTOM_LevelNamesLong_Strings_132 ;56
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;57 (Lv. 133)
	dw SMW_CUSTOM_LevelNamesLong_Strings_134 ;58
	dw SMW_CUSTOM_LevelNamesLong_Strings_135 ;59
	dw SMW_CUSTOM_LevelNamesLong_Strings_136 ;5A
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;5B (Lv. 137)
	dw SMW_CUSTOM_LevelNamesLong_Strings_StarRoads ;5C (Lv. 138)
else
	dw $0000 ;00
	dw $0D72 ;01
	dw $0D73 ;02
	dw $0C00 ;03
	dw $0A60 ;04
	dw $0A53 ;05
	dw $0A54 ;06
	dw $0440 ;07
	dw $0B30 ;08
	dw $0A52 ;09
	dw $0A71 ;0A
	dw $0D90 ;0B
	dw $1101 ;0C
	dw $1102 ;0D
	dw $0640 ;0E
	dw $1207 ;0F
	dw $1400 ;10
	dw $1300 ;11
	dw $02C0 ;12
	dw $0A7C ;13
	dw $0E33 ;14
	dw $0A51 ;15
	dw $02C0 ;16
	dw $0453 ;17
	dw $1800 ;18
	dw $0453 ;19
	dw $0840 ;1A
	dw $1690 ;1B
	dw $1625 ;1C
	dw $1624 ;1D
	dw $02C0 ;1E
	dw $1590 ;1F
	dw $0740 ;20
	dw $1700 ;21
	dw $1621 ;22
	dw $1623 ;23
	dw $1622 ;24
	dw $0340 ;25- 101
	dw $0124 ;26- 102
	dw $0123 ;27- 103
	dw $0110 ;28- 104
	dw $0121 ;29- 105
	dw $0122 ;2A- 106
	dw $0D60 ;2B- 107
	dw $02C0 ;2C- 108
	dw $0D71 ;2D- 109
	dw $0D83 ;2E- 10A
	dw $0A72 ;2F- 10B
	dw $02C0 ;30- 10C
	dw $1B00 ;31- 10D
	dw $1A00 ;32- 10E
	dw $19B4 ;33- 10F
	dw $0940 ;34- 110
	dw $1990 ;35- 111
	dw $0000 ;36- 112
	dw $19B3 ;37- 113
	dw $1960 ;38- 114
	dw $19B2 ;39- 115
	dw $19B1 ;3A- 116
	dw $1670 ;3B- 117
	dw $0D82 ;3C- 118
	dw $0D84 ;3D- 119
	dw $0D81 ;3E- 11A
	dw $0F30 ;3F- 11B
	dw $0540 ;40- 11C
	dw $1560 ;41- 11D
	dw $15A1 ;42- 11E
	dw $15A4 ;43- 11F
	dw $15A2 ;44- 120
	dw $1030 ;45- 121
	dw $1577 ;46- 122
	dw $15A3 ;47- 123
	dw $02C0 ;48- 124
	dw $000B ;49- 125
	dw $000A ;4A- 126
	dw $0009 ;4B- 127
	dw $0008 ;4C- 128
	dw $02C0 ;4D- 129
	dw $1C00 ;4E- 12A
	dw $1D00 ;4F- 12B
	dw $1E00 ;50- 12C
	dw $00E0 ;51- 12D
	dw $02C0 ;52- 12E
	dw $02C0 ;53- 12F
	dw $02D2 ;54- 130
	dw $02C0 ;55- 131
	dw $02D3 ;56- 132
	dw $02C0 ;57- 133
	dw $02D1 ;58- 134
	dw $02D4 ;59- 135
	dw $02D5 ;5A- 136
	dw $02C0 ;5B- 137
	dw $02C0 ;5C- 138
endif