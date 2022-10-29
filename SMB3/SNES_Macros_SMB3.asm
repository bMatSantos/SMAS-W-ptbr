; [BR]
macro CUSTOMDATA_SMB3_DrawTLCredits(Address)
namespace SMB3_DrawTLCredits
%InsertMacroAtXPosition(<Address>)

OAMTable_2021:
	;    X,Tile/ X,Tile/ ...
	db $30,$00,$35,$01
	db $3E,$02,$46,$03,$4E,$02,$56,$04
	db $65,$06,$6D,$07,$75,$08,$7D,$09,$85,$0A,$8D,$0B,$95,$0C,$9D,$0D
	db $A5,$05,$AB,$10,$B3,$11,$BB,$12,$C3,$13,$CB,$14

OAMTable_2022:
	db $3E,$02,$46,$03,$4E,$02,$56,$02
	db $65,$06,$6D,$07,$75,$08,$7D,$09,$85,$0A,$8D,$0B,$95,$0C,$9D,$0D
.End:

Main:
	SEP.b #$20
	LDX.b #$00												; Data counter
	LDY.b #$1D*4											; OAM offset
-:
	LDA.l OAMTable_2021,x
	STA.w SMB3_OAMBuffer[$00].XDisp,y
	LDA.l OAMTable_2021+1,x
	STA.w SMB3_OAMBuffer[$00].Tile,y

	; If X has reached the 2022 data, use the 2nd line value
	CPX.b #OAMTable_2022-OAMTable_2021
	BCS.b Ypos_2ndLine
	; Otherwise use the 1st line value
	LDA.b #$09
	BRA.b +
Ypos_2ndLine:
	LDA.b #$11
+:
	STA.w SMB3_OAMBuffer[$00].YDisp,y
	
	LDA.b #$3D
	STA.w SMB3_OAMBuffer[$00].Prop,y

	INX #2
	INY #4
	CPX.b #OAMTable_2022_End-OAMTable_2021
	BCC.b -
	RTS
namespace off
endmacro

;#############################################################################################################
;#############################################################################################################

; COURSE CLEAR !
macro CUSTOMDATA_SMB3_CourseClearTextData_Top(Address)
%InsertMacroAtXPosition(<Address>)
	db $00,$1F										; Header bytes 3 and 4 (direction, RLE, length)
	db $F0,$02,$D0,$02,$D2,$02,$D3,$02,$FD,$00
	db $D4,$02,$DB,$02,$DE,$02,$D4,$02,$D9,$02,$D8,$02,$F3,$02,$D6,$02
	db $D0,$02,$FD,$00,$DC,$02
endmacro

macro CUSTOMDATA_SMB3_CourseClearTextData_Bottom(Address)
%InsertMacroAtXPosition(<Address>)
	db $00,$1F										; Header bytes 3 and 4 (direction, RLE, length)
	db $F1,$02,$E0,$02,$E2,$02,$E3,$02,$FD,$00
	db $E4,$02,$EB,$02,$EE,$02,$E4,$02,$E9,$02,$E8,$02,$F4,$02,$E6,$02
	db $E0,$02,$FD,$00,$EC,$02
endmacro

; YOU GOT A CARD [  ]
macro CUSTOMDATA_SMB3_YouGotACardTextData_Top(Address)
%InsertMacroAtXPosition(<Address>)
	db $00,$27										; Header bytes 3 and 4 (direction, RLE, length)
	db $D5,$02,$D0,$02,$DE,$02,$F2,$02,$DB,$02,$D8,$02,$FD,$00
	db $DB,$02,$FD,$00,$DF,$02,$D0,$02,$F4,$82,$DE,$02,$D3,$02,$D9,$02
	db $FD,$00,$83,$02,$FE,$00,$FE,$00,$83,$42
endmacro
macro CUSTOMDATA_SMB3_YouGotACardTextData_Bottom(Address)
%InsertMacroAtXPosition(<Address>)
	db $00,$27										; Header bytes 3 and 4 (direction, RLE, length)
	db $E5,$02,$E0,$02,$EE,$02,$F2,$82,$EB,$02,$E8,$02,$FD,$00
	db $EB,$02,$FD,$00,$EF,$02,$E0,$02,$F4,$02,$EE,$02,$E3,$02,$E9,$02
	db $FD,$00,$83,$02,$FE,$00,$FE,$00,$83,$42
endmacro 