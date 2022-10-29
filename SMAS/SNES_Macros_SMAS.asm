macro drawStripeHeader(layer, screen, x, y, dir, rle, length)
	if <layer> == 1
		!layer_bits = 2
	elseif <layer> == 2
		!layer_bits = 3
	elseif <layer> == 3
		!layer_bits = 5
	else
		!layer_bits = 0
	endif

	if <screen> > 0
		!MapIndex = <screen>
	else
		!MapIndex = 0
	endif

	if <rle> == !TRUE
		!length = <length>
	else
		!length = <length>-1
	endif

	!Word1 #= (!layer_bits<<12)|(!MapIndex<<10)|(<y><<5)|(<x>)
	!Word2 #= (<dir><<15)|(<rle><<14)|(!length)

	db !Word1>>8, !Word1, !Word2>>8, !Word2
endmacro

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