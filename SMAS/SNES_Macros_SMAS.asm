;#############################################################################################################

macro CUSTOMDATA_SMAS_PauseMenuLettersData(Address)
%InsertMacroAtXPosition(<Address>)
	db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
	db $14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$AA,$AA,$AA,$AA,$AA,$AA
	db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
	db $28,$29,$2A,$2B,$26,$2C,$33,$34,$35,$36,$37,$38,$39,$3A,$27
	db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
	db $28,$29,$2A,$2B,$26,$2C,$24,$25,$26,$27,$AA,$AA,$AA,$AA,$AA,$FF
endmacro

;#############################################################################################################
; ALL-STARS+WORLD

macro CUSTOMDATA_SMASW_TitleScreenCopyright(Address)
namespace SMASW_CUSTOM_TitleScreenCopyright
%InsertMacroAtXPosition(<Address>)
Main:
	incbin "Graphics/TitleScreenTextGFX_SMASW_Copyright_br.bin"
End:
namespace off
endmacro

; --------------------------------------------------

macro INLINECUSTOM_SMASW_br_DrawTitleScreenLogo()
; ScratchRAM00: Leftmost X position
; ScratchRAM01: Top Y position
; ScratchRAM02: Property byte
; ScratchRAM0A: Total of sprites.
	PHB
	PHK
	PLB
	REP.b #$10
	LDX.w #$0000
	LDY.w #$0000

; "+" (plus sign)
	LDA.b #$58
	STA.b !RAM_SMAS_Global_ScratchRAM00
	LDA.b #$43
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #$22
	STA.b !RAM_SMAS_Global_ScratchRAM02
	LDA.b #$01
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawBigSprites

	LDA.b #$20
	STA.b !RAM_SMAS_Global_ScratchRAM02

; "SUPER MARIO" sprites (16x16)
	LDA.b #$3A
	STA.b !RAM_SMAS_Global_ScratchRAM00
	LDA.b #$14
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Big_SuperMario_End-Big_SuperMario
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawBigSprites
	
; "ALL-STARS" sprites (16x16)
	LDA.b #$2A
	STA.b !RAM_SMAS_Global_ScratchRAM00
	PHA									; As this is the leftmost X value, it gets pushed to the stack a couple of times in the routine.
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	CLC
	ADC.b #$10
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Big_AllStars_Row2-Big_AllStars
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawBigSprites
	
	; 2nd row
	PLA									; Same value as above.
	STA.b !RAM_SMAS_Global_ScratchRAM00
	PHA
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	CLC
	ADC.b #$10
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Big_AllStars_End-Big_AllStars_Row2
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawBigSprites

; "ALL-STARS" sprites (8x8)
	PLA									; Same value as above.
	STA.b !RAM_SMAS_Global_ScratchRAM00
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	CLC
	ADC.b #$10
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Small_AllStars_Pt2-Small_AllStars
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawSmallSprites

	LDA.b #$C2
	STA.b !RAM_SMAS_Global_ScratchRAM00
	LDA.b #Small_AllStars_End-Small_AllStars_Pt2
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawSmallSprites

	LDA.b #$22
	STA.b !RAM_SMAS_Global_ScratchRAM02

; "SUPER" sprites (16x16)
	LDA.b #$6A
	STA.b !RAM_SMAS_Global_ScratchRAM00
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	SEC
	SBC.b #$05
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Big_Super_End-Big_Super
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawBigSprites

; "MARIO WORLD" sprites (16x16)
	LDA.b #$3A
	STA.b !RAM_SMAS_Global_ScratchRAM00
	PHA
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	CLC
	ADC.b #$18
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Big_MarioWorld_End-Big_MarioWorld
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawBigSprites

; "MARIO WORLD" sprites (8x8)
	PLA									; Same value as above.
	STA.b !RAM_SMAS_Global_ScratchRAM00
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	SEC
	SBC.b #$08
	STA.b !RAM_SMAS_Global_ScratchRAM01
	LDA.b #Small_SuperMarioWorld_End-Small_SuperMarioWorld
	STA.b !RAM_SMAS_Global_ScratchRAM0A
	JSR.w DrawSmallSprites

	SEP.b #$10
	PLB
	RTS

DrawBigSprites:
	LDA.b !RAM_SMAS_Global_ScratchRAM00
	STA.w SMAS_Global_OAMBuffer[$00].XDisp,y
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	STA.w SMAS_Global_OAMBuffer[$00].YDisp,y
	LDA.w LogoTileData,x
	STA.w SMAS_Global_OAMBuffer[$00].Tile,y
	LDA.b !RAM_SMAS_Global_ScratchRAM02
	STA.w SMAS_Global_OAMBuffer[$00].Prop,y

	LDA.b #$02
	STA.w SMAS_Global_OAMTileSizeBuffer[$00].Slot,x

	LDA.b !RAM_SMAS_Global_ScratchRAM00	;\ X position increment
	CLC									;|
	ADC.b #$10							;|
	STA.b !RAM_SMAS_Global_ScratchRAM00	;/
	INY #4
	INX

	DEC.b !RAM_SMAS_Global_ScratchRAM0A
	BNE.b DrawBigSprites
	RTS

DrawSmallSprites:
	LDA.b !RAM_SMAS_Global_ScratchRAM00
	STA.w SMAS_Global_OAMBuffer[$00].XDisp,y
	LDA.b !RAM_SMAS_Global_ScratchRAM01
	STA.w SMAS_Global_OAMBuffer[$00].YDisp,y
	LDA.w LogoTileData,x
	STA.w SMAS_Global_OAMBuffer[$00].Tile,y
	LDA.b !RAM_SMAS_Global_ScratchRAM02
	STA.w SMAS_Global_OAMBuffer[$00].Prop,y

	STZ.w SMAS_Global_OAMTileSizeBuffer[$00].Slot,x

	LDA.b !RAM_SMAS_Global_ScratchRAM00	;\ X position increment
	CLC									;|
	ADC.b #$08							;|
	STA.b !RAM_SMAS_Global_ScratchRAM00	;/
	INY #4
	INX

	DEC.b !RAM_SMAS_Global_ScratchRAM0A
	BNE.b DrawSmallSprites
	RTS

LogoTileData:
Plus:
	db $00
Big_SuperMario:
	db $02,$04,$06,$08,$0A,$0C,$0E,$70
	.End:
Big_AllStars:
	db $20,$22,$24,$26,$28,$2A,$2C,$2E,$90,$92,$94
	.Row2:
	db $40,$42,$44,$46,$48,$4A,$4C,$4E,$B0,$B2,$B4
	.End:
Small_AllStars:
	db $60,$61,$62,$63,$64
	.Pt2:
	db $D3,$D4
	.End:
Big_Super:
	db $65,$67,$69,$6B
	.End:
Big_MarioWorld:
	db $96,$98,$9A,$9C,$9E,$B6,$B8,$BA,$BC
	.End:
Small_SuperMarioWorld:
	db $72,$73,$74,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E
	db $8F
	.End:

endmacro