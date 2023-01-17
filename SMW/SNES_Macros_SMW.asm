
;---------------------------------------------------------------------------

macro SMW_InsertOriginalLevelData(LevelName, VerDif, Data)
if stringsequal("<Data>", "LAYER_1")
	!ReadFileDataOffset = $0048
	!ReadFileSize = $004C
elseif stringsequal("<Data>", "LAYER_2")
	!ReadFileDataOffset = $0050
	!ReadFileSize = $0054
elseif stringsequal("<Data>", "SPRITES")
	!ReadFileDataOffset = $0058
	!ReadFileSize = $005C
else
	error "<Data> is not a valid level data type"
endif

if !ROM_<VerDif> != !ROM_SMW_U
	if !Define_Global_ROMToAssemble&(!ROM_<VerDif>) != $00
		!TEMP = <LevelName>_<VerDif>
	else
		!TEMP = <LevelName>
	endif
else
	!TEMP = <LevelName>
endif

!ReadFileDataOffset #= ((readfile2("levels/!TEMP.mwl", !ReadFileDataOffset))+$08)
!ReadFileSize #= (!ReadFileDataOffset+((readfile2("levels/!TEMP.mwl", !ReadFileSize))-$08))
incbin "levels/!TEMP.mwl":(!ReadFileDataOffset)-(!ReadFileSize)
endmacro

;---------------------------------------------------------------------------

macro SMW_AnimationTileset(Num)
	db ((SMW_LevelTileAnimations_FrameData_Local<Num>-SMW_LevelTileAnimations_FrameData_Local0)/(SMW_LevelTileAnimations_FrameData_Local1-SMW_LevelTileAnimations_FrameData_Local0)*$05)
endmacro

;---------------------------------------------------------------------------

macro SMW_LMStyleAnimationFrames(Frame1, Frame2, Frame3, Frame4)
if $<Frame1> < $0600
	!Frame1 = !RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame1> <= $087F
	!Frame1 = (($<Frame1>-$0600)*$20)+!RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame1> <= $08FF
	!Frame1 = !RAM_SMW_Graphics_DecompressedGFX32
elseif $<Frame1> <= $0BE4
	!Frame1 = (($<Frame1>-$0900)*$20)+!RAM_SMW_Graphics_DecompressedGFX32
else
	!Frame1 = !RAM_SMW_Graphics_DecompressedGFX33
endif
if $<Frame2> < $0600
	!Frame2 = !RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame2> <= $087F
	!Frame2 = (($<Frame2>-$0600)*$20)+!RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame2> <= $08FF
	!Frame2 = !RAM_SMW_Graphics_DecompressedGFX32
elseif $<Frame2> <= $0BE4
	!Frame2 = (($<Frame2>-$0900)*$20)+!RAM_SMW_Graphics_DecompressedGFX32
else
	!Frame2 = !RAM_SMW_Graphics_DecompressedGFX33
endif
if $<Frame3> < $0600
	!Frame3 = !RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame3> <= $087F
	!Frame3 = (($<Frame3>-$0600)*$20)+!RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame3> <= $08FF
	!Frame3 = !RAM_SMW_Graphics_DecompressedGFX32
elseif $<Frame3> <= $0BE4
	!Frame3 = (($<Frame3>-$0900)*$20)+!RAM_SMW_Graphics_DecompressedGFX32
else
	!Frame3 = !RAM_SMW_Graphics_DecompressedGFX33
endif
if $<Frame4> < $0600
	!Frame4 = !RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame4> <= $087F
	!Frame4 = (($<Frame4>-$0600)*$20)+!RAM_SMW_Graphics_DecompressedGFX33
elseif $<Frame4> <= $08FF
	!Frame4 = !RAM_SMW_Graphics_DecompressedGFX32
elseif $<Frame4> <= $0BE4
	!Frame4 = (($<Frame4>-$0900)*$20)+!RAM_SMW_Graphics_DecompressedGFX32
else
	!Frame4 = !RAM_SMW_Graphics_DecompressedGFX33
endif
	dw !Frame1
	dw !Frame2
	dw !Frame3
	dw !Frame4
endmacro

;---------------------------------------------------------------------------

!UP = $03
!DOWN = $02
!LEFT = $01
!RIGHT = $00
!END = $FF

macro SMW_CreateEatBlockPath(Direction, Blocks)
if !<Direction> != $FF
	if <Blocks> < $000F
		db ((<Blocks>&$01FF)<<4)+(!<Direction>&$03)
	else
		!LoopCounter = ((<Blocks>&$01FF)/$0F)
		assert <Blocks> < $0200,"512 tiles is more than enough distance for the Create/Eat Block to travel in one direction."
		assert <Blocks> > $0000,"You can't set the Create/Eat Block to move 0 tiles!"
		while !LoopCounter > 0
			db $F0+(!<Direction>&$03)
			!LoopCounter #= !LoopCounter-$01
		endif
		if (((<Blocks>&$01FF)/$0F)*$0F) != (<Blocks>&$01FF)
			db (((<Blocks>&$01FF)-(((<Blocks>&$01FF)/$0F)*$0F))<<4)+(!<Direction>&$03)
		endif
	endif
else
	db $FF
endif
endmacro

;---------------------------------------------------------------------------

macro SMW_INCGFX(graphic)
SMW_<graphic>:
if !Define_Global_ROMToAssemble&(!ROM_SMW_J) != $00
	incbin "GFX/SMW_J/<graphic>.lz1"
elseif !Define_Global_ROMToAssemble&(!ROM_SMW_E2|!ROM_SMASW_E) != $00
	incbin "GFX/SMW_E2/<graphic>.lz1"
else
	incbin "GFX/SMW_U/<graphic>.lz2"
endif
<graphic>End:
endmacro

;[BR] Separate macro so that only some of the graphics gets replaced.
macro SMW_INCGFX_BR(graphic)
SMW_<graphic>:
	incbin "GFX/Custom/SMW_br/<graphic>.cbn"
<graphic>End:
endmacro

;---------------------------------------------------------------------------

macro SMW_InsertOriginalFreespace(ROMID, RtNum)
;print "!<ROMID>Bytes bytes of freespace located at: !<ROMID>OrgLoc"
if !Define_Global_ROMToAssemble&(!ROM_SMW_E1|!ROM_SMW_E2|!ROM_SMW_ARCADE) != $00
	%InsertVersionExclusiveFile(incbin, Misc/GarbageData<RtNum>_, !ROMID.bin, )
else
	fillbyte $FF : fill !<ROMID>Bytes
endif
endmacro

;---------------------------------------------------------------------------
;[BR] NEW MACROS

macro ROUTINE_CUSTOM_FixScreenTiming(Address)
namespace SMW_CUSTOM_FixScreenTiming
%InsertMacroAtXPosition(<Address>)
Main:
	LDA.w !REGISTER_HVBlankFlagsAndJoypadStatus
	AND.b #(!HVBlankFlagsAndJoypadStatus_VBlankFlag|!HVBlankFlagsAndJoypadStatus_AutoJoypadReadStatus)	; $81
	BMI.b Main
	
	LDA.b #(!IRQNMIAndJoypadEnableFlags_EnableNMI|!IRQNMIAndJoypadEnableFlags_EnableAutoJoypadRead)
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	RTS
namespace off
endmacro


macro CUSTOMDATA_SMW_SwitchPalaceText(Address)
namespace SMW_SwitchPalaceText
%InsertMacroAtXPosition(<Address>)
cleartable
table "tables/fonts/standard_br.txt"

LevelMsg01:
	db "       /          ~\"
	db "  - PALACIO DO BOTAO -\"
	db "\"
	db "O poder do bot@o que\"
	db "voc+ ativou transformar*"
									; Blank line for the blocks. (The new table makes it so it gets skipped)
	db "todos os    em   .\"
	db "Seu progresso poder* ser"
	db "salvo.\"

LinesTable:					; Note: Stripe image headers' bytes 1 and 2 for each line, in reverse order.
	dw $A451,$8451,$6451
	dw $2451,$0451,$E450,$C450,$A450

;	dw $A451,$8451,$6451,$4451
;	dw $2451,$0451,$E450,$C450
namespace off
endmacro


macro ROUTINE_CUSTOM_StaffCreditsLong(Address) ; $9E3 bytes long
namespace SMW_CUSTOM_StaffCreditsLong
%InsertMacroAtXPosition(<Address>)
Main:
	PHB
	PHK
	PLB

	SEP.b #$20
	INC.b !RAM_SMW_Misc_CreditsStripeImageIndex
	LDA.w BG3,y
	CMP.b #$FF						;\ Note: final byte check.
	BEQ.b +							;/

	LDA.w BG3,y							;\ Note: Xpos of current stripe image.
	STA.b !RAM_SMW_Misc_ScratchRAM02	;/
	LDA.w BG3+$01,y								;\ Note: Length of current stripe image minus 1 (in bytes).
	STA.b !RAM_SMW_Misc_ScratchRAM00			;/
	STZ.b !RAM_SMW_Misc_ScratchRAM01
	INY	#2

	LDA.b !RAM_SMW_Misc_CreditsStripeImageHeaderHi
	STA.l SMW_StripeImageUploadTable[$00].LowByte,x

	LDA.b !RAM_SMW_Misc_CreditsStripeImageHeaderLo		;\ Note: Stripe header byte 2.
	CLC													;|
	ADC.b !RAM_SMW_Misc_ScratchRAM02					;|
	STA.l SMW_StripeImageUploadTable[$00].HighByte,x	;/
	INX	#2

	LDA.b !RAM_SMW_Misc_ScratchRAM01				;\ Note: Stripe header byte 3.
	STA.l SMW_StripeImageUploadTable[$00].LowByte,x	;/ Hardcoded as 0 (horizontal, no RLE, max length of 256 bytes.)

	LDA.b !RAM_SMW_Misc_ScratchRAM00					;\ Note: Stripe header byte 4.
	STA.l SMW_StripeImageUploadTable[$00].HighByte,x	;/
	INX #2

	REP.b #$20
-:								; Note: Tiles data loop.
	LDA.w BG3,y
	STA.l SMW_StripeImageUploadTable[$00].LowByte,x
	INX #2
	INY #2
	DEC.b !RAM_SMW_Misc_ScratchRAM00
	DEC.b !RAM_SMW_Misc_ScratchRAM00
	BPL.b -

	LDA.w #$00FF						;\ End stripe image.
	STA.l SMW_StripeImageUploadTable[$00].LowByte,x		;/
	TXA
	STA.l !RAM_SMW_Misc_StripeImageUploadIndexLo
+:
	PLB
	RTL

BG3:
 	%InsertVersionExclusiveFile(incsrc, ../SMW/images/ending/Credits_, SMW_br.asm, )

namespace off
endmacro


macro ROUTINE_CUSTOM_LevelNamesLong(Address)
namespace SMW_CUSTOM_LevelNamesLong
%InsertMacroAtXPosition(<Address>)
Strings: ; $681 bytes long
	base $0000
	incsrc "strings/LevelNameStrings_br.asm"
	base off

namespace off
endmacro


macro ROUTINE_CUSTOM_PressStartToSMASW(Address)
namespace SMW_CUSTOM_PressStartToSMASW
%InsertMacroAtXPosition(<Address>)
	cleartable
	table "tables/fonts/AllUppercase_br.txt"
	
	;                 (Label, XPos, YPos, Dir, RLE, Layer)
	%StripeImageHeader(PressStart, 10,25, 0, $0000, 3)
	dw "APERTE START"
	PressStartEnd:
	dw $FFFF

SetUpTimer:
	REP.b #$20
	LDA.w #$0140
	STA.b !RAM_SMW_Timer_TheEndPrompt
	SEP.b #$20
	RTL

Main:
	PHB
	PHK
	PLB
	REP.b #$20
	LDA.b !RAM_SMW_Timer_TheEndPrompt	;\ Don't do anything before the timer hits zero.
	BEQ.b +								;|
	DEC.b !RAM_SMW_Timer_TheEndPrompt	;|
	SEP.b #$20							;|
	BRA.b Exit							;/

+:
	SEP.b #$20
	LDA.b !RAM_SMW_Flag_ShowPressStart	;\ Makes sure both sound and stripe are only processed once.
	BNE.b InputCheck					;/

	; Play the sound
	LDA.b #!Define_SMW_Sound1DFC_OverworldTileReveal
	STA.w !RAM_SMW_IO_SoundCh3

	; Set up stripe length
	LDA.b #PressStartEnd-PressStart
	TAX
	INC #2
	STA.l !RAM_SMW_Misc_StripeImageUploadIndexLo
	REP.b #$20
-:
	LDA.w PressStart,x
	STA.l SMW_StripeImageUploadTable[$00].LowByte,x
	DEX #2
	BPL.b -
	
	SEP.b #$20
	INC.b !RAM_SMW_Flag_ShowPressStart
InputCheck:		; Waits on main loop until one of the players presses Start.
	LDA.w !RAM_SMW_IO_ControllerPress1CopyP1
	ORA.w !RAM_SMW_IO_ControllerPress1CopyP2
	AND.b #!Joypad_Start>>8
	BEQ.b Exit

	JML.l SMAS_CopyOfResetToSMASTitleScreen_Main
Exit:
	PLB
	RTL

namespace off
endmacro


macro CreditsBlockHeader(Label, XPos, Color)
;To use this macro:
;- Label must be the label name for the block. This label should be made to be a sublabel for another label (ie. ".Label" instead of "Label:". Also, you must put "..End" attached after the block so that the length of the data can be automatically set.
; XPos is the starting X position (multiple of 8) to draw the stripe image on the specified layer. (Max is $3F)
cleartable

if stringsequal("<Color>", "red")
	table "tables/fonts/AllUppercaseR_br.txt"
elseif stringsequal("<Color>", "green")
	table "tables/fonts/AllUppercaseG_br.txt"
elseif stringsequal("<Color>", "yellow")
	table "tables/fonts/AllUppercaseY_br.txt"
else
	table "tables/fonts/AllUppercase_br.txt"
endif

	db <XPos>
	db (<Label>_End-<Label>)-1
<Label>:
endmacro


macro CUSTOMDATA_SMW_Luigi(Address)
%InsertMacroAtXPosition(<Address>)

	LuigiGFX:
		incbin "GFX/Custom/GFXLuigi.bin"
	.End:

endmacro


macro ROUTINE_CUSTOM_DisplayCopyDetectionErrorMessage_00(Address)
namespace SMW_DisplayCopyDetectionErrorMessage
%InsertMacroAtXPosition(<Address>)

Entry:
	JSR.w SMW_SetStandardPPUSettings_Main			; Because the game's letters are 2bpp, the original PPU settings are used.
	LDA.b #!XScreenLayers_EnableLayer3
	STA.w !REGISTER_MainScreenLayers
	STZ.w !REGISTER_SubScreenLayers
	LDA.b #!BGModeAndTileSizeSetting_Mode01Enable
	STA.w !REGISTER_BGModeAndTileSizeSetting
	STZ.w !REGISTER_ColorMathSelectAndEnable
	JSL.l Main

	JMP.w SMW_HandleSPCUploads_UploadSPCEngine 		; Command overwritten on the original routine.

InputPoll:
	JSR.w SMW_PollJoypadInputs_Main 				; Game's joypad poll routine.
	RTL
namespace off
endmacro


macro ROUTINE_CUSTOM_DisplayCopyDetectionErrorMessage_01(Address)
namespace SMW_DisplayCopyDetectionErrorMessage

Palette:
	dw $0000,$7D60,$0000,$7FFF,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $60E0		; Next color slot
	.End:

Screen:
	incbin "tilemaps/error.bin"
	.End:

Main:
	; Graphics upload. Uses the game's own fonts.
	LDY.b #$28
	JSL.l SMW_GraphicsDecompressionRoutines_Main
	REP.b #$20
	LDX.b #$80
	STX.w !REGISTER_VRAMAddressIncrementValue
	LDA.w #!VRAM_SMW_Layer3GFXVRAMLocation
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #(!REGISTER_WriteToVRAMPortLo&$0000FF<<8)+!DMAParams_TransferMode_2Regs1Write
	STA.w DMA[$00].Parameters
	LDA.w !RAM_SMW_Misc_ScratchRAM00
	STA.w DMA[$00].SourceLo
	LDX.b !RAM_SMW_Misc_ScratchRAM02
	STX.w DMA[$00].SourceBank
	LDA.w #$0800
	STA.w DMA[$00].SizeLo
	LDX.b #!DMAEnable_Channel0
	STX.w !REGISTER_DMAEnable
	
	SEP.b #$20
	LDY.b #$29
	JSL.l SMW_GraphicsDecompressionRoutines_Main
	REP.b #$20
	LDA.w !RAM_SMW_Misc_ScratchRAM00
	STA.w DMA[$00].SourceLo
	LDX.b !RAM_SMW_Misc_ScratchRAM02
	STX.w DMA[$00].SourceBank
	LDA.w #$0400
	STA.w DMA[$00].SizeLo
	LDX.b #!DMAEnable_Channel0
	STX.w !REGISTER_DMAEnable

	SEP.b #$20
	LDY.b #$2F
	JSL.l SMW_GraphicsDecompressionRoutines_Main
	REP.b #$20
	LDA.w !RAM_SMW_Misc_ScratchRAM00
	STA.w DMA[$00].SourceLo
	LDX.b !RAM_SMW_Misc_ScratchRAM02
	STX.w DMA[$00].SourceBank
	LDA.w #$0400
	STA.w DMA[$00].SizeLo
	LDX.b #!DMAEnable_Channel0
	STX.w !REGISTER_DMAEnable

	; Tiles upload
	LDA.w #!VRAM_SMW_Layer3TilemapVRAMLocation
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #Screen
	STA.w DMA[$00].SourceLo
	LDX.b #Screen>>16
	STX.w DMA[$00].SourceBank
	LDA.w #Screen_End-Screen
	STA.w DMA[$00].SizeLo
	
	; Palette buffer
	LDA.w #!RAM_SMW_Palettes_PaletteMirror
	STA.w !REGISTER_WRAMAddressLo
	LDX.b #!RAM_SMW_Palettes_PaletteMirror>>16
	STX.w !REGISTER_WRAMAddressBank
	LDA.w #(!REGISTER_ReadOrWriteToWRAMPort&$0000FF<<8)+$00
	STA.w DMA[$01].Parameters
	LDA.w #Palette
	STA.w DMA[$01].SourceLo
	LDX.b #Palette>>16
	STX.w DMA[$01].SourceBank
	LDA.w #Palette_End-Palette
	STA.w DMA[$01].SizeLo

	LDX.b #!DMAEnable_Channel0|!DMAEnable_Channel1
	STX.w !REGISTER_DMAEnable

	JSR.w UploadtoCGRAM

	; Screen timer
	LDA.w #$0200
	STA.b !RAM_Timer_ErrorMsg
	SEP.b #$20
	STZ.b !RAM_Timer_FrameCounter

	LDA.b #!ScreenDisplayRegister_MaxBrightness0F
	STA.w !REGISTER_ScreenDisplayRegister
	LDA.b #!IRQNMIAndJoypadEnableFlags_EnableAutoJoypadRead
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags

Loop:
	JSL.l InputPoll								; Poll controller inputs every frame.
	BIT.w !REGISTER_HVBlankFlagsAndJoypadStatus ;\ Make sure it's at HBlank or Vblank before using them.
	BPL.b Loop 									;/

	; Blue color animation.
	INC.b !RAM_Timer_FrameCounter
	LDA.b !RAM_Timer_FrameCounter
	CMP.b #$18
	BNE.b ReturnChecks

	STZ.b !RAM_Timer_FrameCounter			; Reset counter
	REP.b #$20
	LDA.w SMW_PaletteMirror[$01].LowByte	;\ Remember current color
	PHA										;/
	LDA.w !RAM_ErrorNextColor				;\ Apply the next color
	STA.w SMW_PaletteMirror[$01].LowByte	;/
	PLA										;\ Save current color for next keyframe
	STA.w !RAM_ErrorNextColor				;/
	JSR.w UploadtoCGRAM
	SEP.b #$20
ReturnChecks:
	BIT.w !REGISTER_HVBlankFlagsAndJoypadStatus
	BMI.b ReturnChecks

	REP.b #$20
	DEC.b !RAM_Timer_ErrorMsg		;\ Auto-skips screen when timer hits zero.
	LDA.b !RAM_Timer_ErrorMsg		;|
	BEQ.b Return					;/
	
	SEP.b #$20
	LDA.w !RAM_SMW_IO_ControllerHold1CopyP1		;\ Waits until one of the players presses a button.
	ORA.w !RAM_SMW_IO_ControllerHold2CopyP1		;|
	ORA.w !RAM_SMW_IO_ControllerHold1CopyP2		;|
	ORA.w !RAM_SMW_IO_ControllerHold2CopyP2		;|
	AND.b #!Joypad_Any							;|
	BEQ.b Loop									;/

Return:
	SEP.b #$20
	LDA.b #!ScreenDisplayRegister_SetForceBlank|!ScreenDisplayRegister_MinBrightness00
	STA.w !REGISTER_ScreenDisplayRegister
	RTL

UploadtoCGRAM:
	LDX.b #$00
	STX.w !REGISTER_CGRAMAddress
	LDA.w #(!REGISTER_WriteToCGRAMPort&$0000FF<<8)+$00
	STA.w DMA[$02].Parameters
	LDA.w #!RAM_SMW_Palettes_PaletteMirror
	STA.w DMA[$02].SourceLo
	LDX.b #!RAM_SMW_Palettes_PaletteMirror>>16
	STX.w DMA[$02].SourceBank
	LDA.w #$0020
	STA.w DMA[$02].SizeLo
	LDX.b #!DMAEnable_Channel2
	STX.w !REGISTER_DMAEnable
	RTS
namespace off
endmacro