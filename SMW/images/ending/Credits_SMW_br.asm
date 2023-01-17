base $000000

db $FF

%CreditsBlockHeader(.MainProducerAccent, $08+5, "green")
	     dw "~"
	..End:
%CreditsBlockHeader(.MainProducer, $08, "green")
	dw "DIREcaO PRINCIPAL"
	..End:
%CreditsBlockHeader(.MainProducerCedilla, $08+4, "green")
	    dw ";"
	..End:
%CreditsBlockHeader(.TakashiTezukaA, $09, )
	db $E3,$38,$C0,$38,$ca,$38,$C0,$38,$E2,$38,$C7,$38,$C8,$38,$FC,$00
	db $E3,$38,$C4,$38,$E9,$38,$E4,$38,$ca,$38,$C0,$38
	..End:
%CreditsBlockHeader(.TakashiTezukaB, $09, )
	db $F3,$38,$D0,$38,$DA,$38,$D0,$38,$F2,$38,$D7,$38,$D8,$38,$FC,$00
	db $F3,$38,$D4,$38,$F9,$38,$F4,$38,$DA,$38,$D0,$38
	..End:

%CreditsBlockHeader(.MapDirectorAccent, $08+5, "yellow")
	     dw "~"
	..End:
%CreditsBlockHeader(.MapDirector, $08, "yellow")
	dw "DIREcaO DE MAPAS"
	..End:
%CreditsBlockHeader(.MapDirectorCedilla, $08+4, "yellow")
	    dw ";"
	..End:
%CreditsBlockHeader(.HidequiKonnoA, $0A, )
	db $C7,$38,$C8,$38,$C3,$38,$C4,$38,$E0,$38,$E4,$38,$C8,$38,$FC,$00
	db $ca,$38,$CE,$38,$CD,$38,$CD,$38,$CE,$38
	..End:
%CreditsBlockHeader(.HidequiKonnoB, $0A, )
	db $D7,$38,$D8,$38,$D3,$38,$D4,$38,$F0,$38,$F4,$38,$D8,$38,$FC,$00
	db $DA,$38,$DE,$38,$DD,$38,$DD,$38,$DE,$38
	..End:

%CreditsBlockHeader(.AreaDirectorAccent, $08+5, "red")
	     dw "~"
	..End:
%CreditsBlockHeader(.AreaDirector, $08, "red")
	dw "DIREcaO DE FASES"
	..End:
%CreditsBlockHeader(.AreaDirectorCedilla, $08+4, "red")
	    dw ";"
	..End:
%CreditsBlockHeader(.KatsuyaEguchiA, $09, )
	db $ca,$38,$C0,$38,$E3,$38,$E2,$38,$E4,$38,$E8,$38,$C0,$38,$FC,$00
	db $C4,$38,$C6,$38,$E4,$38,$C2,$38,$C7,$38,$C8,$38
	..End:
%CreditsBlockHeader(.KatsuyaEguchiB, $09, )
	db $DA,$38,$D0,$38,$F3,$38,$F2,$38,$F4,$38,$F8,$38,$D0,$38,$FC,$00
	db $D4,$38,$D6,$38,$F4,$38,$D2,$38,$D7,$38,$D8,$38
	..End:

%CreditsBlockHeader(.PrgDirectorAccent, $05+5, "green")
	     dw "~              ~"
	..End:
%CreditsBlockHeader(.PrgDirector, $05, "green")
	dw "DIREcaO DE PROGRAMAcaO"
	..End:
%CreditsBlockHeader(.PrgDirectorCedilla, $05+4, "green")
	    dw ";              ;"
	..End:
%CreditsBlockHeader(.ToshihikoNakagoA, $08, )
	db $E3,$38,$CE,$38,$E2,$38,$C7,$38,$C8,$38,$C7,$38,$C8,$38,$ca,$38
	db $CE,$38,$FC,$00,$CD,$38,$C0,$38,$ca,$38,$C0,$38,$C6,$38,$CE,$38
	..End:
%CreditsBlockHeader(.ToshihikoNakagoB, $08, )
	db $F3,$38,$DE,$38,$F2,$38,$D7,$38,$D8,$38,$D7,$38,$D8,$38,$DA,$38
	db $DE,$38,$FC,$00,$DD,$38,$D0,$38,$DA,$38,$D0,$38,$D6,$38,$DE,$38
	..End:

%CreditsBlockHeader(.PlayerSysProgrammer, $03, "yellow")
	dw "PROGRAM. JOGADOR E SISTEMA"
	..End:
%CreditsBlockHeader(.ToshioIwawakiA, $09, )
	db $E3,$38,$CE,$38,$E2,$38,$C7,$38,$C8,$38,$CE,$38,$FC,$00,$C8,$38
	db $E6,$38,$C0,$38,$E6,$38,$C0,$38,$ca,$38,$C8,$38
	..End:
%CreditsBlockHeader(.ToshioIwawakiB, $09, )
	db $F3,$38,$DE,$38,$F2,$38,$D7,$38,$D8,$38,$DE,$38,$FC,$00,$D8,$38
	db $F6,$38,$D0,$38,$F6,$38,$D0,$38,$DA,$38,$D8,$38
	..End:

%CreditsBlockHeader(.ObjProgrammerAccent, $05+9, "red")
	         dw "~"
	..End:
%CreditsBlockHeader(.ObjProgrammer, $05, "red")
	dw "PROGRAMAcaO DE OBJETOS"
	..End:
%CreditsBlockHeader(.ObjProgrammerCedilla, $05+8, "red")
	        dw ";"
	..End:
%CreditsBlockHeader(.KazuakiMoritaA, $09, )
	db $ca,$38,$C0,$38,$E9,$38,$E4,$38,$C0,$38,$ca,$38,$C8,$38,$FC,$00
	db $CC,$38,$CE,$38,$E1,$38,$C8,$38,$E3,$38,$C0,$38
	..End:
%CreditsBlockHeader(.KazuakiMoritaB, $09, )
	db $DA,$38,$D0,$38,$F9,$38,$F4,$38,$D0,$38,$DA,$38,$D8,$38,$FC,$00
	db $DC,$38,$DE,$38,$F1,$38,$D8,$38,$F3,$38,$D0,$38
	..End:

%CreditsBlockHeader(.BgProgrammer, $04, "green")
	dw "PROGRAM. PLANOS DE FUNDO"
	..End:
%CreditsBlockHeader(.ShigehiroKasamatsuA, $07, )
	db $E2,$38,$C7,$38,$C8,$38,$C6,$38,$C4,$38,$C7,$38,$C8,$38,$E1,$38
	db $CE,$38,$FC,$00,$ca,$38,$C0,$38,$E2,$38,$C0,$38,$CC,$38,$C0,$38
	db $E3,$38,$E2,$38,$E4,$38
	..End:
%CreditsBlockHeader(.ShigehiroKasamatsuB, $07, )
	db $F2,$38,$D7,$38,$D8,$38,$D6,$38,$D4,$38,$D7,$38,$D8,$38,$F1,$38
	db $DE,$38,$FC,$00,$DA,$38,$D0,$38,$F2,$38,$D0,$38,$DC,$38,$D0,$38
	db $F3,$38,$F2,$38,$F4,$38
	..End:
%CreditsBlockHeader(.TatsunoriTakakuraA, $07, )
	db $E3,$38,$C0,$38,$E3,$38,$E2,$38,$E4,$38,$CD,$38,$CE,$38,$E1,$38
	db $C8,$38,$FC,$00,$E3,$38,$C0,$38,$ca,$38,$C0,$38,$ca,$38,$E4,$38
	db $E1,$38,$C0,$38
	..End:
%CreditsBlockHeader(.TatsunoriTakakuraB, $07, )
	db $F3,$38,$D0,$38,$F3,$38,$F2,$38,$F4,$38,$DD,$38,$DE,$38,$F1,$38
	db $D8,$38,$FC,$00,$F3,$38,$D0,$38,$DA,$38,$D0,$38,$DA,$38,$F4,$38
	db $F1,$38,$D0,$38
	..End:

%CreditsBlockHeader(.MapProgrammerAccent, $06+9, "yellow")
	         dw "~"
	..End:
%CreditsBlockHeader(.MapProgrammer, $06, "yellow")
	dw "PROGRAMAcaO DE MAPAS"
	..End:
%CreditsBlockHeader(.MapProgrammerCedilla, $06+8, "yellow")
	        dw ";"
	..End:
%CreditsBlockHeader(.TatsuoNishiyamaA, $08, )
	db $E3,$38,$C0,$38,$E3,$38,$E2,$38,$E4,$38,$CE,$38,$FC,$00,$CD,$38
	db $C8,$38,$E2,$38,$C7,$38,$C8,$38,$E8,$38,$C0,$38,$CC,$38,$C0,$38
	..End:
%CreditsBlockHeader(.TatsuoNishiyamaB, $08, )
	db $F3,$38,$D0,$38,$F3,$38,$F2,$38,$F4,$38,$DE,$38,$FC,$00,$DD,$38
	db $D8,$38,$F2,$38,$D7,$38,$D8,$38,$F8,$38,$D0,$38,$DC,$38,$D0,$38
	..End:

%CreditsBlockHeader(.AreaDataInputAccent, $09+4, "red")
	    dw "~"
	..End:
%CreditsBlockHeader(.AreaDataInput, $09, "red")
	dw "EDIcaO DE FASES"
	..End:
%CreditsBlockHeader(.AreaDataInputCedilla, $09+3, "red")
	   dw ";"
	..End:
%CreditsBlockHeader(.YoshihiroNomotoA, $08, )
	db $E8,$38,$CE,$38,$E2,$38,$C7,$38,$C8,$38,$C7,$38,$C8,$38,$E1,$38
	db $CE,$38,$FC,$00,$CD,$38,$CE,$38,$CC,$38,$CE,$38,$E3,$38,$CE,$38
	..End:
%CreditsBlockHeader(.YoshihiroNomotoB, $08, )
	db $F8,$38,$DE,$38,$F2,$38,$D7,$38,$D8,$38,$D7,$38,$D8,$38,$F1,$38
	db $DE,$38,$FC,$00,$DD,$38,$DE,$38,$DC,$38,$DE,$38,$F3,$38,$DE,$38
	..End:
%CreditsBlockHeader(.EijiNotoA, $0C, )
	db $C4,$38,$C8,$38,$C9,$38,$C8,$38,$FC,$00,$CD,$38,$CE,$38,$E3,$38
	db $CE,$38
	..End:
%CreditsBlockHeader(.EijiNotoB, $0C, )
	db $D4,$38,$D8,$38,$D9,$38,$D8,$38,$FC,$00,$DD,$38,$DE,$38,$F3,$38
	db $DE,$38
	..End:
%CreditsBlockHeader(.SatoruTakahataA, $09, )
	db $E2,$38,$C0,$38,$E3,$38,$CE,$38,$E1,$38,$E4,$38,$FC,$00,$E3,$38
	db $C0,$38,$ca,$38,$C0,$38,$C7,$38,$C0,$38,$E3,$38,$C0,$38
	..End:
%CreditsBlockHeader(.SatoruTakahataB, $09, )
	db $F2,$38,$D0,$38,$F3,$38,$DE,$38,$F1,$38,$F4,$38,$FC,$00,$F3,$38
	db $D0,$38,$DA,$38,$D0,$38,$D7,$38,$D0,$38,$F3,$38,$D0,$38
	..End:

%CreditsBlockHeader(.CGDesigner, $06, "green")
	dw "DESIGN DE PERSONAGENS"
	..End:
%CreditsBlockHeader(.ShigefumiHinoA, $09, )
	db $E2,$38,$C7,$38,$C8,$38,$C6,$38,$C4,$38,$C5,$38,$E4,$38,$CC,$38
	db $C8,$38,$FC,$00,$C7,$38,$C8,$38,$CD,$38,$CE,$38
	..End:
%CreditsBlockHeader(.ShigefumiHinoB, $09, )
	db $F2,$38,$D7,$38,$D8,$38,$D6,$38,$D4,$38,$D5,$38,$F4,$38,$DC,$38
	db $D8,$38,$FC,$00,$D7,$38,$D8,$38,$DD,$38,$DE,$38
	..End:

%CreditsBlockHeader(.SoundComposerAccent, $08+8, "yellow")
	        dw "~"
	..End:
%CreditsBlockHeader(.SoundComposer, $08, "yellow")
	dw "COMPOSIcaO SONORA"
	..End:
%CreditsBlockHeader(.SoundComposerCedilla, $08+7, "yellow")
	       dw ";"
	..End:
%CreditsBlockHeader(.KojKondoA, $0B, )
	db $ca,$38,$CE,$38,$C9,$38,$C8,$38,$FC,$00,$ca,$38,$CE,$38,$CD,$38
	db $C3,$38,$CE,$38
	..End:
%CreditsBlockHeader(.KojKondoB, $0B, )
	db $DA,$38,$DE,$38,$D9,$38,$D8,$38,$FC,$00,$DA,$38,$DE,$38,$DD,$38
	db $D3,$38,$DE,$38
	..End:

%CreditsBlockHeader(.SpecialThanks, $04, "red")
	dw "AGRADECIMENTOS ESPECIAIS"
	..End:
%CreditsBlockHeader(.YoichiKotabeA, $0A, )
	db $E8,$38,$CE,$38,$C8,$38,$C2,$38,$C7,$38,$C8,$38,$FC,$00,$ca,$38
	db $CE,$38,$E3,$38,$C0,$38,$C1,$38,$C4,$38
	..End:
%CreditsBlockHeader(.YoichiKotabeB, $0A, )
	db $F8,$38,$DE,$38,$D8,$38,$D2,$38,$D7,$38,$D8,$38,$FC,$00,$DA,$38
	db $DE,$38,$F3,$38,$D0,$38,$D1,$38,$D4,$38
	..End:
%CreditsBlockHeader(.YasuhiroSakaiA, $09, )
	db $E8,$38,$C0,$38,$E2,$38,$E4,$38,$C7,$38,$C8,$38,$E1,$38,$CE,$38
	db $FC,$00,$E2,$38,$C0,$38,$ca,$38,$C0,$38,$C8,$38
	..End:
%CreditsBlockHeader(.YasuhiroSakaiB, $09, )
	db $F8,$38,$D0,$38,$F2,$38,$F4,$38,$D7,$38,$D8,$38,$F1,$38,$DE,$38
	db $FC,$00,$F2,$38,$D0,$38,$DA,$38,$D0,$38,$D8,$38
	..End:
%CreditsBlockHeader(.MieYoshimuraA, $0A, )
	db $CC,$38,$C8,$38,$C4,$38,$FC,$00,$E8,$38,$CE,$38,$E2,$38,$C7,$38
	db $C8,$38,$CC,$38,$E4,$38,$E1,$38,$C0,$38
	..End:
%CreditsBlockHeader(.MieYoshimuraB, $0A, )
	db $DC,$38,$D8,$38,$D4,$38,$FC,$00,$F8,$38,$DE,$38,$F2,$38,$D7,$38
	db $D8,$38,$DC,$38,$F4,$38,$F1,$38,$D0,$38
	..End:
%CreditsBlockHeader(.HironobuKakuiA, $09, )
	db $C7,$38,$C8,$38,$E1,$38,$CE,$38,$CD,$38,$CE,$38,$C1,$38,$E4,$38
	db $FC,$00,$ca,$38,$C0,$38,$ca,$38,$E4,$38,$C8,$38
	..End:
%CreditsBlockHeader(.HironobuKakuiB, $09, )
	db $D7,$38,$D8,$38,$F1,$38,$DE,$38,$DD,$38,$DE,$38,$D1,$38,$F4,$38
	db $FC,$00,$DA,$38,$D0,$38,$DA,$38,$F4,$38,$D8,$38
	..End:
%CreditsBlockHeader(.KeizoKatoA, $0B, )
	db $ca,$38,$C4,$38,$C8,$38,$E9,$38,$CE,$38,$FC,$00,$ca,$38,$C0,$38
	db $E3,$38,$CE,$38
	..End:
%CreditsBlockHeader(.KeizoKatoB, $0B, )
	db $DA,$38,$D4,$38,$D8,$38,$F9,$38,$DE,$38,$FC,$00,$DA,$38,$D0,$38
	db $F3,$38,$DE,$38
	..End:
%CreditsBlockHeader(.TakaoShimizuA, $0A, )
	db $E3,$38,$C0,$38,$ca,$38,$C0,$38,$CE,$38,$FC,$00,$E2,$38,$C7,$38
	db $C8,$38,$CC,$38,$C8,$38,$E9,$38,$E4,$38
	..End:
%CreditsBlockHeader(.TakaoShimizuB, $0A, )
	db $F3,$38,$D0,$38,$DA,$38,$D0,$38,$DE,$38,$FC,$00,$F2,$38,$D7,$38
	db $D8,$38,$DC,$38,$D8,$38,$F9,$38,$F4,$38
	..End:

%CreditsBlockHeader(.DayvBrooksA, $0B, )
	db $C3,$38,$C0,$38,$E8,$38,$E5,$38,$FC,$00,$C1,$38,$E1,$38,$CE,$38
	db $CE,$38,$ca,$38,$E2,$38
	..End:
%CreditsBlockHeader(.DayvBrooksB, $0B, )
	db $D3,$38,$D0,$38,$F8,$38,$F5,$38,$FC,$00,$D1,$38,$F1,$38,$DE,$38
	db $DE,$38,$DA,$38,$F2,$38
	..End:

%CreditsBlockHeader(.ProducerAccent, $0C+6, "green")
	      dw "~"
	..End:
%CreditsBlockHeader(.Producer, $0C, "green")
	dw "PRODUcaO"
	..End:
%CreditsBlockHeader(.ProducerCedilla, $0C+5, "green")
	     dw ";"
	..End:
%CreditsBlockHeader(.ShigeruMiyamotoA, $08, )
	db $E2,$38,$C7,$38,$C8,$38,$C6,$38,$C4,$38,$E1,$38,$E4,$38,$FC,$00
	db $CC,$38,$C8,$38,$E8,$38,$C0,$38,$CC,$38,$CE,$38,$E3,$38,$CE,$38
	..End:
%CreditsBlockHeader(.ShigeruMiyamotoB, $08, )
	db $F2,$38,$D7,$38,$D8,$38,$D6,$38,$D4,$38,$F1,$38,$F4,$38,$FC,$00
	db $DC,$38,$D8,$38,$F8,$38,$D0,$38,$DC,$38,$DE,$38,$F3,$38,$DE,$38
	..End:

%CreditsBlockHeader(.ExecProducerAccent, $07+6, "yellow")
	      dw "~"
	..End:
%CreditsBlockHeader(.ExecProducer, $07, "yellow")
	dw "PRODUcaO EXECUTIVA"
	..End:
%CreditsBlockHeader(.ExecProducerCedilla, $07+5, "yellow")
	     dw ";"
	..End:
%CreditsBlockHeader(.HiroshiYamauchiA, $08, )
	db $C7,$38,$C8,$38,$E1,$38,$CE,$38,$E2,$38,$C7,$38,$C8,$38,$FC,$00
	db $E8,$38,$C0,$38,$CC,$38,$C0,$38,$E4,$38,$C2,$38,$C7,$38,$C8,$38
	..End:
%CreditsBlockHeader(.HiroshiYamauchiB, $08, )
	db $D7,$38,$D8,$38,$F1,$38,$DE,$38,$F2,$38,$D7,$38,$D8,$38,$FC,$00
	db $F8,$38,$D0,$38,$DC,$38,$D0,$38,$F4,$38,$D2,$38,$D7,$38,$D8,$38
	..End:


%CreditsBlockHeader(.TlVersionByAccent, $0A+4, )
	    dw "~"
	..End:
%CreditsBlockHeader(.TlVersionBy, $0A, )
	dw "VERSaO PT-BR"
	..End:
%CreditsBlockHeader(.bMatSantosA, $0B, "red")
	db $C1,$2C,$CC,$2C,$C0,$2C,$E3,$2C,$E2,$2C,$C0,$2C,$CD,$2C,$E3,$2C
	db $CE,$2C,$E2,$2C
	..End:
%CreditsBlockHeader(.bMatSantosB, $0B, "red")
	db $D1,$2C,$DC,$2C,$D0,$2C,$F3,$2C,$F2,$2C,$D0,$2C,$DD,$2C,$F3,$2C
	db $DE,$2C,$F2,$2C
	..End:

%CreditsBlockHeader(.TlThanks, $06, )
	dw "AGRADECIMENTOS PT-BR"
	..End:
%CreditsBlockHeader(.YoshiCentralA, $03, "green")
	db $E8,$28,$CE,$28,$E2,$28,$C7,$28,$C8,$28,$C5,$28,$C0,$28,$CD,$28
	db $C0,$28,$E3,$28,$C8,$28,$C2,$28,$FC,$00,$FC,$00
	db $E2,$28,$CC,$28,$E6,$28,$FC,$00,$C2,$28,$C4,$28,$CD,$28,$E3,$28
	db $E1,$28,$C0,$28,$CB,$28,$FB,$28
	..End:
%CreditsBlockHeader(.YoshiCentralB, $03, "green")
	db $F8,$28,$DE,$28,$F2,$28,$D7,$28,$D8,$28,$D5,$28,$D0,$28,$DD,$28
	db $D0,$28,$F3,$28,$D8,$28,$D2,$28,$FC,$00,$FC,$00
	db $F2,$28,$DC,$28,$F6,$28,$FC,$00,$D2,$28,$D4,$28,$DD,$28,$F3,$28
	db $F1,$28,$D0,$28,$DB,$28,$FB,$28
	..End:
%CreditsBlockHeader(.UaoCentralA, $0D, "green")
	db $ED,$28
	dw "   KUSAMOCHI"
	..End:
%CreditsBlockHeader(.UaoCentralB, $0C, "green")
	db $E4,$28,$C0,$28,$CE,$28
	dw "  FUSOYA"
	..End:
%CreditsBlockHeader(.UaoCentralC, $0C, "green")
	db $F4,$28,$D0,$28,$DE,$28
	..End:

base off