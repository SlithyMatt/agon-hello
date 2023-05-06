; hello.asm
  .assume adl=1
  .org $040000

  jp start

; MOS header
  .align 64
  .db "MOS",0,1

start:
  push af
  push bc
  push de
  push ix
  push iy

  ld hl,hello_str
  ld bc,0
  ld a,0
  rst.lil $18

  pop iy
  pop ix
  pop de
  pop bc
  pop af
  ld hl,0

  ret

hello_str:
  .db "Hello, world!",13,10,0

