grep -rRnH "#0*0" screen.css | tr ' ' '\012' | grep "#0*0" | sed 's/\(!.*\|;\|#\)//g' | sort | uniq | xargs -I{} printf '%d\n' 0x{} | xargs -I{} expr {} / 16 | xargs -I{} expr {} - {} % 2 | uniq | xargs -I{} printf '%x ' {}

