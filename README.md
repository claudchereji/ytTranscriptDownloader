theme: modernist

# ytTranscriptSearch
### Get transcripts from YouTube

## Introduction and use case
I use this as a research tool mainly for channels like [Moe Factz with Adam Curry](https://www.youtube.com/channel/UC00YFNgWmjrh1gNBi2tmdmA) for 
my US/Black History learning and [Jack Spirko's survival podcast](https://www.youtube.com/user/survivalpodcasting) for permaculture and 
things of that nature. My list of usecases is always growing. Recently, I've used the tool on a new machine to get the transcripts for the [Huberman Lab Podcast](https://www.youtube.com/@hubermanlab/videos).

All transcripts can indexed by your app of choice. I use [Obsidian](https://obsidian.md/). The app is cross platform, has a beautiful UI, makes the files searchable, and all the files can be hyper-linked for studying purposes. What's interesting is finding "cross-references" between sources.  

# Using the Tool

## Step 1
You will need to get the vtt2txt python file first and save it in a directory that will
host the transcript files you'd like to download. Also move the copyandpaste.sh file to that directory.

## Step 2
from that directory open a new terminal window. Be sure it's opened from the same folder/directory as the vtt2txt file.


## Step 3
then run the command 

```chmod +x copyandpaste.sh```

this makes the copyandpaste bash file executable
this file contains the yl-dl script necessary to download the transcripts for a given youtube video/channel. 


## Step 4
find the youtube url that you want to get transcripts (subtitle files) from, copy the url, go back to the terminal window and run the command

``` ./copyandpaste.sh```

this will ask you to paste the url to the video/channel.
### be sure to use ctrl, *shift*, and v to paste in the youtube channel, playlist, or video url. 


## Step 5
this will start the download of all transcripts from a youtube channel/playlist/or a video link.

# To convert the saved files from .VTT to .txt
if you want to perform the conversion on multiple files in a directory (this works on linux based machines) you have to continue in the terminal window you opened previously and run the following command 

```find . -name "*.vtt" -exec python3 vtt2text.py {} \;```

this command takes each file individually and passes that file into the vtt2text.py script as the file that needs to be converted. This runs remarkably fast. I'll update the README with a time when I can test that. 

if you want to remove the VTT files fromt that directory so youre only left with the text files you can run the next command in the same terminal window

``` rm *.vtt```

this command will remove all files in the current directory with the .vtt file extension. 


you can use any markdown tool to view all transcripts that have been downloaded.
I use [Obsidian](https://obsidian.md/) because you can sync everything across devices plus theres a lot of community
plugins that are useful. 

happy searching!
