#!/bin/bash
exec 1> >(logger -s -t $(basename $0)) 2>&1

# handle referencing undefined variables 
# handle ignoring failing commands
set -o nounset
set -o errexit

#COUNT THE  NUMBER OF FILES
MP4COUNT="$(ls -1 ~/Downloads/*.mp4 | wc -l)"
WEBMCOUNT="$(ls -1 ~/Downloads/*.webm | wc -l)"
FLVCOUNT="$(ls -1 ~/Downloads/*.flv | wc -l)"
WMVCOUNT="$(ls -1 ~/Downloads/*.wmv | wc -l)"
DMGCOUNT="$(ls -1 ~/Downloads/*.dmg | wc -l)"
ZIPCOUNT="$(ls -1 ~/Downloads/*.zip | wc -l)"
PDFCOUNT="$(ls -1 ~/Downloads/*.pdf | wc -l)"
GIFCOUNT="$(ls -1 ~/Downloads/*.gif | wc -l)"
JPEGCOUNT="$(ls -1 ~/Downloads/*.jpeg | wc -l)"
XLSXCOUNT="$(ls -1 ~/Downloads/*.xlsx | wc -l)"
XLSCOUNT="$(ls -1 ~/Downloads/*.xls | wc -l)"
PPTCOUNT="$(ls -1 ~/Downloads/*.ppt | wc -l)"
PPTXCOUNT="$(ls -1 ~/Downloads/*.pptx | wc -l)"
DOCXCOUNT="$(ls -1 ~/Downloads/*.docx | wc -l)"
DOCCOUNT="$(ls -1 ~/Downloads/*.doc | wc -l)"
PKGCOUNT="$(ls -1 ~/Downloads/*.pkg | wc -l)"
CSVCOUNT="$(ls -1 ~/Downloads/*.csv | wc -l)"
PNGCOUNT="$(ls -1 ~/Downloads/*.png | wc -l)"
JPGCOUNT="$(ls -1 ~/Downloads/*.jpg | wc -l)"
TXTCOUNT="$(ls -1 ~/Downloads/*.txt | wc -l)"

#CREATE PATH TO FOLDERS
mp4folder=~/Movies/MP4/
webmfolder=~/Movies/WEBM/
flvfolder=~/Movies/FLV/
wmvfolder=~/Movies/WMV/
dmgfolder=~/DMG/
zipfolder=~/ZIP/
pdffolder=~/Documents/PDF/
giffolder=~/Documents/GIF/
jpegfolder=~/Documents/JPEG/
xlsxfolder=~/Documents/EXCEL/
xlsfolder=~/Documents/EXCEL/
pptfolder=~/Documents/POWERPOINT/
pptxfolder=~/Documents/POWERPOINT/
docxfolder=~/Documents/DOCS/
docfolder=~/Documents/DOCS/
pkgfolder=~/PKG/
csvfolder=~/CSV/
pngfolder=~/Documents/PNG/
jpgfolder=~/Documents/JPEG/
txtfolder=~/Documents/TXT/

function  makeFolder(){
   if [[ ! -e $1 ]]; then
       mkdir -p $1
   elif [[ ! -d $1 ]]; then
       echo "$1 already exists but is not a directory" 1>&2
   else
      echo "$1 folder already exsits"
   fi

}

function doWork(){
   if [ $1 -gt 0 ]; then
      echo "WE HAVE SOME $2 Files, so lets do work"
      #move file to desired location
      for file in ~/Downloads/*.$2; 
         do 
            targetfile="$(basename "$file" .$2)"
            mv "$file" `echo $file | tr ' ' '-'` ; 
            mv "$file" "$3$targetfile.$2"
      done
   else
      echo "THERE ARE NO $2 files to work with"
   fi
}

makeFolder $mp4folder
makeFolder $webmfolder
makeFolder $flvfolder
makeFolder $wmvfolder
makeFolder $dmgfolder
makeFolder $zipfolder
makeFolder $pdffolder
makeFolder $giffolder
makeFolder $jpegfolder
makeFolder $xlsxfolder
makeFolder $xlsfolder
makeFolder $pptfolder
makeFolder $pptxfolder
makeFolder $docxfolder
makeFolder $pkgfolder
makeFolder $csvfolder
makeFolder $pngfolder
makeFolder $jpgfolder
makeFolder $txtfolder

doWork $MP4COUNT mp4 $mp4folder 
doWork $WEBMCOUNT webm $webmfolder 
doWork $FLVCOUNT flv $flvfolder 
doWork $WMVCOUNT wmv $wmvfolder 
doWork $DMGCOUNT dmg $dmgfolder 
doWork $ZIPCOUNT zip $zipfolder
doWork $PDFCOUNT pdf $pdffolder 
doWork $GIFCOUNT gif $giffolder 
doWork $JPEGCOUNT jpeg $jpegfolder 
doWork $XLSXCOUNT xlsx $xlsxfolder 
doWork $XLSCOUNT xls $xlsfolder 
doWork $PPTXCOUNT pptx $pptxfolder 
doWork $PPTCOUNT ppt $pptfolder 
doWork $DOCXCOUNT docx $docxfolder 
doWork $DOCCOUNT doc $docxfolder 
doWork $PKGCOUNT pkg $pkgfolder 
doWork $CSVCOUNT csv $csvfolder 
doWork $PNGCOUNT png $pngfolder 
doWork $JPGCOUNT jpg $jpgfolder 
doWork $TXTCOUNT txt $txtfolder 
