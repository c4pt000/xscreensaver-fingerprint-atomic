; super mega amiga emulator :) :) :)
; (c)by Thorex
start:
  lda #$b
  jsr setcol
  jsr delay
  lda #$f
  jsr setcol
  jsr delay
  lda #$1
  jsr setcol
  jsr delay

  ldx #0
cp:
  lda pic,x
  sta $200,x
  lda pic2,x
  sta $300,x
  lda pic3,x
  sta $400,x
  lda pic4,x
  sta $500,x
  dex
  bne cp
  rts

setcol:
  ldx #0
s:sta $200,x
  sta $300,x
  sta $400,x
  sta $500,x
  dex
  bne s
  rts

delay:
  ldy #29
d1:
  ldx #0
d2:
  dex
  bne d2
  dey
  bne d1
  rts

pic:
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
        dcb 0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,0,$f,$f,$f
        dcb $f,$f,$f,$f,0,0,0,$f,0,$e,$e,0,1,1,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,0,$f,$f,$f
        dcb $f,$f,$f,$f,0,$e,0,$f,0,$e,$e,$e,0,1,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,0,$f,$f,$f
        dcb $f,$f,$f,$f,0,$e,0,$f,0,$e,$e,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,0,$f,$f,$f
        dcb $f,$f,$f,$f,0,0,0,$f,0,$e,$e,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,0,0,0,0
        dcb 0,0,0,0,0,0,0,0,0,$e,$e,$e,$e,0,1,1
 
pic2:
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,$e,$e,$e,$e
        dcb $e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,$e,$e,$e,$e
        dcb $e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,$e,$e,$e,$e
        dcb $e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,1,0,$e,$e,$e,$e,$e,$e,$e,$e
        dcb $e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,1,0,$e,0,0,0,0,0,0,0
        dcb 0,0,0,0,0,0,0,0,0,0,0,$e,$e,0,1,1
        dcb 1,1,1,1,1,1,0,0,$e,0,0,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,0,$e,$e,0,1,1
        dcb 1,1,1,1,1,0,1,0,$e,0,0,0,0,1,1,$e
        dcb $e,$e,1,$e,1,$e,1,$e,1,1,0,$e,$e,0,1,1
        dcb 1,1,1,0,0,1,1,0,0,1,0,1,1,0,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,0,$e,$e,0,1,1

pic3:
        dcb 1,1,0,1,1,1,0,1,1,1,1,0,0,1,1,1
        dcb $e,1,$e,1,$e,1,$e,1,1,1,0,$e,$e,0,1,1
        dcb 1,0,1,1,0,1,1,1,1,1,1,1,0,1,1,0
        dcb 1,1,1,1,1,1,1,1,1,1,0,$e,$e,0,1,1
        dcb 1,0,1,0,1,1,1,1,1,1,0,0,1,1,0,$f
        dcb 0,1,0,1,1,1,0,0,0,1,0,$e,$e,0,1,1
        dcb 1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,0
        dcb 0,$f,1,0,1,$f,1,0,1,1,0,$e,$e,0,1,1
        dcb 1,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0
        dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
        dcb 1,0,1,1,1,1,1,1,1,1,1,0,1,1,0,0
        dcb 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1
        dcb 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,0,1,1,1,1,1,1,1,1,1,0,1,0,1,1
        dcb 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

pic4:
        dcb 1,0,1,1,1,1,1,1,1,1,1,0,1,0,0,0
        dcb 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,0,1,1,1,1,1,1,0,0,0,0,0,1,1,0
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,0,1,1,1,1,1,1,0,1,1,1,0,0,0,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
        dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	