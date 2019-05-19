

Print:
RW_forced a16i16
sta $60 ;holds the start position of the string
sty $62 ;holds the length of the string
stz $66 ;holds the current position of where in the string we are while looping.
ldx $64 ;holds the cursor position
;Two different loops, one for each tilemap
Print1_loop:
lda $66 
cmp $62
bcs Print1_Done ;compare current position against length of string and jump out of the loop based on that
tay             ; Transfer current position from a to y, it's faster than loading it again
lda ($60), y    ; load word at y position of address referenced in $60 into a
iny             ; increment twice since we are only after every other byte
iny
sty $66         ; store position 
and #$00FF      ; zero out the high byte of the loaded word since we only need the lower. This is faster than switching a into 8 bit mode and back into 16 bit mode later
asl             ; shift left, effectively multiply by 2, we need this since the ascii to tile table is two bytes per entry
tay             ; transfer into y to use as an index
lda RES_ASCII_TABLE, y  ;load the right tile to use from the table
sta MAP1_MIRROR, x      ;Store it at the tilemap mirror, indexed by the cursor position
inx
inx                     ;increment cursor position
txa
and #$7FF
tax                     ;This truncates the highes bit, making the cursor loop around to the top instead of jumping outside the tilemap
jmp Print1_loop  
Print1_Done:            
lda #1                  
sta $66                 ;Store 1 instead of 0 in current position since we're now doing odd bytes instead of even
ldx $64                 ;Reload cursor position to get back to the beginning of the string
Print2_loop:            ;basically the same thing as loop 1
lda $66
dec a
cmp $62
bcs Print2_Done
ldy $66
lda ($60), y
iny
iny
sty $66
and #$00FF
asl
tay 
lda RES_ASCII_TABLE, y
sta MAP2_MIRROR, x
inx
inx
txa
and #$7FF
tax                     ;This truncates the highes bit, making the cursor loop around to the top instead of jumping outside the tilemap
jmp Print2_loop
Print2_Done:
stx $64                ;store cursor position back
lda $62                ;bug "fix" if the string length is not divisable by two, we wrote a garbage tile at the end. Let's fix that and replace it with a space         
bit #1                 ;test uneven string length
bne FixLastTile
rtl

FixLastTile:
dex
dex
lda RES_ASCII_TABLE+$40
sta MAP2_MIRROR, x
rtl


NextLine:
RW a16i16
lda $64  ; load cursor position
and #$7C0 ; basically rounds down to the nearest multiple of 64, so to the beginning of the current line
clc      ; Clear carry to get a clean result
adc #64  ; add another line
sta $64  ; store cursor position
rtl

PrintLn:
RW a16i16
jsl Print
jsl NextLine
rtl


PrintHex:
RW a8
pha ;push a to stack for later use
lsr
lsr
lsr
lsr ;shift it to the bottom
cmp #$0A ;If higher than 9, we need to add 7 to get to the A-F ascii characters
bcs Add7_1
Add7_1End:
add #48  ;Add 48 cause that's where 0-9 characters are
sta $00  ;store in $00, this will be loaded by the Print subroutine later
pla      ;Restore a from the stack to process the second nibble
and #$0F ;get lower nibble of byte
cmp #$0A ;same as above
bcs Add7_2
Add7_2End:
add #48
sta $01

RW a16i16
lda #$0000 ;String is at 0000 in RAM
ldy #$2    ;String is 4 characters Long
jsl Print
rtl

RW a8i8
Add7_1:
add #7
jmp Add7_1End
Add7_2:
add #7
jmp Add7_2End


RW a16i16
ClearScreen:
;Pretty straight forward. Just memset every tile to 00 00, making them blank tiles
WRAM_memset MAP1_MIRROR, $800, 0
WRAM_memset MAP2_MIRROR, $800, 0
stz $64 ;reset cursor position
rtl

;I've written this bit at 5:30 am, it does not work. Will work on this later
ScrollToCursor:
RW_forced a16i16
lda $64
and #$7C0
lsr
lsr
sta $80
RW a8i8
sta BG1VOFS
lda $81
asl
sta BG1VOFS
lda $80
sta BG2VOFS
lda $81
asl
stz BG2VOFS
rtl

