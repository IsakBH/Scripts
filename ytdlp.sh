# This runs yt-dlp with a launch parameter for the link to YouTube og YouTube Music. Create an alias for the script like e.g ytdlp and run `ytdlp (link)`, and it'll be way easier

yt-dlp $1 \
-f "bestaudio[ext=m4a]" \
--embed-thumbnail \
--convert-thumbnail jpg \
--embed-metadata \
--exec-before-download "ffmpeg -i %(thumbnails.-1.filepath)q -vf crop='ih:ih' _%(thumbnails.-1.filepath)q && mv _%(thumbnails.-1.filepath)q %(thumbnails.-1.filepath)q" \
--output "%(artist)s - %(title)s.%(ext)s"
