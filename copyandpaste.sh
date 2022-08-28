echo -e >
echo -e >
echo -e >

echo "hit ctl,shift, and v to paste the youtube channel url youd like to get transcripts from"

read channelurl

yt-dlp $channelurl -i --write-auto-sub --sub-format srt --skip-download && find . -name "*.vtt" -exec python3 vtt2text.py {} \; && rm *.vtt && find . -iname "*.txt" -exec bash -c 'mv "$0" "${0%\.txt}.md"' {} \;

