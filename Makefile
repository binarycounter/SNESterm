# Name
name		:= term
debug		:= 1

# Use packages
libsfx_packages := LZ4

# Derived data files
derived_files	:= graphics/font.png.tiles graphics/font.png.palette
derived_files   += graphics/font.png.tiles.lz4
graphics/font.png.tiles: tiles_flags= --bpp 4 -W 16 -H 16 --no-discard --no-flip -v

derived_files	+= graphics/font2.png.tiles graphics/font2.png.palette
derived_files   += graphics/font2.png.tiles.lz4
graphics/font2.png.tiles: tiles_flags= --bpp 2 -W 16 -H 16  --no-discard --no-flip -v
# Include libSFX.make
libsfx_dir	:= ../../SDKs/libSFX
include $(libsfx_dir)/libSFX.make
