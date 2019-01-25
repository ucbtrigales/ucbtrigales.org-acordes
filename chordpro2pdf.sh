OIFS="$IFS"
IFS=$'\n'

for i in $(ls Chordpro); do
    name=$(basename "$i" .chordpro)
    if [ ! -f PDF/$name.pdf ]; then
        chordpro -o PDF/$name.pdf Chordpro/$name.chordpro
    fi
done