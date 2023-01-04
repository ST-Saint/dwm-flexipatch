
" CPU %s  MEM %s/%s  STO %s" "$CPU" "$MEMUSED" "$MEMTOT" "$STOAVL"

DATA=$(curl -s "wttr.in/vancouver?0TQ" | sed -E 's/^.{16}//'m)
WEATHER=$(echo "$DATA" | head -n 1 | xargs)
TEMP=$(echo "$DATA" | sed -n 2p | xargs)

case "${WEATHER}" in
    "Partly cloudy") GLYPH=" " ;;
    "Cloudy") GLYPH=" " ;;
    "Sunny") GLYPH=" " ;;
    "Clear") GLYPH=" " ;;
    "Overcast") CLYPH=" " ;;
    *) GLYPH=$WEATHER ;;
esac
