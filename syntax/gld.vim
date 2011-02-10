" 
" Basic syntax for *.gld files
" (Microchip Linker Script)
"

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "gld"

syn keyword Keyword OUTPUT_ARCH MEMORY ORIGIN LENGTH OPTIONAL NOLOAD PROVIDE SORT AT
syn keyword Keyword SECTIONS OVERLAY NOCROSSREFS SIZEOF LOADADDR
syn keyword Keyword SHORT LONG ABSOLUTE DEFINED EXTERN
syn match   Keyword "CRT\d_STARTUP"


syn keyword Type    data reset ivt aivt program eedata usercode
syn match   Type    "\.reset"
syn match   Type    "\.text"
syn keyword Type    __RESET_BASE __IVT_BASE __AIVT_BASE __CODE_BASE
syn keyword Type    __SFR_BASE __DATA_BASE __YDATA_BASE
syn keyword Type    __DMA_BASE __DMA_END

syn match   String  "\v\"[^\"]*\""

syn match   Number    "\v<(0x[0-9a-fA-F]+|[0-9]+)>"

syn region  Comment    start="/\*" end="\*/"

