# get-periscope
Extract HLS URL (.m3u8) from Periscope/Twitter for streaming on VLC

This extracts the URL needed to stream a Periscope or Twitter broadcast in VLC or other software.
This will also copy the replay for any broadcast that's ended. 

**It will accept the following URL types:**
* `https://www.pscp.tv/w/1LyGBNWnYvWGN`  
* `https://www.pscp.tv/w/1LyGBNWnYvWGN?channel=japan-news`  
* `https://www.pscp.tv/w/caPiNDFWR1F2b2FiV2RQS098MXZPR3dvWHlWYWJHQmjQtHIJEg0QgYsiSR3MsoeU25hk54-B33t6_gYpB-eoY`  
* `https://www.pscp.tv/w/caPiNDFWR1F2b2FiV2RQS098MXZPR3dvWHlWYWJHQmjQtHIJEg0QgYsiSR3MsoeU25hk54-B33t6_gYpB-eoY?t=23s`  


### Usage: ###
* Copy Stream URL (share link, copy to clipboard)  
* Run `Get-Periscope <url>` 

The script will print and copy the URL to your clipboard. 



## Requirements: ##  
### Windows: ### 
* Powershell

### Linux:  ### 
* Powershell  
* xclip (*maybe*)  


## Installation:  ##

1.) Donwload the file and put it in your $env:PATH  

#### Linux users:  #### 
2.) Set-Clipboard may not work for you, you'll need to replace `Set-Clipboard` with `xclip -selection c`

