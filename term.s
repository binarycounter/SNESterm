.include "libSFX.i"


VRAM_MAP1_LOC    =  $0000
VRAM_MAP2_LOC    =  $1000
VRAM_TILES_LOC   =  $2000
VRAM_TILES2_LOC  =  $6000

MAP1_MIRROR      =  $7FF000
MAP2_MIRROR      =  $7FF800




DemoString1:
.byte "      Hello, and welcome to my little text terminal demo!       "
DemoString2:
.byte "This uses the mode 5 hires mode, in combination with interlacing"
.byte "to display 8x16 character tiles in 512x448 resolution,          "
.byte "resulting in 28 rows (30 on PAL) and 64 columns."
DemoString3:
.byte "1792 CHARACTERS!"
DemoString4:
.byte "<-------------------------------------------------------------->"
DemoString5:
.byte "^|v"
DemoString6:
.byte "64 COLUMNS"
DemoString7:
.byte "28 ROWS"
DemoString8:
.byte "It supports"
DemoString9:
.byte "Changing the"
DemoString10:
.byte "Cursor Position!"
DemoString11:
.byte "C O L O R S ! !"
DemoString12:
.byte "(Not yet, but very soon)"
DemoString13:
.byte "Printing decimal numbers"
DemoString14:
.byte "And Hexadecimal numbers"
DemoString15:
.byte "You could use this to make"
DemoString16:
.byte "An IRC Client"
DemoString17:
.byte "A file manager"
DemoString18:
.byte "A debug screen"
DemoString19:
.byte "ASCII art!!"
DemoString20:
.byte "To get started take a look at the README included with this demo"
.byte "If you have questions, shoot me a tweet @BinaryCounter          "
.byte "Thank you for watching! (This demo will start looping now)      "


ASCIIArt:
.byte "                               I                                "
.byte "                               I                                "
.byte "                               I                                "
.byte "                   ____        I        ____                    "
.byte "                _=============================_                 "
.byte "              ,'   _    SUPER  NINTENDO     _ X'.               "
.byte "             /    ! !                      (_)   \              "
.byte "            !   __! !__                 _      _ A!             "
.byte "            !  !__   __!   .:     .:   (_)    (_) !             "
.byte "            !     ! !     :'     :'   X    _      !             "
.byte "             \    !_!    select start     (_)    /              "
.byte "              '.       _---------------_ B     .'               "
.byte "                '-___-'                 '-___-'cgmm             "

FileManager:

.byte "05 - Toxic Caves.vgm                                            "
.byte "Shovel_Knight_Music.nsf                                         "
.byte "Super Mario World (USA).sfc                                     "
.byte "02 - Green Hill Zone.vgm                                        "
.byte "7 GRAND DAD.nes                                                 "
.byte "Fire Emblem Gaiden (Japan).nes                                  "
.byte "Super Mario Bros. 3 (USA).nes                                   "
.byte "Sonic 1.vgm                                                     "
.byte "CGB-B3AE-USA.gbs                                                " 
.byte "sf.rsn                                                          "
.byte "DMG-AFNE-USA.gbs                                                "
.byte "kss.rsn                                                         "
.byte "super-mario-world-snes-[SPC-ID6737] (1).rsn                     "
.byte "super-mario-world-snes-[SPC-ID6737].rsn                         "
.byte "Pokemon Pinball (1999)(HAL Laboratory, Game Freak, Nintendo).gbs"
.byte "018a Pokey's House.spc                                          "
.byte "99 Mining Melancholy.spc                                        "
.byte "fire emblem 4 - chapter 9 kingdom of thracia.spc                "
.byte "04 BGM 1.spc                                                    "
.byte "36 Megalomania.spc                                              "
.byte "01 War of the Woolies.spc                                       "
.byte "09 Creative Exercise.spc                                        "
.byte "mario paint - creative exercise.spc                             "
.byte "104 First Encounter.spc                                         "
.byte "01 Theme.spc                                                    "
.byte "03 DK Island Swing.spc                                          "
.byte "07 Aquatic Ambiance.spc                                         "
.byte "10 Forest Interlude.spc                                         "

IRCclient:

.byte "<Cthon98> hey, if you type in your pw, it will show as stars    "
.byte "<Cthon98> ********* see!                                        "
.byte "<AzureDiamond> hunter2                                          "
.byte "<AzureDiamond> doesnt look like stars to me                     "
.byte "<Cthon98> <AzureDiamond> *******                                "
.byte "<Cthon98> thats what I see                                      "
.byte "<AzureDiamond> oh, really?                                      "
.byte "<Cthon98> Absolutely                                            "
.byte "<AzureDiamond> you can go hunter2 my hunter2-ing hunter2        "
.byte "<AzureDiamond> haha, does that look funny to you?               "
.byte "<Cthon98> lol, yes. See, when YOU type hunter2, it shows to us  "
.byte "          as *******                                            "
.byte "<AzureDiamond> thats neat, I didnt know IRC did that            "
.byte "<Cthon98> yep, no matter how many times you type hunter2, it    " 
.byte "          will show to us as *******                            "
.byte "<AzureDiamond> awesome!                                         "
.byte "<AzureDiamond> wait, how do you know my pw?                     "
.byte "<Cthon98> er, I just copy pasted YOUR ******'s and it appears to"
.byte "          YOU as hunter2 cause its your pw                      "
.byte "<AzureDiamond> oh, ok.                                          "

DebugScreen:
.byte "                   THIS HOMEBREW DID AN OOPSIE                  "
.byte "      Error message: Stack Overflow while processing memes      "
.byte "                                                                "
.byte "                          Memory dump                           "
.byte "                                                                "
.byte "        00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F         "
.byte "                                                                "
.byte "    00                                                          "
.byte "    10                                                          "
.byte "    20                                                          "
.byte "    30                                                          "
.byte "    40                                                          "
.byte "    50                                                          "
.byte "    60                                                          "
.byte "    70                                                          "
.byte "    80                                                          "
.byte "    90                                                          "
.byte "    A0                                                          "
.byte "    B0                                                          "
.byte "    C0                                                          "
.byte "    D0                                                          "
.byte "    E0                                                          "
.byte "    F0                                                          "

DebugScreenData:
.byte "53 6F 6D 65 62 6F 64 79 20 6F 6E 63 65 20 74 6F6C 64 20 6D 65 20 74 68 65 20 77 6F 72 6C 64 2069 73 20 67 6F 6E 6E 61 20 72 6F 6C 6C 20 6D 650D 0A 49 20 61 69 6E 27 74 20 74 68 65 20 73 6861 72 70 65 73 74 20 74 6F 6F 6C 20 69 6E 20 7468 65 20 73 68 65 64 0D 0A 53 68 65 20 77 61 7320 6C 6F 6F 6B 69 6E 67 20 6B 69 6E 64 20 6F 6620 64 75 6D 62 20 77 69 74 68 20 68 65 72 20 6669 6E 67 65 72 20 61 6E 64 20 68 65 72 20 74 6875 6D 62 0D 0A 49 6E 20 74 68 65 20 73 68 61 7065 20 6F 66 20 61 6E 20 22 4C 22 20 6F 6E 20 6865 72 20 66 6F 72 65 68 65 61 64 0D 0A 57 65 6C6C 20 74 68 65 20 79 65 61 72 73 20 73 74 61 7274 20 63 6F 6D 69 6E 67 20 61 6E 64 20 74 68 6579 20 64 6F 6E 27 74 20 73 74 6F 70 20 63 6F 6D69 6E 67 0D 0A 46 65 64 20 74 6F 20 74 68 65 20"



Main:

;Decompressing font and transfering it to VRAM
LZ4_decompress RES_FONT, EXRAM
VRAM_memcpy VRAM_TILES_LOC, EXRAM, y
LZ4_decompress RES_FONT2, EXRAM
VRAM_memcpy VRAM_TILES2_LOC, EXRAM, y

CGRAM_memcpy 0, RES_FONTPAL, 32

;Enable interlacing
lda #%00001001
sta $2133

lda     #bgmode(BG_MODE_5, 0, BG_SIZE_16X16, BG_SIZE_16X16, BG_SIZE_8X8, BG_SIZE_8X8) ;Mode 5 Hires + 16x16 character size
sta     BGMODE
lda     #bgnba(VRAM_TILES_LOC, VRAM_TILES2_LOC, 0, 0) ;Set tile location for 4bpp font and 2bpp font
sta     BG12NBA
lda     #bgsc(VRAM_MAP1_LOC, SC_SIZE_32X32) ;Set Map location for BG1
sta     BG1SC
lda     #bgsc(VRAM_MAP2_LOC, SC_SIZE_32X32) ;Set Map location for BG2
sta     BG2SC

lda     #tm(ON, ON, OFF, OFF, OFF) ;Enable BG1+BG2
sta     TM
lda     #tm(ON, ON, OFF, OFF, OFF) ;Subscreen needed for hires mode for some reason, or else it produces vertical stripes
sta     TS

lda     #inidisp(ON, DISP_BRIGHTNESS_MAX) ;Turn on screen after next VBlank
sta     SFX_inidisp	

; Set up background gradient HDMA
HDMA_set_absolute 0,3, $21, RES_HDMA_gradient
; Enable HDMA channel 0
lda #%00000001
sta HDMAEN

SMP_playspc SPC_State, SPC_Image_Lo, SPC_Image_Hi


; Enable VBlank handling
VBL_on
; Set VBL handler
VBL_set VBL_term


;;;;;;;;; Spaghetti Code for demo begins here, just delete this and replace with your own App ;;;;;;;;;;;;

DemoBegin:
RW a16i16
jsl ClearScreen


lda #.loword(DemoString1)
ldy #64
jsl PrintLn
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
WAIT_frames 150
lda #.loword(DemoString2)
ldy #176
jsl Print
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
WAIT_frames 250
lda #.loword(DemoString3)
ldy #16
jsl Print
WAIT_frames 200
jsl ClearScreen

lda #.loword(DemoString4)
ldy #64
jsl Print
lda #.loword(DemoString5)
ldy #1
jsl PrintLn

stz $70
PrintLineLoop:
lda #.loword(DemoString5+1)
ldy #1
jsl PrintLn
inc $70
lda $70
cmp #25
bne PrintLineLoop

lda #.loword(DemoString5+2)
ldy #1
jsl Print

lda #64+26
sta $64

lda #.loword(DemoString6)
ldy #10
jsl Print

lda #13*64+2
sta $64

lda #.loword(DemoString7)
ldy #7
jsl Print

WAIT_frames 250
jsl ClearScreen

lda #1*64+6
sta $64
lda #.loword(DemoString8)
ldy #11
jsl Print

lda #9*64+40
sta $64
lda #.loword(DemoString9)
ldy #12
jsl Print

lda #22*64+10
sta $64
lda #.loword(DemoString10)
ldy #16
jsl Print

WAIT_frames 250
jsl ClearScreen

lda #1*64+6
sta $64
lda #.loword(DemoString8)
ldy #11
jsl Print

lda #13*64+24
sta $64
lda #.loword(DemoString11)
ldy #15
jsl Print

lda #14*64+20
sta $64
lda #.loword(DemoString12)
ldy #24
jsl Print

WAIT_frames 255
jsl ClearScreen

lda #1*64+6
sta $64
lda #.loword(DemoString8)
ldy #11
jsl Print

lda #13*64+20
sta $64
lda #.loword(DemoString13)
ldy #24
jsl Print

lda #14*64+20
sta $64
lda #.loword(DemoString12)
ldy #24
jsl Print

WAIT_frames 255
jsl ClearScreen

lda #1*64+6
sta $64
lda #.loword(DemoString8)
ldy #11
jsl Print

lda #13*64+20
sta $64
lda #.loword(DemoString14)
ldy #23
jsl Print

stz $70
DemoHexLoop:
lda #14*64+30
sta $64
RW a8
lda $70
inc $70
cmp #$FF
beq DemoHexDone
jsl PrintHex
RW a16i16
wai
wai
jmp DemoHexLoop
DemoHexDone:
RW_forced a16i16
stz $64
DemoHexLoop2:
RW a8
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
inc $70
lda $70
jsl PrintHex
wai
RW a16i16
lda $64
cmp #1792
bne DemoHexLoop2

jsl ClearScreen



lda #6*64+20
sta $64
lda #.loword(DemoString15)
ldy #26
jsl Print
WAIT_frames 100
lda #8*64+26
sta $64
lda #.loword(DemoString16)
ldy #13
jsl Print
WAIT_frames 200

jsl ClearScreen
lda #.loword(IRCclient)
ldy #20*64
jsl Print
WAIT_frames 400

jsl ClearScreen
lda #6*64+20
sta $64
lda #.loword(DemoString15)
ldy #26
jsl Print
WAIT_frames 100
lda #8*64+26
sta $64
lda #.loword(DemoString17)
ldy #14
jsl Print
WAIT_frames 200

jsl ClearScreen
lda #.loword(FileManager)
ldy #28*64
jsl Print
WAIT_frames 200

jsl ClearScreen
lda #6*64+20
sta $64
lda #.loword(DemoString15)
ldy #26
jsl Print
WAIT_frames 100
lda #8*64+26
sta $64
lda #.loword(DemoString18)
ldy #14
jsl Print
WAIT_frames 200

jsl ClearScreen
lda #.loword(DebugScreen)
ldy #23*64
jsl Print

lda #7*64+8
sta $64



PrintDebugLoop:
break
lda #.loword(DebugScreenData)
add $72
ldy #47
jsl Print

lda $72
add #47
cmp #16*47
beq PrintDebugDone
sta $72

lda $64
add #16
sta $64 
jmp PrintDebugLoop
PrintDebugDone:
WAIT_frames 400

jsl ClearScreen
lda #6*64+20
sta $64
lda #.loword(DemoString15)
ldy #26
jsl Print
WAIT_frames 100
lda #8*64+28
sta $64
lda #.loword(DemoString19)
ldy #11
jsl Print
WAIT_frames 200

stz $64
lda #.loword(ASCIIArt)
ldy #832
jsl Print
WAIT_frames 500
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
jsl NextLine
lda #.loword(DemoString20)
ldy #3*64
jsl Print
WAIT_frames 500
jmp DemoBegin


;;;;;;;;; Spaghetti Code for demo ends here, just delete the code above and replace with your own App ;;;;;;;;;;;;







VBL_term:
RW a8i8
VRAM_memcpy VRAM_MAP1_LOC, MAP1_MIRROR, $800
VRAM_memcpy VRAM_MAP2_LOC, MAP2_MIRROR, $800
rtl



.include "term.i"

incbin RES_FONT, "graphics/font.png.tiles.lz4"
incbin RES_FONT2, "graphics/font2.png.tiles.lz4"
incbin RES_FONTPAL, "graphics/font.png.palette"
incbin RES_ASCII_TABLE, "graphics/ascii_tiles.table"


incbin RES_HDMA_gradient, "demo_data/gradient.hdma"

.define spc_file "demo_data/careless.spc"
SPC_State:    SPC_incbin_state spc_file
.segment "ROM2"
SPC_Image_Lo: SPC_incbin_lo spc_file
.segment "ROM3"
SPC_Image_Hi: SPC_incbin_hi spc_file