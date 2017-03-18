; Source code created by SMS Examine V1.2a
; Size: 32768 bytes

.MEMORYMAP
SLOTSIZE $4000
SLOT 0 $0000
SLOT 1 $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME

.ROMBANKMAP
BANKSTOTAL 2
BANKSIZE $4000
BANKS 2
.ENDRO

; SDSC Tag:
; Name:        CK demo1
; Author:      stevepro
; Date:        07.03.2017
; Version:     0.02
; Description: stevepro CK demo1

.BANK 0 SLOT 0
.ORG $0000

_START:
	di
	im   1
	jp   _LABEL_70_2

_LABEL_6_103:
	nop
	nop
_LABEL_8_8:
	ld   c, $BF
	di
	out  (c), l
	out  (c), h
	ei
	ret

_LABEL_11_104:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
_RST_18H:
	ld   a, l
	out  ($BE), a
	ld   a, h
	sub  $00
	nop
	out  ($BE), a
	ret


; Data from 22 to 37 (22 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00

_IRQ_HANDLER:
	jp   _LABEL_3613_10


; Data from 3B to 65 (43 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

_NMI_HANDLER:
	jp   _LABEL_3649_197


; Data from 69 to 6F (7 bytes)
; (only NULL-bytes)
.db $00, $00, $00, $00, $00, $00, $00

_LABEL_70_2:
	ld   sp, $DFF0
	ld   de, $FFFC
	xor  a
	ld   (de), a
	ld   b, $03
_LABEL_7A_3:
	inc  de
	ld   (de), a
	inc  a
	djnz _LABEL_7A_3
	xor  a
	ld   hl, $C000
	ld   (hl), a
	ld   de, $C001
	ld   bc, $1FF0
	ldir
	call _LABEL_3BAD_4
	call _LABEL_3383_6
	ei
	call _LABEL_1584_25

; Data from 96 to 209 (372 bytes)
.db $C3, $04, $02, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED, $A3, $ED
.db $A3, $ED, $A3, $C9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3E, $02, $CF, $C9, $3E, $00
.db $CF, $76, $18, $FD

_LABEL_20A_38:
	ld   a, ($004F)
	ld   ($C1E5), a
	ld   a, ($004E)
	ld   ($C1E6), a
	ld   a, ($0050)
	ld   ($C1E7), a
	ld   a, ($0051)
	ld   ($C1E8), a
	ld   a, ($0052)
	ld   ($C1E9), a
	ld   a, ($0053)
	ld   ($C1EA), a
	ld   a, ($0054)
	ld   ($C1EB), a
	ld   a, ($0055)
	ld   ($C1EC), a
	ret

_LABEL_23B_39:
	ld   iy, $C1E6
	ld   a, (iy+0)
	sub  $01
	ld   a, $00
	rla
	ld   (iy+0), a
	ld   hl, $C1E7
	ld   (hl), $01
	ld   iy, $C1E9
	ld   a, (iy+0)
	sub  $01
	ld   a, $00
	rla
	ld   (iy+0), a
	ld   iy, $C1EA
	ld   a, (iy+0)
	sub  $01
	ld   a, $00
	rla
	ld   (iy+0), a
	ld   iy, $C1EB
	ld   a, (iy+0)
	sub  $01
	ld   a, $00
	rla
	ld   (iy+0), a
	ret


; Data from 27D to 2A5 (41 bytes)
.db "!", $E5, $C1, "6", $00, "!", $E6, $C1, "6", $00, "!", $E7, $C1, "6", $00, "!", $E8
.db $C1, "6", $00, "!", $E9, $C1, "6", $00, "!", $EA, $C1, "6", $00, "!", $EB, $C1, ""
.db "6", $00, "!", $EC, $C1, "6", $00, $C9

_LABEL_2A6_52:
	ld   hl, $0090
	push hl
	ld   hl, $2062
	push hl
	call _LABEL_38AB_53
	pop  af
	ld   h, $20
	ex   (sp), hl
	inc  sp
	ld   hl, $201A
	push hl
	ld   hl, $0000
	push hl
	call _LABEL_36C9_72
	pop  af
	pop  af
	inc  sp
	ld   hl, $200A
	jp   _LABEL_34B9_90


; Data from 2CA to 302 (57 bytes)
.db $21, $08, $00, $E5, $21, $5D, $2C, $E5, $CD, $AB, $38, $F1, $F1, $21, $4A, $2C
.db $CD, $B9, $34, $21, $10, $00, $E5, $21, $6B, $1D, $E5, $CD, $AB, $38, $F1, $F1
.db $21, $DB, $1C, $CD, $B9, $34, $21, $50, $00, $E5, $21, $94, $28, $E5, $CD, $AB
.db $38, $F1, $F1, $21, $8B, $28, $C3, $CD, $34

_LABEL_303_101:
	push ix
	ld   ix, $0000
	add  ix, sp
	dec  sp
	ld   a, (ix+6)
	ld   (ix+255), a
	ld   e, $00
_LABEL_314_105:
	ld   l, (ix+4)
	ld   h, (ix+5)
	ld   d, $00
	add  hl, de
	ld   a, (hl)
	or   a
	jr   z, _LABEL_355_102
	add  a, $DF
	ld   d, a
	ld   l, (ix+7)
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   c, l
	ld   a, h
	or   $78
	ld   b, a
	ld   l, (ix+255)
	inc  (ix+255)
	ld   h, $00
	add  hl, hl
	ld   a, l
	or   c
	ld   l, a
	ld   a, h
	or   b
	ld   h, a
	call _LABEL_6_103
	ld   hl, ($1CEB)
	ld   a, d
	ld   c, a
	rla
	sbc  a, a
	ld   b, a
	add  hl, bc
	call _LABEL_11_104
	inc  e
	jr   _LABEL_314_105

_LABEL_355_102:
	inc  sp
	pop  ix
	ret

_LABEL_359_131:
	push ix
	ld   ix, $0000
	add  ix, sp
	ld   hl, $FFF3
	add  hl, sp
	ld   sp, hl
	ld   hl, $0000
	add  hl, sp
	ld   (ix+254), l
	ld   (ix+255), h
	ld   a, (ix+6)
	ld   (ix+253), a
	ld   (ix+250), $00
_LABEL_37A_141:
	ld   hl, $000A
	push hl
	ld   l, (ix+4)
	ld   h, (ix+5)
	push hl
	call _LABEL_3342_132
	pop  af
	pop  af
	ex   de, hl
	ld   (ix+251), e
	ld   (ix+252), d
	push de
	ld   hl, $000A
	push hl
	ld   l, (ix+4)
	ld   h, (ix+5)
	push hl
	call _LABEL_39B2_139
	pop  af
	pop  af
	pop  de
	ld   c, l
	ld   a, (ix+250)
	add  a, (ix+254)
	ld   l, a
	ld   a, $00
	adc  a, (ix+255)
	ld   h, a
	ld   (hl), c
	ld   (ix+4), e
	ld   (ix+5), d
	ld   a, c
	add  a, $0F
	ld   b, a
	ld   a, (ix+252)
	or   (ix+251)
	jr   nz, _LABEL_3D0_140
	ld   a, c
	or   a
	jr   nz, _LABEL_3D0_140
	ld   a, (ix+250)
	or   a
	jr   z, _LABEL_3D0_140
	ld   b, $FF
_LABEL_3D0_140:
	ld   l, (ix+7)
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   e, l
	ld   a, h
	or   $78
	ld   d, a
	ld   l, (ix+253)
	dec  (ix+253)
	ld   h, $00
	add  hl, hl
	ld   a, l
	or   e
	ld   l, a
	ld   a, h
	or   d
	ld   h, a
	call _LABEL_6_103
	ld   hl, ($1CEB)
	ld   a, b
	ld   c, a
	rla
	sbc  a, a
	ld   b, a
	add  hl, bc
	call _LABEL_11_104
	inc  (ix+250)
	ld   a, (ix+250)
	sub  $07
	jp   c, _LABEL_37A_141
	ld   sp, ix
	pop  ix
	ret


; Data from 40E to 4A3 (150 bytes)
.db $DD, $E5, $DD, $21, $00, $00, $DD, $39, $21, $F6, $FF, $39, $F9, $21, $00, $00
.db $39, $DD, $75, $FE, $DD, $74, $FF, $DD, $7E, $06, $DD, $77, $FD, $1E, $00, $DD
.db $6E, $FE, $DD, $66, $FF, $16, $00, $19, $E5, $D5, $01, $0A, $00, $C5, $DD, $4E
.db $04, $DD, $46, $05, $C5, $CD, $B2, $39, $F1, $F1, $4D, $44, $D1, $E1, $71, $C5
.db $D5, $21, $0A, $00, $E5, $DD, $6E, $04, $DD, $66, $05, $E5, $CD, $42, $33, $F1
.db $F1, $D1, $C1, $DD, $75, $04, $DD, $74, $05, $79, $C6, $0F, $57, $DD, $6E, $07
.db $26, $00, $29, $29, $29, $29, $29, $29, $4D, $7C, $F6, $78, $47, $DD, $6E, $FD
.db $DD, $35, $FD, $26, $00, $29, $7D, $B1, $6F, $7C, $B0, $67, $CD, $06, $00, $2A
.db $EB, $1C, $7A, $4F, $17, $9F, $47, $09, $CD, $11, $00, $1C, $7B, $D6, $07, $38
.db $8E, $DD, $F9, $DD, $E1, $C9

_LABEL_4A4_47:
	ld   hl, $C01F
	ld   (hl), $04
	ld   hl, $C020
	ld   (hl), $04
	ld   hl, $C021
	ld   (hl), $04
	ld   hl, $C022
	ld   (hl), $04
	ld   hl, $C023
	ld   (hl), $04
	ld   hl, $C024
	ld   (hl), $04
	ld   hl, $C025
	ld   (hl), $02
	ld   hl, $C026
	ld   (hl), $04
	ld   hl, $C027
	ld   (hl), $02
	ld   hl, $C028
	ld   (hl), $02
	ld   hl, $C029
	ld   (hl), $02
	ld   hl, $C02A
	ld   (hl), $02
	ld   hl, $C02B
	ld   (hl), $02
	ld   hl, $C02C
	ld   (hl), $03
	ld   hl, $C02D
	ld   (hl), $02
	ld   hl, $C02E
	ld   (hl), $03
	ld   hl, $C02F
	ld   (hl), $03
	ld   hl, $C030
	ld   (hl), $03
	ld   hl, $C031
	ld   (hl), $03
	ld   hl, $C032
	ld   (hl), $03
	ld   hl, $C033
	ld   (hl), $01
	ld   hl, $C034
	ld   (hl), $03
	ld   hl, $C035
	ld   (hl), $01
	ld   hl, $C036
	ld   (hl), $01
	ld   hl, $C037
	ld   (hl), $01
	ld   hl, $C038
	ld   (hl), $01
	ld   hl, $C039
	ld   (hl), $01
	ld   hl, $C03A
	ld   (hl), $01
	ld   hl, $C03B
	ld   (hl), $04
	ld   hl, $C03C
	ld   (hl), $04
	ld   hl, $C03D
	ld   (hl), $04
	ld   hl, $C03E
	ld   (hl), $04
	ld   hl, $C03F
	ld   (hl), $04
	ld   hl, $C040
	ld   (hl), $04
	ld   hl, $C041
	ld   (hl), $02
	ld   hl, $C042
	ld   (hl), $04
	ld   hl, $C043
	ld   (hl), $02
	ld   hl, $C044
	ld   (hl), $02
	ld   hl, $C045
	ld   (hl), $02
	ld   hl, $C046
	ld   (hl), $02
	ld   hl, $C047
	ld   (hl), $02
	ld   hl, $C048
	ld   (hl), $03
	ld   hl, $C049
	ld   (hl), $02
	ld   hl, $C04A
	ld   (hl), $03
	ld   hl, $C04B
	ld   (hl), $03
	ld   hl, $C04C
	ld   (hl), $03
	ld   hl, $C04D
	ld   (hl), $03
	ld   hl, $C04E
	ld   (hl), $03
	ld   hl, $C04F
	ld   (hl), $01
	ld   hl, $C050
	ld   (hl), $03
	ld   hl, $C051
	ld   (hl), $01
	ld   hl, $C052
	ld   (hl), $01
	ld   hl, $C053
	ld   (hl), $01
	ld   hl, $C054
	ld   (hl), $01
	ld   hl, $C055
	ld   (hl), $01
	ld   hl, $C056
	ld   (hl), $01
	ld   hl, $C057
	ld   (hl), $02
	ld   hl, $C058
	ld   (hl), $02
	ld   hl, $C059
	ld   (hl), $02
	ld   hl, $C05A
	ld   (hl), $02
	ld   hl, $C05B
	ld   (hl), $02
	ld   hl, $C05C
	ld   (hl), $02
	ld   hl, $C05D
	ld   (hl), $04
	ld   hl, $C05E
	ld   (hl), $02
	ld   hl, $C05F
	ld   (hl), $04
	ld   hl, $C060
	ld   (hl), $04
	ld   hl, $C061
	ld   (hl), $04
	ld   hl, $C062
	ld   (hl), $04
	ld   hl, $C063
	ld   (hl), $04
	ld   hl, $C064
	ld   (hl), $01
	ld   hl, $C065
	ld   (hl), $04
	ld   hl, $C066
	ld   (hl), $01
	ld   hl, $C067
	ld   (hl), $01
	ld   hl, $C068
	ld   (hl), $01
	ld   hl, $C069
	ld   (hl), $01
	ld   hl, $C06A
	ld   (hl), $01
	ld   hl, $C06B
	ld   (hl), $03
	ld   hl, $C06C
	ld   (hl), $01
	ld   hl, $C06D
	ld   (hl), $03
	ld   hl, $C06E
	ld   (hl), $03
	ld   hl, $C06F
	ld   (hl), $03
	ld   hl, $C070
	ld   (hl), $03
	ld   hl, $C071
	ld   (hl), $03
	ld   hl, $C072
	ld   (hl), $03
	ld   hl, $C073
	ld   (hl), $02
	ld   hl, $C074
	ld   (hl), $02
	ld   hl, $C075
	ld   (hl), $02
	ld   hl, $C076
	ld   (hl), $02
	ld   hl, $C077
	ld   (hl), $02
	ld   hl, $C078
	ld   (hl), $02
	ld   hl, $C079
	ld   (hl), $04
	ld   hl, $C07A
	ld   (hl), $02
	ld   hl, $C07B
	ld   (hl), $04
	ld   hl, $C07C
	ld   (hl), $04
	ld   hl, $C07D
	ld   (hl), $04
	ld   hl, $C07E
	ld   (hl), $04
	ld   hl, $C07F
	ld   (hl), $04
	ld   hl, $C080
	ld   (hl), $01
	ld   hl, $C081
	ld   (hl), $04
	ld   hl, $C082
	ld   (hl), $01
	ld   hl, $C083
	ld   (hl), $01
	ld   hl, $C084
	ld   (hl), $01
	ld   hl, $C085
	ld   (hl), $01
	ld   hl, $C086
	ld   (hl), $01
	ld   hl, $C087
	ld   (hl), $03
	ld   hl, $C088
	ld   (hl), $01
	ld   hl, $C089
	ld   (hl), $03
	ld   hl, $C08A
	ld   (hl), $03
	ld   hl, $C08B
	ld   (hl), $03
	ld   hl, $C08C
	ld   (hl), $03
	ld   hl, $C08D
	ld   (hl), $03
	ld   hl, $C08E
	ld   (hl), $03
	ld   hl, $C08F
	ld   (hl), $01
	ld   hl, $C090
	ld   (hl), $04
	ld   hl, $C091
	ld   (hl), $04
	ld   hl, $C092
	ld   (hl), $04
	ld   hl, $C093
	ld   (hl), $04
	ld   hl, $C094
	ld   (hl), $04
	ld   hl, $C095
	ld   (hl), $04
	ld   hl, $C096
	ld   (hl), $04
	ld   hl, $C097
	ld   (hl), $04
	ld   hl, $C098
	ld   (hl), $02
	ld   hl, $C099
	ld   (hl), $02
	ld   hl, $C09A
	ld   (hl), $02
	ld   hl, $C09B
	ld   (hl), $02
	ld   hl, $C09C
	ld   (hl), $02
	ld   hl, $C09D
	ld   (hl), $02
	ld   hl, $C09E
	ld   (hl), $02
	ld   hl, $C09F
	ld   (hl), $02
	ld   hl, $C0A0
	ld   (hl), $02
	ld   hl, $C0A1
	ld   (hl), $03
	ld   hl, $C0A2
	ld   (hl), $03
	ld   hl, $C0A3
	ld   (hl), $03
	ld   hl, $C0A4
	ld   (hl), $03
	ld   hl, $C0A5
	ld   (hl), $03
	ld   hl, $C0A6
	ld   (hl), $03
	ld   hl, $C0A7
	ld   (hl), $03
	ld   hl, $C0A8
	ld   (hl), $03
	ld   hl, $C0A9
	ld   (hl), $03
	ld   hl, $C0AA
	ld   (hl), $01
	ld   hl, $C0AB
	ld   (hl), $01
	ld   hl, $C0AC
	ld   (hl), $01
	ld   hl, $C0AD
	ld   (hl), $01
	ld   hl, $C0AE
	ld   (hl), $01
	ld   hl, $C0AF
	ld   (hl), $01
	ld   hl, $C0B0
	ld   (hl), $01
	ld   hl, $C0B1
	ld   (hl), $01
	ld   hl, $C0B2
	ld   (hl), $01
	ld   hl, $C0B3
	ld   (hl), $04
	ld   hl, $C0B4
	ld   (hl), $04
	ld   hl, $C0B5
	ld   (hl), $04
	ld   hl, $C0B6
	ld   (hl), $04
	ld   hl, $C0B7
	ld   (hl), $04
	ld   hl, $C0B8
	ld   (hl), $04
	ld   hl, $C0B9
	ld   (hl), $04
	ld   hl, $C0BA
	ld   (hl), $04
	ld   hl, $C0BB
	ld   (hl), $04
	ld   hl, $C0BC
	ld   (hl), $02
	ld   hl, $C0BD
	ld   (hl), $02
	ld   hl, $C0BE
	ld   (hl), $03
	ld   hl, $C0BF
	ld   (hl), $03
	ld   hl, $C0C0
	ld   (hl), $01
	ld   hl, $C0C1
	ld   (hl), $03
	ld   hl, $C0C2
	ld   (hl), $03
	ld   hl, $C0C3
	ld   (hl), $03
	ld   hl, $C0C4
	ld   (hl), $03
	ld   hl, $C0C5
	ld   (hl), $03
	ld   hl, $C0C6
	ld   (hl), $03
	ld   hl, $C0C7
	ld   (hl), $03
	ld   hl, $C0C8
	ld   (hl), $02
	ld   hl, $C0C9
	ld   (hl), $02
	ld   hl, $C0CA
	ld   (hl), $02
	ld   hl, $C0CB
	ld   (hl), $02
	ld   hl, $C0CC
	ld   (hl), $02
	ld   hl, $C0CD
	ld   (hl), $02
	ld   hl, $C0CE
	ld   (hl), $02
	ld   hl, $C0CF
	ld   (hl), $02
	ld   hl, $C0D0
	ld   (hl), $04
	ld   hl, $C0D1
	ld   (hl), $04
	ld   hl, $C0D2
	ld   (hl), $04
	ld   hl, $C0D3
	ld   (hl), $04
	ld   hl, $C0D4
	ld   (hl), $04
	ld   hl, $C0D5
	ld   (hl), $04
	ld   hl, $C0D6
	ld   (hl), $04
	ld   hl, $C0D7
	ld   (hl), $04
	ld   hl, $C0D8
	ld   (hl), $04
	ld   hl, $C0D9
	ld   (hl), $01
	ld   hl, $C0DA
	ld   (hl), $01
	ld   hl, $C0DB
	ld   (hl), $01
	ld   hl, $C0DC
	ld   (hl), $01
	ld   hl, $C0DD
	ld   (hl), $01
	ld   hl, $C0DE
	ld   (hl), $01
	ld   hl, $C0DF
	ld   (hl), $01
	ld   hl, $C0E0
	ld   (hl), $01
	ld   hl, $C0E1
	ld   (hl), $01
	ld   hl, $C0E2
	ld   (hl), $03
	ld   hl, $C0E3
	ld   (hl), $03
	ld   hl, $C0E4
	ld   (hl), $03
	ld   hl, $C0E5
	ld   (hl), $03
	ld   hl, $C0E6
	ld   (hl), $03
	ld   hl, $C0E7
	ld   (hl), $03
	ld   hl, $C0E8
	ld   (hl), $03
	ld   hl, $C0E9
	ld   (hl), $03
	ld   hl, $C0EA
	ld   (hl), $03
	ld   hl, $C0EB
	ld   (hl), $02
	ld   hl, $C0EC
	ld   (hl), $02
	ld   hl, $C0ED
	ld   (hl), $02
	ld   hl, $C0EE
	ld   (hl), $02
	ld   hl, $C0EF
	ld   (hl), $02
	ld   hl, $C0F0
	ld   (hl), $02
	ld   hl, $C0F1
	ld   (hl), $02
	ld   hl, $C0F2
	ld   (hl), $02
	ld   hl, $C0F3
	ld   (hl), $02
	ld   hl, $C0F4
	ld   (hl), $04
	ld   hl, $C0F5
	ld   (hl), $04
	ld   hl, $C0F6
	ld   (hl), $01
	ld   hl, $C0F7
	ld   (hl), $01
	ld   hl, $C0F8
	ld   (hl), $03
	ld   hl, $C0F9
	ld   (hl), $01
	ld   hl, $C0FA
	ld   (hl), $01
	ld   hl, $C0FB
	ld   (hl), $01
	ld   hl, $C0FC
	ld   (hl), $01
	ld   hl, $C0FD
	ld   (hl), $01
	ld   hl, $C0FE
	ld   (hl), $01
	ld   hl, $C0FF
	ld   (hl), $04
	ld   hl, $C100
	ld   (hl), $04
	ld   hl, $C101
	ld   (hl), $04
	ld   hl, $C102
	ld   (hl), $04
	ld   hl, $C103
	ld   (hl), $04
	ld   hl, $C104
	ld   (hl), $04
	ld   hl, $C105
	ld   (hl), $02
	ld   hl, $C106
	ld   (hl), $04
	ld   hl, $C107
	ld   (hl), $04
	ld   hl, $C108
	ld   (hl), $01
	ld   hl, $C109
	ld   (hl), $01
	ld   hl, $C10A
	ld   (hl), $03
	ld   hl, $C10B
	ld   (hl), $03
	ld   hl, $C10C
	ld   (hl), $02
	ld   hl, $C10D
	ld   (hl), $02
	ld   hl, $C10E
	ld   (hl), $04
	ld   hl, $C10F
	ld   (hl), $02
	ld   hl, $C110
	ld   (hl), $02
	ld   hl, $C111
	ld   (hl), $02
	ld   hl, $C112
	ld   (hl), $02
	ld   hl, $C113
	ld   (hl), $02
	ld   hl, $C114
	ld   (hl), $03
	ld   hl, $C115
	ld   (hl), $02
	ld   hl, $C116
	ld   (hl), $02
	ld   hl, $C117
	ld   (hl), $04
	ld   hl, $C118
	ld   (hl), $04
	ld   hl, $C119
	ld   (hl), $01
	ld   hl, $C11A
	ld   (hl), $01
	ld   hl, $C11B
	ld   (hl), $03
	ld   hl, $C11C
	ld   (hl), $03
	ld   hl, $C11D
	ld   (hl), $02
	ld   hl, $C11E
	ld   (hl), $03
	ld   hl, $C11F
	ld   (hl), $03
	ld   hl, $C120
	ld   (hl), $03
	ld   hl, $C121
	ld   (hl), $03
	ld   hl, $C122
	ld   (hl), $03
	ld   hl, $C123
	ld   (hl), $01
	ld   hl, $C124
	ld   (hl), $03
	ld   hl, $C125
	ld   (hl), $03
	ld   hl, $C126
	ld   (hl), $02
	ld   hl, $C127
	ld   (hl), $02
	ld   hl, $C128
	ld   (hl), $04
	ld   hl, $C129
	ld   (hl), $04
	ld   hl, $C12A
	ld   (hl), $01
	ld   hl, $C12B
	ld   (hl), $01
	ld   hl, $C12C
	ld   (hl), $03
	ld   hl, $C12D
	ld   (hl), $01
	ld   hl, $C12E
	ld   (hl), $01
	ld   hl, $C12F
	ld   (hl), $01
	ld   hl, $C130
	ld   (hl), $01
	ld   hl, $C131
	ld   (hl), $01
	ld   hl, $C132
	ld   (hl), $04
	ld   hl, $C133
	ld   (hl), $01
	ld   hl, $C134
	ld   (hl), $01
	ld   hl, $C135
	ld   (hl), $03
	ld   hl, $C136
	ld   (hl), $02
	ld   hl, $C137
	ld   (hl), $02
	ld   hl, $C138
	ld   (hl), $02
	ld   hl, $C139
	ld   (hl), $02
	ld   hl, $C13A
	ld   (hl), $02
	ld   hl, $C13B
	ld   (hl), $02
	ld   hl, $C13C
	ld   (hl), $02
	ld   hl, $C13D
	ld   (hl), $04
	ld   hl, $C13E
	ld   (hl), $02
	ld   hl, $C13F
	ld   (hl), $02
	ld   hl, $C140
	ld   (hl), $03
	ld   hl, $C141
	ld   (hl), $03
	ld   hl, $C142
	ld   (hl), $01
	ld   hl, $C143
	ld   (hl), $01
	ld   hl, $C144
	ld   (hl), $04
	ld   hl, $C145
	ld   (hl), $04
	ld   hl, $C146
	ld   (hl), $02
	ld   hl, $C147
	ld   (hl), $04
	ld   hl, $C148
	ld   (hl), $04
	ld   hl, $C149
	ld   (hl), $04
	ld   hl, $C14A
	ld   (hl), $04
	ld   hl, $C14B
	ld   (hl), $04
	ld   hl, $C14C
	ld   (hl), $01
	ld   hl, $C14D
	ld   (hl), $04
	ld   hl, $C14E
	ld   (hl), $04
	ld   hl, $C14F
	ld   (hl), $02
	ld   hl, $C150
	ld   (hl), $02
	ld   hl, $C151
	ld   (hl), $03
	ld   hl, $C152
	ld   (hl), $03
	ld   hl, $C153
	ld   (hl), $01
	ld   hl, $C154
	ld   (hl), $01
	ld   hl, $C155
	ld   (hl), $04
	ld   hl, $C156
	ld   (hl), $01
	ld   hl, $C157
	ld   (hl), $01
	ld   hl, $C158
	ld   (hl), $01
	ld   hl, $C159
	ld   (hl), $01
	ld   hl, $C15A
	ld   (hl), $01
	ld   hl, $C15B
	ld   (hl), $03
	ld   hl, $C15C
	ld   (hl), $01
	ld   hl, $C15D
	ld   (hl), $01
	ld   hl, $C15E
	ld   (hl), $04
	ld   hl, $C15F
	ld   (hl), $04
	ld   hl, $C160
	ld   (hl), $02
	ld   hl, $C161
	ld   (hl), $02
	ld   hl, $C162
	ld   (hl), $03
	ld   hl, $C163
	ld   (hl), $03
	ld   hl, $C164
	ld   (hl), $01
	ld   hl, $C165
	ld   (hl), $03
	ld   hl, $C166
	ld   (hl), $03
	ld   hl, $C167
	ld   (hl), $03
	ld   hl, $C168
	ld   (hl), $03
	ld   hl, $C169
	ld   (hl), $03
	ld   hl, $C16A
	ld   (hl), $02
	ld   hl, $C16B
	ld   (hl), $03
	ld   hl, $C16C
	ld   (hl), $03
	ld   hl, $C16D
	ld   (hl), $01
	ld   hl, $C16E
	ld   (hl), $04
	ld   hl, $C16F
	ld   (hl), $04
	ld   hl, $C170
	ld   (hl), $04
	ld   hl, $C171
	ld   (hl), $04
	ld   hl, $C172
	ld   (hl), $01
	ld   hl, $C173
	ld   (hl), $04
	ld   hl, $C174
	ld   (hl), $04
	ld   hl, $C175
	ld   (hl), $04
	ld   hl, $C176
	ld   (hl), $04
	ld   hl, $C177
	ld   (hl), $04
	ld   hl, $C178
	ld   (hl), $02
	ld   hl, $C179
	ld   (hl), $02
	ld   hl, $C17A
	ld   (hl), $03
	ld   hl, $C17B
	ld   (hl), $02
	ld   hl, $C17C
	ld   (hl), $02
	ld   hl, $C17D
	ld   (hl), $02
	ld   hl, $C17E
	ld   (hl), $02
	ld   hl, $C17F
	ld   (hl), $02
	ld   hl, $C180
	ld   (hl), $04
	ld   hl, $C181
	ld   (hl), $02
	ld   hl, $C182
	ld   (hl), $02
	ld   hl, $C183
	ld   (hl), $03
	ld   hl, $C184
	ld   (hl), $03
	ld   hl, $C185
	ld   (hl), $01
	ld   hl, $C186
	ld   (hl), $03
	ld   hl, $C187
	ld   (hl), $03
	ld   hl, $C188
	ld   (hl), $03
	ld   hl, $C189
	ld   (hl), $03
	ld   hl, $C18A
	ld   (hl), $03
	ld   hl, $C18B
	ld   (hl), $02
	ld   hl, $C18C
	ld   (hl), $03
	ld   hl, $C18D
	ld   (hl), $03
	ld   hl, $C18E
	ld   (hl), $01
	ld   hl, $C18F
	ld   (hl), $01
	ld   hl, $C190
	ld   (hl), $04
	ld   hl, $C191
	ld   (hl), $01
	ld   hl, $C192
	ld   (hl), $01
	ld   hl, $C193
	ld   (hl), $01
	ld   hl, $C194
	ld   (hl), $01
	ld   hl, $C195
	ld   (hl), $01
	ld   hl, $C196
	ld   (hl), $03
	ld   hl, $C197
	ld   (hl), $01
	ld   hl, $C198
	ld   (hl), $01
	ld   hl, $C199
	ld   (hl), $04
	ld   hl, $C19A
	ld   (hl), $04
	ld   hl, $C19B
	ld   (hl), $04
	ld   hl, $C19C
	ld   (hl), $04
	ld   hl, $C19D
	ld   (hl), $04
	ld   hl, $C19E
	ld   (hl), $02
	ld   hl, $C19F
	ld   (hl), $03
	ld   hl, $C1A0
	ld   (hl), $03
	ld   hl, $C1A1
	ld   (hl), $03
	ld   hl, $C1A2
	ld   (hl), $03
	ld   hl, $C1A3
	ld   (hl), $03
	ld   hl, $C1A4
	ld   (hl), $02
	ld   hl, $C1A5
	ld   (hl), $04
	ld   hl, $C1A6
	ld   (hl), $01
	ld   hl, $C1A7
	ld   (hl), $02
	ld   hl, $C1A8
	ld   (hl), $02
	ld   hl, $C1A9
	ld   (hl), $02
	ld   hl, $C1AA
	ld   (hl), $03
	ld   hl, $C1AB
	ld   (hl), $02
	ld   hl, $C1AC
	ld   (hl), $02
	ld   hl, $C1AD
	ld   (hl), $02
	ld   hl, $C1AE
	ld   (hl), $02
	ld   hl, $C1AF
	ld   (hl), $02
	ld   hl, $C1B0
	ld   (hl), $04
	ld   hl, $C1B1
	ld   (hl), $04
	ld   hl, $C1B2
	ld   (hl), $01
	ld   hl, $C1B3
	ld   (hl), $04
	ld   hl, $C1B4
	ld   (hl), $04
	ld   hl, $C1B5
	ld   (hl), $04
	ld   hl, $C1B6
	ld   (hl), $04
	ld   hl, $C1B7
	ld   (hl), $04
	ld   hl, $C1B8
	ld   (hl), $02
	ld   hl, $C1B9
	ld   (hl), $04
	ld   hl, $C1BA
	ld   (hl), $04
	ld   hl, $C1BB
	ld   (hl), $01
	ld   hl, $C1BC
	ld   (hl), $01
	ld   hl, $C1BD
	ld   (hl), $03
	ld   hl, $C1BE
	ld   (hl), $01
	ld   hl, $C1BF
	ld   (hl), $01
	ld   hl, $C1C0
	ld   (hl), $01
	ld   hl, $C1C1
	ld   (hl), $01
	ld   hl, $C1C2
	ld   (hl), $01
	ld   hl, $C1C3
	ld   (hl), $04
	ld   hl, $C1C4
	ld   (hl), $01
	ld   hl, $C1C5
	ld   (hl), $01
	ld   hl, $C1C6
	ld   (hl), $03
	ld   hl, $C1C7
	ld   (hl), $03
	ld   hl, $C1C8
	ld   (hl), $02
	ld   hl, $C1C9
	ld   (hl), $03
	ld   hl, $C1CA
	ld   (hl), $03
	ld   hl, $C1CB
	ld   (hl), $03
	ld   hl, $C1CC
	ld   (hl), $03
	ld   hl, $C1CD
	ld   (hl), $03
	ld   hl, $C1CE
	ld   (hl), $01
	ld   hl, $C1CF
	ld   (hl), $03
	ld   hl, $C1D0
	ld   (hl), $03
	ld   hl, $C1D1
	ld   (hl), $02
	ld   hl, $C1D2
	ld   (hl), $02
	ld   hl, $C1D3
	ld   (hl), $02
	ld   hl, $C1D4
	ld   (hl), $02
	ld   hl, $C1D5
	ld   (hl), $02
	ld   hl, $C1D6
	ld   (hl), $04
	ld   hl, $C1D7
	ld   (hl), $01
	ld   hl, $C1D8
	ld   (hl), $01
	ld   hl, $C1D9
	ld   (hl), $01
	ld   hl, $C1DA
	ld   (hl), $01
	ld   hl, $C1DB
	ld   (hl), $01
	ld   hl, $C1DC
	ld   (hl), $04
	ld   hl, $C1DD
	ld   (hl), $02
	ld   hl, $C1DE
	ld   (hl), $03
	ret


; Data from D65 to 10F6 (914 bytes)
.db $21, $08, $0B, $E5, $21, $27, $0E, $E5, $CD, $03, $03, $F1, $21, $08, $0C, $E3
.db $21, $30, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $00, $E3, $21, $39, $0E, $E5
.db $CD, $03, $03, $F1, $21, $18, $01, $E3, $21, $41, $0E, $E5, $CD, $03, $03, $F1
.db $21, $18, $04, $E3, $21, $49, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $05, $E3
.db $21, $50, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $06, $E3, $21, $57, $0E, $E5
.db $CD, $03, $03, $F1, $21, $18, $07, $E3, $21, $5E, $0E, $E5, $CD, $03, $03, $F1
.db $21, $18, $08, $E3, $21, $67, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $09, $E3
.db $21, $70, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $0E, $E3, $21, $79, $0E, $E5
.db $CD, $03, $03, $F1, $21, $18, $0F, $E3, $21, $82, $0E, $E5, $CD, $03, $03, $F1
.db $21, $18, $11, $E3, $21, $8B, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $12, $E3
.db $21, $94, $0E, $E5, $CD, $03, $03, $F1, $21, $18, $16, $E3, $21, $9D, $0E, $E5
.db $CD, $03, $03, $F1, $21, $18, $17, $E3, $21, $A6, $0E, $E5, $CD, $03, $03, $F1
.db $F1, $C9, $43, $41, $4E, $44, $59, $4B, $49, $44, $00, $20, $20, $44, $45, $4D
.db $4F, $20, $20, $00, $3D, $43, $41, $4E, $44, $59, $3D, $00, $20, $20, $4B, $49
.db $44, $20, $20, $00, $4A, $4F, $59, $20, $23, $31, $00, $2D, $2D, $2D, $2D, $2D
.db $2D, $00, $4B, $49, $44, $20, $55, $50, $00, $41, $44, $49, $20, $44, $4F, $57
.db $4E, $00, $53, $55, $5A, $20, $4C, $45, $46, $54, $00, $50, $52, $4F, $20, $52
.db $47, $48, $54, $00, $50, $52, $45, $53, $53, $20, $23, $31, $00, $53, $54, $41
.db $52, $54, $20, $49, $54, $00, $50, $52, $45, $53, $53, $20, $23, $32, $00, $53
.db $4F, $55, $4E, $44, $20, $46, $58, $00, $53, $54, $45, $56, $45, $50, $52, $4F
.db $00, $28, $43, $29, $20, $31, $39, $38, $34, $00, $21, $03, $07, $E5, $21, $E1
.db $0E, $E5, $CD, $03, $03, $F1, $21, $03, $15, $E3, $21, $E6, $0E, $E5, $CD, $03
.db $03, $F1, $21, $11, $07, $E3, $21, $EB, $0E, $E5, $CD, $03, $03, $F1, $21, $11
.db $15, $E3, $21, $F0, $0E, $E5, $CD, $03, $03, $F1, $F1, $C9, $4B, $49, $44, $2E
.db $00, $41, $44, $49, $2E, $00, $53, $55, $5A, $2E, $00, $50, $52, $4F, $2E, $00
.db $21, $03, $07, $E5, $21, $27, $0F, $E5, $CD, $03, $03, $F1, $21, $03, $15, $E3
.db $21, $27, $0F, $E5, $CD, $03, $03, $F1, $21, $11, $07, $E3, $21, $27, $0F, $E5
.db $CD, $03, $03, $F1, $21, $11, $15, $E3, $21, $27, $0F, $E5, $CD, $03, $03, $F1
.db $F1, $C9, $20, $20, $20, $20, $00, $DD, $E5, $DD, $21, $00, $00, $DD, $39, $F5
.db $F5, $DD, $5E, $05, $16, $00, $6B, $62, $29, $29, $29, $29, $29, $29, $4D, $7C
.db $F6, $78, $47, $DD, $6E, $04, $26, $00, $29, $DD, $75, $FE, $DD, $74, $FF, $79
.db $DD, $B6, $FE, $6F, $78, $DD, $B6, $FF, $67, $C5, $CD, $06, $00, $C1, $2A, $55
.db $2C, $CD, $11, $00, $DD, $6E, $04, $2C, $26, $00, $29, $33, $33, $E5, $79, $DD
.db $B6, $FC, $6F, $78, $DD, $B6, $FD, $67, $CD, $06, $00, $2A, $55, $2C, $23, $CD
.db $11, $00, $EB, $23, $29, $29, $29, $29, $29, $29, $5D, $7C, $F6, $78, $57, $7B
.db $DD, $B6, $FE, $6F, $7A, $DD, $B6, $FF, $67, $CD, $06, $00, $2A, $55, $2C, $23
.db $23, $CD, $11, $00, $7B, $DD, $B6, $FC, $6F, $7A, $DD, $B6, $FD, $67, $CD, $06
.db $00, $2A, $55, $2C, $23, $23, $23, $CD, $11, $00, $DD, $F9, $DD, $E1, $C9, $06
.db $00, $C5, $AF, $F5, $33, $C5, $33, $CD, $2C, $0F, $F1, $C1, $C5, $3E, $16, $F5
.db $33, $C5, $33, $CD, $2C, $0F, $F1, $C1, $04, $04, $78, $D6, $18, $38, $E2, $06
.db $02, $C5, $C5, $33, $AF, $F5, $33, $CD, $2C, $0F, $F1, $C1, $C5, $C5, $33, $3E
.db $16, $F5, $33, $CD, $2C, $0F, $F1, $C1, $04, $04, $78, $D6, $16, $38, $E2, $C9
.db $06, $06, $C5, $3E, $08, $F5, $33, $C5, $33, $CD, $2C, $0F, $F1, $C1, $C5, $3E
.db $0E, $F5, $33, $C5, $33, $CD, $2C, $0F, $F1, $C1, $04, $04, $78, $D6, $12, $38
.db $E1, $06, $0A, $C5, $C5, $33, $3E, $06, $F5, $33, $CD, $2C, $0F, $F1, $C1, $C5
.db $C5, $33, $3E, $10, $F5, $33, $CD, $2C, $0F, $F1, $C1, $04, $04, $78, $D6, $0E
.db $38, $E1, $C9, $CD, $C4, $0F, $C3, $05, $10, $3A, $EB, $C1, $B7, $C8, $CD, $5C
.db $36, $01, $03, $00, $C5, $E5, $CD, $9A, $39, $F1, $F1, $7D, $4F, $B7, $20, $0E
.db $3E, $01, $F5, $33, $21, $D4, $32, $E5, $CD, $C7, $1A, $F1, $33, $C9, $0D, $20
.db $0E, $3E, $01, $F5, $33, $21, $FF, $32, $E5, $CD, $C7, $1A, $F1, $33, $C9, $3E
.db $01, $F5, $33, $21, $1F, $33, $E5, $CD, $C7, $1A, $F1, $33, $C9, $DD, $E5, $DD
.db $21, $00, $00, $DD, $39, $DD, $66, $06, $DD, $6E, $05, $E5, $DD, $7E, $04, $F5
.db $33, $CD, $EB, $34, $F1, $33, $DD, $56, $06, $14, $DD, $7E, $04, $C6, $08, $47
.db $C5, $D5, $33, $DD, $7E, $05, $F5, $33, $C5, $33, $CD, $EB, $34, $F1, $33, $C1
.db $DD, $7E, $06, $C6, $08, $67, $DD, $7E, $05, $C6, $08, $57, $C5, $D5, $E5, $33
.db $D5, $33, $DD, $7E, $04, $F5, $33, $CD, $EB, $34, $F1, $33, $D1, $C1, $DD, $7E
.db $06, $C6, $09, $67, $E5, $33, $D5, $33, $C5, $33, $CD, $EB, $34, $F1, $33, $DD
.db $E1, $C9

_LABEL_10F7_45:
	ld   hl, $C017
	ld   (hl), $00
	ld   hl, $C01A
	ld   (hl), $00
	ld   hl, $C01B
	ld   (hl), $00
	ld   hl, $C01C
	ld   (hl), $00
	ret

_LABEL_110C_92:
	ld   hl, $C014
	ld   (hl), $20
	ld   hl, $C015
	ld   (hl), $20
	ld   hl, $C016
	ld   (hl), $00
	ld   hl, $C018
	ld   (hl), $00
	call _LABEL_11E0_93
	ld   hl, $C01D
	ld   (hl), $00
	ld   hl, $C01E
	ld   (hl), $00
	ret


; Data from 112E to 11DF (178 bytes)
.db $21, $17, $C0, $3E, $01, $96, $77, $C3, $E0, $11, $21, $18, $C0, $3E, $01, $96
.db $77, $C3, $E0, $11, $21, $1E, $C0, $36, $01, $C3, $38, $11, $21, $E7, $C1, $D5
.db $FD, $21, $16, $C0, $FD, $E5, $D1, $1A, $86, $12, $D1, $FD, $7E, $00, $D6, $08
.db $38, $14, $FD, $36, $00, $00, $3A, $18, $C0, $3D, $20, $05, $CD, $38, $11, $18
.db $05, $21, $1E, $C0, $36, $00, $3A, $1D, $C0, $3D, $20, $0F, $21, $E7, $C1, $D5
.db $FD, $21, $15, $C0, $FD, $E5, $D1, $1A, $96, $12, $D1, $3A, $1D, $C0, $D6, $02
.db $20, $0F, $21, $E7, $C1, $D5, $FD, $21, $15, $C0, $FD, $E5, $D1, $1A, $86, $12
.db $D1, $3A, $1D, $C0, $D6, $03, $20, $0F, $21, $E7, $C1, $D5, $FD, $21, $14, $C0
.db $FD, $E5, $D1, $1A, $96, $12, $D1, $3A, $1D, $C0, $D6, $04, $C0, $21, $E7, $C1
.db $D5, $FD, $21, $14, $C0, $FD, $E5, $D1, $1A, $86, $12, $D1, $C9, $3A, $19, $C0
.db $F5, $33, $3A, $15, $C0, $F5, $33, $3A, $14, $C0, $F5, $33, $CD, $92, $10, $F1
.db $33, $C9

_LABEL_11E0_93:
	ld   a, ($C017)
	add  a, a
	ld   hl, $C018
	add  a, (hl)
	add  a, a
	ld   hl, $C019
	add  a, $50
	ld   (hl), a
	ret

_LABEL_11F0_46:
	ld   hl, $C001
	ld   (hl), $90
	ld   hl, $C002
	ld   (hl), $90
	ld   hl, $C003
	ld   (hl), $00
	ld   hl, $C006
	ld   (hl), $20
	ld   hl, $C007
	ld   (hl), $90
	ld   hl, $C008
	ld   (hl), $00
	ld   hl, $C00B
	ld   (hl), $90
	ld   hl, $C00C
	ld   (hl), $20
	ld   hl, $C00D
	ld   (hl), $00
	ld   a, ($C1E8)
	ld   iy, $C010
	ld   (iy+0), a
	ld   (iy+1), $00
	ret

_LABEL_122C_94:
	ld   hl, $C004
	ld   (hl), $00
	ld   hl, $C009
	ld   (hl), $00
	ld   hl, $C00E
	ld   (hl), $00
	call _LABEL_12EC_95
	call _LABEL_12FC_96
	call _LABEL_130C_97
	ld   hl, $0000
	ld   ($C012), hl
	ret


; Data from 124B to 12EB (161 bytes)
.db $21, $03, $C0, $3E, $01, $96, $77, $C3, $EC, $12, $21, $04, $C0, $3E, $01, $96
.db $77, $C3, $EC, $12, $21, $08, $C0, $3E, $01, $96, $77, $C3, $FC, $12, $21, $09
.db $C0, $3E, $01, $96, $77, $C3, $FC, $12, $21, $0D, $C0, $3E, $01, $96, $77, $C3
.db $0C, $13, $21, $0E, $C0, $3E, $01, $96, $77, $C3, $0C, $13, $FD, $21, $12, $C0
.db $FD, $34, $00, $20, $03, $FD, $34, $01, $21, $10, $C0, $7E, $FD, $96, $00, $23
.db $7E, $FD, $9E, $01, $D0, $21, $00, $00, $22, $12, $C0, $CD, $55, $12, $CD, $69
.db $12, $C3, $7D, $12, $3A, $05, $C0, $F5, $33, $3A, $02, $C0, $F5, $33, $3A, $01
.db $C0, $F5, $33, $CD, $92, $10, $F1, $33, $3A, $0A, $C0, $F5, $33, $3A, $07, $C0
.db $F5, $33, $3A, $06, $C0, $F5, $33, $CD, $92, $10, $F1, $33, $3A, $0F, $C0, $F5
.db $33, $3A, $0C, $C0, $F5, $33, $3A, $0B, $C0, $F5, $33, $CD, $92, $10, $F1, $33
.db $C9

_LABEL_12EC_95:
	ld   a, ($C003)
	add  a, a
	ld   hl, $C004
	add  a, (hl)
	add  a, a
	ld   hl, $C005
	add  a, $60
	ld   (hl), a
	ret

_LABEL_12FC_96:
	ld   a, ($C008)
	add  a, a
	ld   hl, $C009
	add  a, (hl)
	add  a, a
	ld   hl, $C00A
	add  a, $70
	ld   (hl), a
	ret

_LABEL_130C_97:
	ld   a, ($C00D)
	add  a, a
	ld   hl, $C00E
	add  a, (hl)
	add  a, a
	ld   hl, $C00F
	add  a, $80
	ld   (hl), a
	ret


; Data from 131C to 1362 (71 bytes)
.db $DD, $E5, $DD, $21, $00, $00, $DD, $39, $DD, $CB, $04, $46, $28, $09, $DD, $CB
.db $06, $46, $20, $03, $CD, $2E, $11, $DD, $CB, $04, $4E, $28, $09, $DD, $CB, $06
.db $4E, $20, $03, $CD, $5F, $12, $DD, $CB, $04, $56, $28, $09, $DD, $CB, $06, $56
.db $20, $03, $CD, $73, $12, $DD, $CB, $04, $5E, $28, $09, $DD, $CB, $06, $5E, $20
.db $03, $CD, $4B, $12, $DD, $E1, $C9

_LABEL_1363_35:
	ld   a, $00
	out  ($BF), a
	ld   a, $40
	out  ($BF), a
	ld   bc, $4000
_LABEL_136E_36:
	ld   a, $00
	out  ($BE), a
	dec  bc
	ld   a, b
	or   c
	jp   nz, _LABEL_136E_36
	ret


; Data from 1379 to 1583 (523 bytes)
.db $21, $E3, $C1, $36, $96, $C9, $0E, $00, $21, $04, $00, $39, $7E, $E6, $10, $28
.db $09, $21, $06, $00, $39, $7E, $E6, $10, $28, $12, $21, $04, $00, $39, $7E, $E6
.db $20, $28, $0B, $21, $06, $00, $39, $7E, $E6, $20, $20, $02, $0E, $01, $FD, $21
.db $E1, $C1, $FD, $34, $00, $20, $03, $FD, $34, $01, $21, $E3, $C1, $46, $1E, $00
.db $FD, $21, $E1, $C1, $FD, $7E, $00, $90, $FD, $7E, $01, $9B, $38, $02, $0E, $01
.db $79, $B7, $C8, $CD, $63, $13, $CD, $CA, $02, $C1, $E1, $E5, $C5, $36, $02, $C9
.db $CD, $48, $10, $C3, $65, $0D, $21, $04, $00, $39, $7E, $E6, $20, $28, $0C, $21
.db $06, $00, $39, $7E, $E6, $20, $20, $03, $CD, $4E, $10, $C1, $E1, $E5, $C5, $36
.db $03, $C9, $3A, $E5, $C1, $B7, $28, $0D, $21, $1F, $02, $E5, $21, $03, $00, $E5
.db $CD, $59, $03, $F1, $F1, $CD, $AF, $0E, $CD, $0C, $11, $C3, $2C, $12, $DD, $E5
.db $DD, $21, $00, $00, $DD, $39, $CD, $CB, $11, $CD, $AF, $12, $CD, $5C, $36, $DD
.db $6E, $08, $DD, $66, $09, $E5, $DD, $6E, $06, $DD, $66, $07, $E5, $CD, $1C, $13
.db $F1, $F1, $DD, $CB, $06, $6E, $28, $09, $DD, $CB, $08, $6E, $20, $03, $CD, $4E
.db $10, $DD, $CB, $06, $66, $28, $0E, $DD, $CB, $08, $66, $20, $08, $DD, $6E, $04
.db $DD, $66, $05, $36, $04, $DD, $E1, $C9, $3A, $E5, $C1, $B7, $28, $0D, $21, $1F
.db $02, $E5, $21, $04, $00, $E5, $CD, $59, $03, $F1, $F1, $CD, $F5, $0E, $CD, $0C
.db $11, $CD, $2C, $12, $21, $1C, $C0, $36, $00, $FD, $21, $EC, $C1, $FD, $7E, $00
.db $B7, $28, $0B, $21, $1A, $C0, $FD, $7E, $00, $C6, $FF, $77, $18, $28, $3A, $1A
.db $C0, $FD, $21, $1B, $C0, $FD, $96, $00, $20, $16, $CD, $5C, $36, $01, $08, $00
.db $C5, $E5, $CD, $9A, $39, $F1, $F1, $FD, $21, $1A, $C0, $FD, $75, $00, $18, $DE
.db $3A, $1A, $C0, $32, $1B, $C0, $01, $1F, $C0, $ED, $5B, $1A, $C0, $16, $00, $6B
.db $62, $29, $19, $29, $19, $29, $29, $29, $09, $7E, $32, $1D, $C0, $CD, $42, $11
.db $3A, $E5, $C1, $B7, $28, $10, $21, $1A, $C0, $4E, $06, $00, $21, $1F, $03, $E5
.db $C5, $CD, $59, $03, $F1, $F1, $3A, $EA, $C1, $B7, $C8, $21, $AF, $2C, $E5, $CD
.db $50, $18, $F1, $C9, $DD, $E5, $DD, $21, $00, $00, $DD, $39, $CD, $CB, $11, $CD
.db $AF, $12, $3A, $1E, $C0, $B7, $20, $42, $FD, $21, $1C, $C0, $FD, $34, $00, $FD
.db $7E, $00, $D6, $38, $38, $0E, $FD, $36, $00, $00, $DD, $6E, $04, $DD, $66, $05
.db $36, $03, $18, $54, $01, $1F, $C0, $ED, $5B, $1A, $C0, $16, $00, $6B, $62, $29
.db $19, $29, $19, $29, $29, $29, $09, $4D, $44, $FD, $21, $1C, $C0, $FD, $6E, $00
.db $26, $00, $09, $7E, $32, $1D, $C0, $CD, $42, $11, $CD, $4A, $11, $3A, $E9, $C1
.db $B7, $28, $03, $CD, $87, $12, $DD, $6E, $08, $DD, $66, $09, $E5, $DD, $6E, $06
.db $DD, $66, $07, $E5, $CD, $1C, $13, $F1, $F1, $DD, $CB, $06, $6E, $28, $09, $DD
.db $CB, $08, $6E, $20, $03, $CD, $4E, $10, $DD, $E1, $C9

_LABEL_1584_25:
	ld   hl, $C1E4
	ld   (hl), $00
	ld   hl, $0000
	push hl
	call _LABEL_34A5_7
	pop  af
	ld   l, $00
	call _LABEL_344C_26
	ld   l, $01
	call _LABEL_3438_32
	call _LABEL_1363_35
	call _LABEL_165B_37
	call _LABEL_16DD_50
	ld   hl, $0140
	call _LABEL_33EA_28
	ld   hl, $C1ED
	ld   (hl), $00
	ld   hl, $C1EE
	ld   (hl), $01
_LABEL_15B4_124:
	call _LABEL_35DD_98
	bit  0, l
	jr   z, _LABEL_15F2_99
	call _LABEL_35E5_20
	ld   iy, $C1E4
	ld   a, (iy+0)
	xor  $01
	ld   (iy+0), a
	bit  0, (iy+0)
	jr   z, _LABEL_15E2_100
	ld   hl, $0C08
	push hl
	ld   hl, $1649
	push hl
	call _LABEL_303_101
	pop  af
	pop  af
	call _LABEL_1867_106
	jr   _LABEL_15F2_99

_LABEL_15E2_100:
	ld   hl, $0C08
	push hl
	ld   hl, $1652
	push hl
	call _LABEL_303_101
	pop  af
	pop  af
	call _LABEL_1878_107
_LABEL_15F2_99:
	ld   hl, $C1E4
	bit  0, (hl)
	jr   nz, _LABEL_15B4_124
	ld   a, ($C1ED)
	ld   iy, $C1EE
	sub  (iy+0)
	jr   z, _LABEL_1614_125
	ld   a, (iy+0)
	ld   ($C1ED), a
	ld   a, ($C1ED)
	push af
	inc  sp
	call _LABEL_16EC_126
	inc  sp
_LABEL_1614_125:
	call _LABEL_34E5_15
	call _LABEL_3588_127
	ld   ($C1EF), hl
	ld   hl, ($C1F1)
	push hl
	ld   hl, ($C1EF)
	push hl
	ld   hl, $C1EE
	push hl
	call _LABEL_171E_128
	ld   hl, $0006
	add  hl, sp
	ld   sp, hl
	call _LABEL_3540_16
	call _LABEL_357B_142
	call _LABEL_3552_17
	call _LABEL_1B3C_144
	call _LABEL_1C55_170
	ld   hl, ($C1EF)
	ld   ($C1F1), hl
	jp   _LABEL_15B4_124


; Data from 1649 to 165A (18 bytes)
.db " PAUSED ", $00, "  DEMO  ", $00

_LABEL_165B_37:
	call _LABEL_20A_38
	call _LABEL_23B_39
	ld   iy, $C1E7
	ld   a, (iy+0)
	sub  $08
	jr   c, _LABEL_1672_40
	ld   (iy+0), $08
	jr   _LABEL_16A2_41

_LABEL_1672_40:
	ld   iy, $C1E7
	ld   a, (iy+0)
	sub  $04
	jr   c, _LABEL_1683_48
	ld   (iy+0), $04
	jr   _LABEL_16A2_41

_LABEL_1683_48:
	ld   iy, $C1E7
	ld   a, (iy+0)
	sub  $02
	jr   c, _LABEL_1694_49
	ld   (iy+0), $02
	jr   _LABEL_16A2_41

_LABEL_1694_49:
	ld   iy, $C1E7
	ld   a, (iy+0)
	or   a
	jr   nz, _LABEL_16A2_41
	ld   (iy+0), $04
_LABEL_16A2_41:
	ld   iy, $C1E8
	ld   a, (iy+0)
	or   a
	jr   nz, _LABEL_16B0_42
	ld   (iy+0), $4B
_LABEL_16B0_42:
	ld   iy, $C1E8
	ld   a, (iy+0)
	sub  $19
	jr   nc, _LABEL_16BF_43
	ld   (iy+0), $19
_LABEL_16BF_43:
	ld   iy, $C1EC
	ld   a, (iy+0)
	or   a
	jr   z, _LABEL_16D4_44
	ld   a, $08
	sub  (iy+0)
	jr   nc, _LABEL_16D4_44
	ld   (iy+0), $08
_LABEL_16D4_44:
	call _LABEL_10F7_45
	call _LABEL_11F0_46
	jp   _LABEL_4A4_47

_LABEL_16DD_50:
	ld   a, ($C1E6)
	or   a
	jr   z, _LABEL_16E6_51
	call _LABEL_2A6_52
_LABEL_16E6_51:
	call _LABEL_110C_92
	jp   _LABEL_122C_94

_LABEL_16EC_126:
	ld   iy, $0002
	add  iy, sp
	ld   a, (iy+0)
	sub  $01
	ret  c

	ld   a, $04
	sub  (iy+0)
	ret  c

	ld   e, (iy+0)
	dec  e
	ld   d, $00
	ld   hl, $170A
	add  hl, de
	add  hl, de
	jp   (hl)


; Data from 170A to 171D (20 bytes)
.db $18, $06, $18, $07, $18, $08, $18, $09, $C3, $79, $13, $C3, $D9, $13, $C3, $FB
.db $13, $C3, $61, $14

_LABEL_171E_128:
	push ix
	ld   ix, $0000
	add  ix, sp
	ld   c, (ix+4)
	ld   b, (ix+5)
	ld   a, (bc)
	ld   e, a
	sub  $01
	jr   c, _LABEL_17AA_129
	ld   a, $04
	sub  e
	jr   c, _LABEL_17AA_129
	dec  e
	ld   d, $00
	ld   hl, $1740
	add  hl, de
	add  hl, de
	jp   (hl)


; Data from 1740 to 17A9 (106 bytes)
.db $18, $06, $18, $1D, $18, $34, $18, $4B, $DD, $6E, $08, $DD, $66, $09, $E5, $DD
.db $6E, $06, $DD, $66, $07, $E5, $C5, $CD, $7F, $13, $21, $06, $00, $39, $F9, $18
.db $49, $DD, $6E, $08, $DD, $66, $09, $E5, $DD, $6E, $06, $DD, $66, $07, $E5, $C5
.db $CD, $DF, $13, $21, $06, $00, $39, $F9, $18, $30, $DD, $6E, $08, $DD, $66, $09
.db $E5, $DD, $6E, $06, $DD, $66, $07, $E5, $C5, $CD, $17, $14, $21, $06, $00, $39
.db $F9, $18, $17, $DD, $6E, $08, $DD, $66, $09, $E5, $DD, $6E, $06, $DD, $66, $07
.db $E5, $C5, $CD, $FD, $14, $21, $06, $00, $39, $F9

_LABEL_17AA_129:
	ld   a, ($C1E5)
	or   a
	jr   z, _LABEL_17CF_130
	ld   hl, $0C1F
	push hl
	ld   l, (ix+6)
	ld   h, (ix+7)
	push hl
	call _LABEL_359_131
	pop  af
	ld   hl, $0D1F
	ex   (sp), hl
	ld   l, (ix+8)
	ld   h, (ix+9)
	push hl
	call _LABEL_359_131

; Data from 17CD to 17CE (2 bytes)
.db $F1, $F1

_LABEL_17CF_130:
	pop  ix
	ret


; Data from 17D2 to 17F5 (36 bytes)
.db "stevepro", $00, "CK demo1", $00, "stevepro CK demo1", $00

_LABEL_17F6_167:
	ld   a, ($C2FF)
	or   a
	ret  z

	ld   a, $9F
	out  ($7F), a
	ld   a, $BF
	out  ($7F), a
	ld   a, ($C300)
	or   a
	jr   nz, _LABEL_180D_168
	ld   a, $DF
	out  ($7F), a
_LABEL_180D_168:
	ld   a, ($C301)
	or   a
	jr   nz, _LABEL_1817_169
	ld   a, $FF
	out  ($7F), a
_LABEL_1817_169:
	ld   hl, $C2FF
	ld   (hl), $00
	ret


; Data from 181D to 1866 (74 bytes)
.db $CD, $F6, $17, $21, $FA, $C1, $36, $01, $D1, $C1, $C5, $D5, $ED, $43, $F3, $C1
.db $ED, $43, $F5, $C1, $ED, $43, $F7, $C1, $21, $F9, $C1, $36, $00, $21, $FD, $C1
.db $36, $00, $21, $FB, $C1, $36, $9F, $21, $FF, $C2, $36, $01, $C9, $21, $FA, $C1
.db $36, $00, $C9, $C1, $E1, $E5, $C5, $E5, $CD, $1D, $18, $F1, $21, $FA, $C1, $36
.db $00, $C9, $FD, $21, $FF, $C2, $FD, $6E, $00, $C9

_LABEL_1867_106:
	ld   a, $9F
	out  ($7F), a
	ld   a, $BF
	out  ($7F), a
	ld   a, $DF
	out  ($7F), a
	ld   a, $FF
	out  ($7F), a
	ret

_LABEL_1878_107:
	ld   hl, $C1FC
	ld   c, (hl)
	ld   b, $00
	ld   a, ($C2FF)
	or   a
	jr   z, _LABEL_18D2_108
	ld   iy, $C200
	ld   l, (iy+0)
	ld   h, $00
	add  hl, bc
	ld   a, $0F
	cp   l
	ld   a, $00
	sbc  a, h
	jp   po, _LABEL_1899_109
	xor  $80
_LABEL_1899_109:
	jp   p, _LABEL_18A0_110
	ld   a, $0F
	jr   _LABEL_18A7_111

_LABEL_18A0_110:
	ld   hl, $C1FC
	ld   a, ($C200)
	add  a, (hl)
_LABEL_18A7_111:
	or   $90
	out  ($7F), a
	ld   iy, $C201
	ld   l, (iy+0)
	ld   h, $00
	add  hl, bc
	ld   a, $0F
	cp   l
	ld   a, $00
	sbc  a, h
	jp   po, _LABEL_18C0_112
	xor  $80
_LABEL_18C0_112:
	jp   p, _LABEL_18C7_113
	ld   a, $0F
	jr   _LABEL_18CE_114

_LABEL_18C7_113:
	ld   hl, $C1FC
	ld   a, ($C201)
	add  a, (hl)
_LABEL_18CE_114:
	or   $B0
	out  ($7F), a
_LABEL_18D2_108:
	ld   a, ($C300)
	or   a
	jr   z, _LABEL_18E1_115
	ld   a, ($C207)
	or   $D0
	out  ($7F), a
	jr   _LABEL_190E_116

_LABEL_18E1_115:
	ld   a, ($C2FF)
	or   a
	jr   z, _LABEL_190E_116
	ld   iy, $C202
	ld   l, (iy+0)
	ld   h, $00
	add  hl, bc
	ld   a, $0F
	cp   l
	ld   a, $00
	sbc  a, h
	jp   po, _LABEL_18FC_121
	xor  $80
_LABEL_18FC_121:
	jp   p, _LABEL_1903_122
	ld   a, $0F
	jr   _LABEL_190A_123

_LABEL_1903_122:
	ld   hl, $C1FC
	ld   a, ($C202)
	add  a, (hl)
_LABEL_190A_123:
	or   $D0
	out  ($7F), a
_LABEL_190E_116:
	ld   a, ($C301)
	or   a
	jr   z, _LABEL_191C_117
	ld   a, ($C208)
	or   $F0
	out  ($7F), a
	ret

_LABEL_191C_117:
	ld   a, ($C2FF)
	or   a
	ret  z

	ld   iy, $C203
	ld   l, (iy+0)
	ld   h, $00
	add  hl, bc
	ld   a, $0F
	cp   l
	ld   a, $00
	sbc  a, h
	jp   po, _LABEL_1936_118
	xor  $80
_LABEL_1936_118:
	jp   p, _LABEL_193D_119
	ld   a, $0F
	jr   _LABEL_1944_120

_LABEL_193D_119:
	ld   hl, $C1FC
	ld   a, ($C203)
	add  a, (hl)
_LABEL_1944_120:
	or   $F0
	out  ($7F), a
	ret


; Data from 1949 to 1A0D (197 bytes)
.db $DD, $E5, $DD, $21, $00, $00, $DD, $39, $DD, $7E, $04, $32, $FC, $C1, $3A, $FF
.db $C2, $B7, $CA, $0B, $1A, $21, $00, $C2, $5E, $16, $00, $21, $FC, $C1, $4E, $06
.db $00, $6B, $62, $09, $3E, $0F, $BD, $3E, $00, $9C, $E2, $78, $19, $EE, $80, $F2
.db $7F, $19, $3E, $0F, $18, $07, $21, $FC, $C1, $3A, $00, $C2, $86, $F6, $90, $D3
.db $7F, $FD, $21, $01, $C2, $FD, $6E, $00, $26, $00, $09, $3E, $0F, $BD, $3E, $00
.db $9C, $E2, $9F, $19, $EE, $80, $F2, $A6, $19, $3E, $0F, $18, $07, $21, $FC, $C1
.db $3A, $01, $C2, $86, $F6, $B0, $D3, $7F, $3A, $00, $C3, $B7, $20, $27, $FD, $21
.db $02, $C2, $FD, $6E, $00, $26, $00, $09, $3E, $0F, $BD, $3E, $00, $9C, $E2, $CC
.db $19, $EE, $80, $F2, $D3, $19, $3E, $0F, $18, $07, $21, $FC, $C1, $3A, $02, $C2
.db $86, $F6, $D0, $D3, $7F, $3A, $01, $C3, $B7, $20, $27, $FD, $21, $03, $C2, $FD
.db $6E, $00, $26, $00, $09, $3E, $0F, $BD, $3E, $00, $9C, $E2, $F9, $19, $EE, $80
.db $F2, $00, $1A, $3E, $0F, $18, $07, $21, $FC, $C1, $3A, $03, $C2, $86, $F6, $F0
.db $D3, $7F, $DD, $E1, $C9

_LABEL_1A0E_182:
	push ix
	ld   ix, $0000
	add  ix, sp
	push af
	ld   a, ($C302)
	or   a
	jp   z, _LABEL_1AC2_183
	ld   a, ($C1FC)
	ld   (ix+254), a
	ld   (ix+255), $00
	ld   a, ($C300)
	or   a
	jr   z, _LABEL_1A76_184
	ld   a, ($C2FF)
	or   a
	jr   z, _LABEL_1A6D_185
	ld   a, ($C204)
	and  $0F
	or   $C0
	out  ($7F), a
	ld   a, ($C206)
	and  $3F
	out  ($7F), a
	ld   a, ($C202)
	and  $0F
	ld   c, a
	ld   e, c
	ld   d, $00
	pop  hl
	push hl
	add  hl, de
	ld   a, $0F
	cp   l
	ld   a, $00
	sbc  a, h
	jp   po, _LABEL_1A5B_186
	xor  $80
_LABEL_1A5B_186:
	jp   p, _LABEL_1A62_187
	ld   a, $0F
	jr   _LABEL_1A67_188

_LABEL_1A62_187:
	ld   a, c
	ld   hl, $C1FC
	add  a, (hl)
_LABEL_1A67_188:
	or   $D0
	out  ($7F), a
	jr   _LABEL_1A71_189

_LABEL_1A6D_185:
	ld   a, $DF
	out  ($7F), a
_LABEL_1A71_189:
	ld   hl, $C300
	ld   (hl), $00
_LABEL_1A76_184:
	ld   a, ($C301)
	or   a
	jr   z, _LABEL_1ABD_190
	ld   a, ($C2FF)
	or   a
	jr   z, _LABEL_1AB4_191
	ld   a, ($C205)
	and  $0F
	or   $E0
	out  ($7F), a
	ld   a, ($C203)
	and  $0F
	ld   c, a
	ld   e, c
	ld   d, $00
	pop  hl
	push hl
	add  hl, de
	ld   a, $0F
	cp   l
	ld   a, $00
	sbc  a, h
	jp   po, _LABEL_1AA2_192
	xor  $80
_LABEL_1AA2_192:
	jp   p, _LABEL_1AA9_193
	ld   a, $0F
	jr   _LABEL_1AAE_194

_LABEL_1AA9_193:
	ld   a, c
	ld   hl, $C1FC
	add  a, (hl)
_LABEL_1AAE_194:
	or   $F0
	out  ($7F), a
	jr   _LABEL_1AB8_195

_LABEL_1AB4_191:
	ld   a, $FF
	out  ($7F), a
_LABEL_1AB8_195:
	ld   hl, $C301
	ld   (hl), $00
_LABEL_1ABD_190:
	ld   hl, $C302
	ld   (hl), $00
_LABEL_1AC2_183:
	ld   sp, ix
	pop  ix
	ret


; Data from 1AC7 to 1B3B (117 bytes)
.db $CD, $0E, $1A, $21, $10, $C2, $36, $00, $D1, $C1, $C5, $D5, $ED, $43, $09, $C2
.db $ED, $43, $0B, $C2, $ED, $43, $0D, $C2, $21, $0F, $C2, $36, $00, $21, $11, $C2
.db $36, $00, $21, $04, $00, $39, $7E, $0F, $30, $04, $0E, $01, $18, $02, $0E, $00
.db $21, $00, $C3, $71, $21, $04, $00, $39, $7E, $E6, $02, $28, $04, $0E, $01, $18
.db $02, $0E, $00, $21, $01, $C3, $71, $21, $02, $C3, $36, $01, $C9, $21, $10, $C2
.db $36, $00, $C9, $FD, $21, $02, $C3, $FD, $6E, $00, $C9, $21, $04, $00, $39, $7E
.db $F5, $33, $21, $03, $00, $39, $4E, $23, $46, $C5, $CD, $C7, $1A, $F1, $33, $21
.db $10, $C2, $36, $01, $C9

_LABEL_1B3C_144:
	ld   a, ($C2FF)
	or   a
	ret  z

	ld   a, ($C1F9)
	or   a
	jp   nz, _LABEL_1BD0_145
	ld   hl, ($C1F5)
_LABEL_1B4B_151:
	ld   b, (hl)
	inc  hl
	ld   a, ($C1FD)
	or   a
	jr   z, _LABEL_1B5C_146
	dec  a
	ld   ($C1FD), a
	jr   nz, _LABEL_1B5C_146
	ld   hl, ($C1FE)
_LABEL_1B5C_146:
	ld   a, b
	cp   $80
	jr   c, _LABEL_1BD5_147
	ld   ($C1FB), a
	bit  4, a
	jr   nz, _LABEL_1BA0_148
	bit  6, a
	jp   z, _LABEL_1BFC_149
	bit  5, a
	jr   z, _LABEL_1B94_150
	ld   ($C205), a
	ld   a, ($C301)
	or   a
	jp   nz, _LABEL_1B4B_151
	ld   a, ($C205)
	and  $03
	cp   $03
	jr   nz, _LABEL_1BFB_152
	ld   a, ($C302)
	or   a
	jr   z, _LABEL_1BFB_152
	ld   ($C301), a
	ld   a, $FF
	out  ($7F), a
	jp   _LABEL_1B4B_151

_LABEL_1B94_150:
	ld   ($C204), a
	ld   a, ($C300)
	or   a
	jr   z, _LABEL_1BFB_152
	jp   _LABEL_1B4B_151

_LABEL_1BA0_148:
	bit  6, a
	jr   nz, _LABEL_1BB4_153
	bit  5, a
	jr   z, _LABEL_1BAE_154
	ld   ($C201), a
	jp   _LABEL_1C02_155

_LABEL_1BAE_154:
	ld   ($C200), a
	jp   _LABEL_1C02_155

_LABEL_1BB4_153:
	bit  5, a
	jr   z, _LABEL_1BC4_157
	ld   ($C203), a
	ld   a, ($C301)
	or   a
	jr   z, _LABEL_1C01_158
	jp   _LABEL_1B4B_151

_LABEL_1BC4_157:
	ld   ($C202), a
	ld   a, ($C300)
	or   a
	jr   z, _LABEL_1C01_158
	jp   _LABEL_1B4B_151

_LABEL_1BD0_145:
	dec  a
	ld   ($C1F9), a
	ret

_LABEL_1BD5_147:
	cp   $40
	jr   c, _LABEL_1BDF_159
	ld   a, ($C1FB)
	jp   _LABEL_1C1A_160

_LABEL_1BDF_159:
	cp   $38
	jr   z, _LABEL_1BEA_162
	jr   c, _LABEL_1BEE_163
	and  $07
	ld   ($C1F9), a
_LABEL_1BEA_162:
	ld   ($C1F5), hl
	ret

_LABEL_1BEE_163:
	cp   $08
	jr   nc, _LABEL_1C34_164
	cp   $00
	jr   z, _LABEL_1C27_165
	cp   $01
	jr   z, _LABEL_1C21_166
	ret

_LABEL_1BFB_152:
	ld   a, b
_LABEL_1BFC_149:
	out  ($7F), a
	jp   _LABEL_1B4B_151

_LABEL_1C01_158:
	ld   a, b
_LABEL_1C02_155:
	ld   c, a
	and  $0F
	ld   b, a
	ld   a, ($C1FC)
	add  a, b
	cp   $0F
	jr   c, _LABEL_1C10_156
	ld   a, $0F
_LABEL_1C10_156:
	ld   b, a
	ld   a, c
	and  $F0
	or   b
	out  ($7F), a
	jp   _LABEL_1B4B_151

_LABEL_1C1A_160:
	bit  6, a
	jr   nz, _LABEL_1C47_161
	jp   _LABEL_1BFB_152

_LABEL_1C21_166:
	ld   ($C1F7), hl
	jp   _LABEL_1B4B_151

_LABEL_1C27_165:
	ld   a, ($C1FA)
	or   a
	jp   z, _LABEL_17F6_167
	ld   hl, ($C1F7)
	jp   _LABEL_1B4B_151

_LABEL_1C34_164:
	sub  $04
	ld   ($C1FD), a
	ld   c, (hl)
	inc  hl
	ld   b, (hl)
	inc  hl
	ld   ($C1FE), hl
	ld   hl, ($C1F3)
	add  hl, bc
	jp   _LABEL_1B4B_151

_LABEL_1C47_161:
	ld   a, b
	ld   ($C206), a
	ld   a, ($C300)
	or   a
	jr   z, _LABEL_1BFB_152
	jp   _LABEL_1B4B_151


; Data from 1C54 to 1C54 (1 bytes)
.db $C9

_LABEL_1C55_170:
	ld   a, ($C302)
	or   a
	ret  z

	ld   a, ($C20F)
	or   a
	jp   nz, _LABEL_1C90_171
	ld   hl, ($C20B)
_LABEL_1C64_176:
	ld   b, (hl)
	inc  hl
	ld   a, ($C211)
	or   a
	jr   z, _LABEL_1C75_172
	dec  a
	ld   ($C211), a
	jr   nz, _LABEL_1C75_172
	ld   hl, ($C212)
_LABEL_1C75_172:
	ld   a, b
	cp   $40
	jp   c, _LABEL_1C95_173
	bit  4, a
	jr   z, _LABEL_1C8B_174
	bit  5, a
	jr   nz, _LABEL_1C88_175
	ld   ($C207), a
	jr   _LABEL_1C8B_174

_LABEL_1C88_175:
	ld   ($C208), a
_LABEL_1C8B_174:
	out  ($7F), a
	jp   _LABEL_1C64_176

_LABEL_1C90_171:
	dec  a
	ld   ($C20F), a
	ret

_LABEL_1C95_173:
	cp   $38
	jr   z, _LABEL_1CA0_177
	jr   c, _LABEL_1CA4_178
	and  $07
	ld   ($C20F), a
_LABEL_1CA0_177:
	ld   ($C20B), hl
	ret

_LABEL_1CA4_178:
	cp   $08
	jr   nc, _LABEL_1CC7_179
	cp   $00
	jr   z, _LABEL_1CB7_180
	cp   $01
	jr   z, _LABEL_1CB1_181
	ret

_LABEL_1CB1_181:
	ld   ($C20D), hl
	jp   _LABEL_1C64_176

_LABEL_1CB7_180:
	ld   a, ($C210)
	or   a
	jp   z, _LABEL_1A0E_182
	ld   hl, ($C20D)
	ld   ($C20B), hl
	jp   _LABEL_1C64_176

_LABEL_1CC7_179:
	sub  $04
	ld   ($C211), a
	ld   c, (hl)
	inc  hl
	ld   b, (hl)
	inc  hl
	ld   ($C212), hl
	ld   hl, ($C209)
	add  hl, bc
	jp   _LABEL_1C64_176


; Data from 1CDA to 3341 (5736 bytes)
.incbin "output.sms.dat.7"

_LABEL_3342_132:
	pop  af
	pop  hl
	pop  de
	push de
	push hl
	push af
	jr   _LABEL_3354_133


; Data from 334A to 3353 (10 bytes)
.db $21, $03, $00, $39, $5E, $2B, $6E, $26, $00, $54

_LABEL_3354_133:
	ld   a, e
	and  $80
	or   d
	jr   nz, _LABEL_336A_134
	ld   b, $10
	adc  hl, hl
_LABEL_335E_136:
	rla
	sub  e
	jr   nc, _LABEL_3363_135
	add  a, e
_LABEL_3363_135:
	ccf
	adc  hl, hl
	djnz _LABEL_335E_136
	ld   e, a
	ret

_LABEL_336A_134:
	ld   b, $09
	ld   a, l
	ld   l, h
	ld   h, $00
	rr   l
_LABEL_3372_138:
	adc  hl, hl
	sbc  hl, de
	jr   nc, _LABEL_3379_137
	add  hl, de
_LABEL_3379_137:
	ccf
	rla
	djnz _LABEL_3372_138
	rl   b
	ld   d, b
	ld   e, a
	ex   de, hl
	ret

_LABEL_3383_6:
	ld   hl, $0000
	push hl
	call _LABEL_34A5_7
	pop  af
	ld   c, $00
_LABEL_338D_14:
	ld   hl, $33D7
	ld   b, $00
	add  hl, bc
	ld   b, (hl)
	di
	ld   a, b
	out  ($BF), a
	ld   a, c
	set  7, a
	out  ($BF), a
	ei
	inc  c
	ld   a, c
	sub  $0B
	jr   c, _LABEL_338D_14
	call _LABEL_34E5_15
	call _LABEL_3540_16
	call _LABEL_3552_17
	call _LABEL_35E5_20
_LABEL_33B0_21:
	in   a, ($7E)
	ld   b, a
	ld   a, $80
	sub  b
	jr   c, _LABEL_33B0_21
_LABEL_33B8_22:
	in   a, ($7E)
	sub  $80
	jr   c, _LABEL_33B8_22
_LABEL_33BE_23:
	in   a, ($7E)
	ld   c, a
	in   a, ($7E)
	sub  c
	jr   nc, _LABEL_33BE_23
	ld   a, c
	sub  $E7
	jr   c, _LABEL_33D1_24
	ld   hl, $C217
	ld   (hl), $80
	ret

_LABEL_33D1_24:
	ld   hl, $C217
	ld   (hl), $40
	ret


; Data from 33D7 to 33E9 (19 bytes)
.db $04, $20, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $FF, $FD, $21, $17, $C2, $FD
.db $6E, $00, $C9

_LABEL_33EA_28:
	ld   c, l
	ld   e, h
	ld   d, $00
	ld   hl, $C303
	add  hl, de
	ld   a, (hl)
	or   c
	ld   c, a
	ld   (hl), c
	di
	ld   a, c
	out  ($BF), a
	ld   a, e
	set  7, a
	out  ($BF), a
	ei
	ret

_LABEL_3401_31:
	ld   a, l
	ld   e, h
	cpl
	ld   b, a
	ld   d, $00
	ld   hl, $C303
	add  hl, de
	ld   a, (hl)
	and  b
	ld   c, a
	ld   (hl), c
	di
	ld   a, c
	out  ($BF), a
	ld   a, e
	set  7, a
	out  ($BF), a
	ei
	ret


; Data from 341A to 3437 (30 bytes)
.db $F3, "}", $D3, $BF, ">", $88, $D3, $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $89, $D3
.db $BF, $FB, $C9, $F3, "}", $D3, $BF, ">", $87, $D3, $BF, $FB, $C9

_LABEL_3438_32:
	bit  0, l
	jr   z, _LABEL_3440_33
	ld   c, $FB
	jr   _LABEL_3442_34

_LABEL_3440_33:
	ld   c, $FF
_LABEL_3442_34:
	di
	ld   a, c
	out  ($BF), a
	ld   a, $86
	out  ($BF), a
	ei
	ret

_LABEL_344C_26:
	ld   c, l
	bit  0, c
	jr   z, _LABEL_3460_27
	push bc
	ld   hl, $0102
	call _LABEL_33EA_28
	pop  bc
	ld   hl, $C305
	ld   (hl), $10
	jr   _LABEL_346D_29

_LABEL_3460_27:
	push bc
	ld   hl, $0102
	call _LABEL_3401_31
	pop  bc
	ld   hl, $C305
	ld   (hl), $08
_LABEL_346D_29:
	bit  1, c
	jr   z, _LABEL_3485_30
	ld   hl, $0101
	call _LABEL_33EA_28
	ld   hl, $C306
	ld   (hl), $10
	ld   iy, $C305
	sla  (iy+0)
	ret

_LABEL_3485_30:
	ld   hl, $0101
	call _LABEL_3401_31
	ld   hl, $C306
	ld   (hl), $08
	ret


; Data from 3491 to 34A4 (20 bytes)
.db $21, $02, $00, $39, $4E, $06, $00, $21, $00, $C0, $09, $CF, $21, $03, $00, $39
.db $7E, $D3, $BE, $C9

_LABEL_34A5_7:
	ld   hl, $0002
	add  hl, sp
	ld   c, (hl)
	ld   b, $00
	ld   hl, $C010
	add  hl, bc
	rst  $8
	ld   hl, $0003
	add  hl, sp
	ld   a, (hl)
	out  ($BE), a
	ret

_LABEL_34B9_90:
	ld   de, $C000
	ld   c, $BF
	di
	out  (c), e
	out  (c), d
	ei
	ld   b, $10
	ld   c, $BE
_LABEL_34C8_91:
	outi
	jr   nz, _LABEL_34C8_91
	ret


; Data from 34CD to 34E4 (24 bytes)
.db $11, $10, $C0, $0E, $BF, $F3, $ED, $59, $ED, $51, $FB, $06, $10, $0E, $BE, $ED
.db $A3, $20, $FC, $C9, $7D, $D3, $BE, $C9

_LABEL_34E5_15:
	ld   hl, $C2DC
	ld   (hl), $00
	ret


; Data from 34EB to 353F (85 bytes)
.db $3A, $DC, $C2, $D6, $40, $30, $4B, $FD, $21, $03, $00, $FD, $39, $FD, $7E, $00
.db $D6, $D1, $28, $3E, $3E, $1C, $21, $DC, $C2, $86, $4F, $3E, $C2, $CE, $00, $47
.db $FD, $5E, $00, $1D, $7B, $02, $3A, $DC, $C2, $87, $4F, $21, $5C, $C2, $06, $00
.db $09, $FD, $21, $02, $00, $FD, $39, $FD, $7E, $00, $77, $23, $FD, $21, $04, $00
.db $FD, $39, $FD, $7E, $00, $77, $FD, $21, $DC, $C2, $FD, $4E, $00, $FD, $34, $00
.db $69, $C9, $2E, $FF, $C9

_LABEL_3540_16:
	ld   a, ($C2DC)
	sub  $40
	ret  nc

	ld   bc, $C21C
	ld   hl, ($C2DC)
	ld   h, $00
	add  hl, bc
	ld   (hl), $D0
	ret

_LABEL_3552_17:
	ld   hl, $7F00
	rst  $8
	ld   bc, $C21C
	ld   e, $40
_LABEL_355B_18:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_355B_18
	ld   hl, $7F80
	rst  $8
	ld   bc, $C25C
	ld   e, $80
_LABEL_356F_19:
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	ld   d, e
	dec  d
	ld   a, d
	ld   e, a
	or   a
	jr   nz, _LABEL_356F_19
	ret

_LABEL_357B_142:
	ld   hl, $C214
	ld   (hl), $00
_LABEL_3580_143:
	ld   hl, $C214
	bit  0, (hl)
	jr   z, _LABEL_3580_143
	ret

_LABEL_3588_127:
	ld   hl, ($C218)
	ret


; Data from 358C to 35DC (81 bytes)
.db $FD, $21, $1A, $C2, $FD, $7E, $00, $2F, $4F, $FD, $7E, $01, $2F, $47, $FD, $21
.db $18, $C2, $FD, $7E, $00, $A1, $6F, $FD, $7E, $01, $A0, $67, $C9, $3A, $18, $C2
.db $FD, $21, $1A, $C2, $FD, $A6, $00, $6F, $3A, $19, $C2, $FD, $21, $1A, $C2, $FD
.db $A6, $01, $67, $C9, $FD, $21, $18, $C2, $FD, $7E, $00, $2F, $4F, $FD, $7E, $01
.db $2F, $47, $79, $FD, $21, $1A, $C2, $FD, $A6, $00, $6F, $78, $FD, $A6, $01, $67
.db $C9

_LABEL_35DD_98:
	ld   iy, $C216
	ld   l, (iy+0)
	ret

_LABEL_35E5_20:
	ld   hl, $C216
	ld   (hl), $00
	ret


; Data from 35EB to 3612 (40 bytes)
.db $21, $02, $00, $39, $7E, $32, $DD, $C2, $21, $03, $00, $39, $7E, $32, $DE, $C2
.db $C9, $21, $02, $00, $39, $4E, $F3, $79, $D3, $BF, $3E, $8A, $D3, $BF, $FB, $C9
.db $DB, $7E, $6F, $C9, $DB, $7F, $6F, $C9

_LABEL_3613_10:
	push af
	push hl
	in   a, ($BF)
	ld   ($C215), a
	rlca
	jr   nc, _LABEL_3636_11
	ld   hl, $C214
	ld   (hl), $01
	ld   hl, ($C218)
	ld   ($C21A), hl
	in   a, ($DC)
	cpl
	ld   hl, $C218
	ld   (hl), a
	in   a, ($DD)
	cpl
	inc  hl
	ld   (hl), a
	jr   _LABEL_3644_12

_LABEL_3636_11:
	push bc
	push de
	push iy
	ld   hl, ($C2DD)
	call _LABEL_38AA_13
	pop  iy
	pop  de
	pop  bc
_LABEL_3644_12:
	pop  hl
	pop  af
	ei
	reti

_LABEL_3649_197:
	push af
	push bc
	push de
	push hl
	push iy
	ld   hl, $C216
	ld   (hl), $01
	pop  iy
	pop  hl
	pop  de
	pop  bc
	pop  af
	retn


; Data from 365C to 36C8 (109 bytes)
.db $2A, $09, $C3, $E5, $2A, $07, $C3, $E5, $21, $C6, $41, $E5, $21, $6D, $4E, $E5
.db $CD, $1F, $3A, $F1, $F1, $F1, $F1, $4D, $44, $79, $21, $07, $C3, $C6, $39, $77
.db $78, $CE, $30, $23, $77, $7B, $CE, $00, $23, $77, $7A, $CE, $00, $23, $77, $F5
.db $FD, $21, $07, $C3, $FD, $6E, $00, $FD, $66, $01, $FD, $5E, $02, $FD, $56, $03
.db $F1, $06, $10, $CB, $3A, $CB, $1B, $CB, $1C, $CB, $1D, $10, $F6, $CB, $BC, $C9
.db $21, $02, $00, $39, $7E, $32, $07, $C3, $21, $03, $00, $39, $7E, $FD, $21, $07
.db $C3, $FD, $77, $01, $FD, $36, $02, $00, $FD, $36, $03, $00, $C9

_LABEL_36C9_72:
	push ix
	ld   ix, $0000
	add  ix, sp
	ld   hl, $FFF0
	add  hl, sp
	ld   sp, hl
	ld   (ix+254), $00
	ld   (ix+255), $00
	ld   (ix+243), $00
	ld   (ix+244), $00
	ld   l, (ix+5)
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   (ix+252), l
	ld   a, h
	or   $78
	ld   (ix+253), a
	ld   a, (ix+4)
	ld   (ix+250), a
	ld   (ix+251), $00
	sla  (ix+250)
	rl   (ix+251)
	ld   a, (ix+252)
	or   (ix+250)
	ld   e, a
	ld   a, (ix+253)
	or   (ix+251)
	ld   d, a
	ld   a, (ix+8)
	ld   (ix+250), a
	ld   (ix+241), a
	ld   (ix+240), $00
	ld   l, e
	ld   h, d
	rst  $8
_LABEL_372A_81:
	ld   l, (ix+6)
	ld   h, (ix+7)
	ld   a, (hl)
	ld   (ix+242), a
	inc  hl
	ld   (ix+6), l
	ld   (ix+7), h
	ld   a, (ix+6)
	ld   (ix+252), a
	ld   a, (ix+7)
	ld   (ix+253), a
	ld   a, (ix+242)
	and  $02
	ld   (ix+249), a
	ld   a, (ix+242)
	rrca
	rrca
	and  $3F
	ld   (ix+248), a
	bit  0, (ix+242)
	jp   z, _LABEL_3802_73
	ld   (ix+246), $00
	ld   a, (ix+255)
	ld   (ix+247), a
	ld   c, (ix+252)
	ld   b, (ix+253)
	inc  bc
	ld   l, (ix+252)
	ld   h, (ix+253)
	ld   l, (hl)
	ld   a, (ix+248)
	add  a, $02
	ld   (ix+245), a
	ld   h, $00
	ld   a, l
	or   (ix+246)
	ld   l, a
	ld   a, h
	or   (ix+247)
	ld   h, a
	ld   a, (ix+249)
	or   a
	jr   z, _LABEL_37CE_74
	ld   (ix+6), c
	ld   (ix+7), b
	ld   c, l
	ld   b, h
	ld   l, (ix+245)
_LABEL_379D_79:
	ld   a, l
	or   a
	jp   z, _LABEL_387B_75
	push hl
	ld   l, c
	ld   h, b
	rst  $18
	pop  hl
	dec  (ix+241)
	ld   a, (ix+241)
	or   a
	jr   nz, _LABEL_37C5_77
	ld   a, e
	add  a, $40
	ld   e, a
	ld   a, d
	adc  a, $00
	ld   d, a
	push hl
	push bc
	ld   l, e
	ld   h, d
	rst  $8
	pop  bc
	pop  hl
	ld   a, (ix+250)
	ld   (ix+241), a
_LABEL_37C5_77:
	ld   a, $01
	sub  l
	jr   nc, _LABEL_37CB_78
	inc  bc
_LABEL_37CB_78:
	dec  l
	jr   _LABEL_379D_79

_LABEL_37CE_74:
	ld   (ix+6), c
	ld   (ix+7), b
	ld   (ix+254), l
	ld   (ix+255), h
	ld   b, (ix+245)
_LABEL_37DD_83:
	ld   a, b
	or   a
	jp   z, _LABEL_388B_80
	ld   l, (ix+254)
	ld   h, (ix+255)
	rst  $18
	dec  (ix+241)
	ld   a, (ix+241)
	or   a
	jr   nz, _LABEL_37FF_82
	ld   hl, $0040
	add  hl, de
	ld   e, l
	ld   d, h
	rst  $8
	ld   a, (ix+250)
	ld   (ix+241), a
_LABEL_37FF_82:
	dec  b
	jr   _LABEL_37DD_83

_LABEL_3802_73:
	ld   a, (ix+249)
	or   a
	jr   z, _LABEL_3831_84
	bit  2, (ix+242)
	jr   z, _LABEL_381E_85
	ld   a, (ix+254)
	ld   (ix+243), a
	ld   a, (ix+255)
	ld   (ix+244), a
	ld   (ix+240), $01
_LABEL_381E_85:
	ld   c, (ix+242)
	srl  c
	srl  c
	srl  c
	ld   (ix+255), c
	ld   (ix+254), $00
	jp   _LABEL_372A_81

_LABEL_3831_84:
	ld   l, (ix+248)
	ld   a, l
	or   a
	jr   z, _LABEL_38A5_86
	ld   a, (ix+255)
	ld   (ix+246), a
	ld   (ix+247), $00
	ld   c, (ix+252)
	ld   b, (ix+253)
	ld   (ix+245), l
_LABEL_384B_89:
	ld   a, (ix+245)
	or   a
	jr   z, _LABEL_3885_87
	ld   a, (bc)
	out  ($BE), a
	inc  bc
	nop
	nop
	nop
	ld   a, (ix+246)
	out  ($BE), a
	dec  (ix+241)
	ld   a, (ix+241)
	or   a
	jr   nz, _LABEL_3876_88
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	push bc
	ld   l, e
	ld   h, d
	rst  $8
	pop  bc
	ld   a, (ix+250)
	ld   (ix+241), a
_LABEL_3876_88:
	dec  (ix+245)
	jr   _LABEL_384B_89

_LABEL_387B_75:
	ld   (ix+254), c
	ld   (ix+255), b
	jr   _LABEL_388B_80


; Data from 3883 to 3884 (2 bytes)
.db $18, $06

_LABEL_3885_87:
	ld   (ix+6), c
	ld   (ix+7), b
_LABEL_388B_80:
	bit  0, (ix+240)
	jp   z, _LABEL_372A_81
	ld   a, (ix+243)
	ld   (ix+254), a
	ld   a, (ix+244)
	ld   (ix+255), a
	ld   (ix+240), $00
	jp   _LABEL_372A_81

_LABEL_38A5_86:
	ld   sp, ix
	pop  ix
	ret

_LABEL_38AA_13:
	jp   (hl)

_LABEL_38AB_53:
	ld   iy, $0004
	add  iy, sp
	ld   l, (iy+0)
	ld   h, (iy+1)
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	set  6, h
	rst  $8
	pop  bc
	pop  ix
	push ix
	push bc
	ld   c, (ix+0)
	inc  ix
	ld   b, (ix+0)
	inc  ix
_LABEL_38CF_68:
	push bc
	ld   b, $04
	ld   de, $C2DF
	ld   c, (ix+0)
	inc  ix
_LABEL_38DA_65:
	rlc  c
	jr   nc, _LABEL_3921_54
	rlc  c
	jr   c, _LABEL_391D_55
	ld   a, (ix+0)
	inc  ix
	ex   de, hl
	ld   d, a
	and  $03
	add  a, a
	add  a, a
	add  a, a
	ld   e, a
	ld   a, d
	ld   d, $00
	ld   iy, $C2DF
	add  iy, de
	ex   de, hl
	cp   $03
	jr   c, _LABEL_393B_56
	cp   $10
	jr   c, _LABEL_3915_57
	cp   $13
	jr   c, _LABEL_3940_58
	cp   $20
	jr   c, _LABEL_3915_57
	cp   $23
	jr   c, _LABEL_3945_59
	cp   $40
	jr   c, _LABEL_3915_57
	cp   $43
	jr   c, _LABEL_394E_60
_LABEL_3915_57:
	ld   h, a
	ld   l, (ix+0)
	inc  ix
	jr   _LABEL_3927_61

_LABEL_391D_55:
	ld   h, $00
	jr   _LABEL_3927_61

_LABEL_3921_54:
	rlc  c
	sbc  a, a
	ld   l, a
	ld   h, $FF
_LABEL_3927_61:
	push bc
	ld   b, $08
_LABEL_392A_63:
	ld   a, l
	rlc  h
	jr   c, _LABEL_3934_62
	ld   a, (ix+0)
	inc  ix
_LABEL_3934_62:
	ld   (de), a
	inc  de
	djnz _LABEL_392A_63
	pop  bc
	jr   _LABEL_396C_64

_LABEL_393B_56:
	ld   hl, $FF00
	jr   _LABEL_3955_71

_LABEL_3940_58:
	ld   hl, $FFFF
	jr   _LABEL_3955_71

_LABEL_3945_59:
	ld   h, (ix+0)
	ld   l, $00
	inc  ix
	jr   _LABEL_3955_71

_LABEL_394E_60:
	ld   h, (ix+0)
	ld   l, $FF
	inc  ix
_LABEL_3955_71:
	push bc
	ld   b, $08
_LABEL_3958_70:
	ld   a, (iy+0)
	inc  iy
	xor  l
	rlc  h
	jr   c, _LABEL_3967_69
	ld   a, (ix+0)
	inc  ix
_LABEL_3967_69:
	ld   (de), a
	inc  de
	djnz _LABEL_3958_70
	pop  bc
_LABEL_396C_64:
	dec  b
	jp   nz, _LABEL_38DA_65
	ld   de, $0008
	ld   c, e
	ld   hl, $C2DF
_LABEL_3977_67:
	ld   b, $04
	push hl
_LABEL_397A_66:
	ld   a, (hl)
	out  ($BE), a
	add  hl, de
	djnz _LABEL_397A_66
	pop  hl
	inc  hl
	dec  c
	jr   nz, _LABEL_3977_67
	pop  bc
	dec  bc
	ld   a, b
	or   c
	jp   nz, _LABEL_38CF_68
	ret


; Data from 398D to 39B1 (37 bytes)
.db $21, $03, $00, $39, $5E, $2B, $6E, $CD, $CD, $39, $C3, $FB, $39, $F1, $E1, $D1
.db $D5, $E5, $F5, $CD, $D5, $39, $C3, $FB, $39, $21, $03, $00, $39, $5E, $2B, $6E
.db $CD, $51, $33, $EB, $C9

_LABEL_39B2_139:
	pop  af
	pop  hl
	pop  de
	push de
	push hl
	push af
	call _LABEL_3354_133
	ex   de, hl
	ret


; Data from 39BD to 3BAC (496 bytes)
.db $F1, $E1, $D1, $D5, $E5, $F5, $C3, $D5, $39, $21, $03, $00, $39, $5E, $2B, $6E
.db $7D, $07, $9F, $67, $7B, $07, $9F, $57, $7C, $AA, $17, $7C, $F5, $17, $30, $06
.db $97, $95, $6F, $9F, $94, $67, $CB, $7A, $28, $06, $97, $93, $5F, $9F, $92, $57
.db $CD, $54, $33, $F1, $D0, $47, $97, $95, $6F, $9F, $94, $67, $78, $C9, $17, $EB
.db $D0, $97, $95, $6F, $9F, $94, $67, $C9, $F1, $C1, $D1, $D5, $C5, $F5, $AF, $6F
.db $B0, $06, $10, $20, $04, $06, $08, $79, $29, $CB, $11, $17, $30, $01, $19, $10
.db $F7, $C9, $DD, $E5, $DD, $21, $00, $00, $DD, $39, $21, $FA, $FF, $39, $F9, $21
.db $0A, $00, $39, $EB, $4B, $42, $03, $03, $DD, $71, $FE, $DD, $70, $FF, $6B, $62
.db $23, $23, $4E, $23, $46, $21, $0E, $00, $39, $DD, $75, $FC, $DD, $74, $FD, $DD
.db $6E, $FC, $DD, $66, $FD, $7E, $23, $66, $6F, $D5, $E5, $C5, $CD, $05, $3A, $F1
.db $F1, $4D, $44, $D1, $DD, $6E, $FE, $DD, $66, $FF, $71, $23, $70, $4B, $42, $03
.db $03, $DD, $71, $FE, $DD, $70, $FF, $6B, $62, $23, $23, $7E, $DD, $77, $FA, $23
.db $7E, $DD, $77, $FB, $C1, $E1, $E5, $C5, $23, $23, $4E, $23, $46, $6B, $62, $7E
.db $23, $66, $6F, $D5, $E5, $C5, $CD, $05, $3A, $F1, $F1, $D1, $DD, $7E, $FA, $85
.db $4F, $DD, $7E, $FB, $8C, $47, $DD, $6E, $FE, $DD, $66, $FF, $71, $23, $70, $4B
.db $42, $03, $03, $33, $33, $C5, $6B, $62, $23, $23, $4E, $23, $46, $6B, $62, $23
.db $7E, $DD, $77, $FE, $DD, $6E, $FC, $DD, $66, $FD, $23, $66, $D5, $C5, $DD, $5E
.db $FE, $2E, $00, $55, $06, $08, $29, $30, $01, $19, $10, $FA, $C1, $D1, $09, $4D
.db $44, $E1, $E5, $71, $23, $70, $C1, $E1, $E5, $C5, $4E, $6B, $62, $23, $66, $D5
.db $59, $2E, $00, $55, $06, $08, $29, $30, $01, $19, $10, $FA, $D1, $4D, $44, $DD
.db $6E, $FC, $DD, $66, $FD, $23, $E5, $FD, $E1, $6B, $62, $7E, $DD, $77, $FA, $DD
.db $6E, $FC, $DD, $66, $FD, $23, $6E, $D5, $C5, $5D, $DD, $66, $FA, $2E, $00, $55
.db $06, $08, $29, $30, $01, $19, $10, $FA, $C1, $D1, $FD, $75, $00, $FD, $74, $01
.db $DD, $6E, $FC, $DD, $66, $FD, $23, $23, $23, $E3, $DD, $6E, $FC, $DD, $66, $FD
.db $23, $E5, $FD, $E1, $DD, $6E, $FC, $DD, $66, $FD, $23, $7E, $23, $66, $6F, $09
.db $FD, $75, $00, $FD, $74, $01, $BF, $ED, $42, $3E, $00, $17, $E1, $E5, $77, $4B
.db $42, $1A, $5F, $DD, $6E, $FC, $DD, $66, $FD, $66, $C5, $2E, $00, $55, $06, $08
.db $29, $30, $01, $19, $10, $FA, $C1, $EB, $7B, $02, $03, $7A, $02, $D1, $C1, $C5
.db $D5, $AF, $02, $DD, $7E, $04, $DD, $86, $08, $6F, $DD, $7E, $05, $DD, $8E, $09
.db $67, $DD, $7E, $06, $DD, $8E, $0A, $5F, $DD, $7E, $07, $DD, $8E, $0B, $57, $DD
.db $F9, $DD, $E1, $C9, $00, $00, $00, $00, $04, $20, $08, $08, $01, $00, $00, $00

_LABEL_3BAD_4:
	ld   bc, $000C
	ld   a, b
	or   c
	jr   z, _LABEL_3BBC_5
	ld   de, $C2FF
	ld   hl, $3BA1
	ldir
_LABEL_3BBC_5:
	ld   hl, $0000
	ld   ($C1EF), hl
	ld   l, $00
	ld   ($C1F1), hl
	ret


.BANK 1 SLOT 1
.ORG $0000


; Data from 4000 to 7FFF (16384 bytes)
.incbin "output.sms.dat.10"

