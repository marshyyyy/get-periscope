function Get-Periscope {
    Param($url)
    $token = ($url | Select-String -Pattern '[^\/]+?(?=\?|$)').Matches.Value
    $JSON = "https://api.periscope.tv/api/v2/getAccessPublic?token=$token"
    if ((Invoke-WebRequest $JSON | ConvertFrom-Json).hls_url) { 
        write-host -f darkgreen "Live Feed Found" 
        (Invoke-WebRequest $JSON | ConvertFrom-Json).hls_url | Set-Clipboard
        (Invoke-WebRequest $JSON | ConvertFrom-Json).hls_url 
        write-host -f darkblue "URL Copied!"
    } else { 
        write-host -f darkgreen "Replay Found" 
        (Invoke-WebRequest $JSON | ConvertFrom-Json).replay_url | Set-Clipboard
        (Invoke-WebRequest $JSON | ConvertFrom-Json).replay_url 
        write-host -f darkblue "URL Copied!" 
    }
}
Get-Periscope @args
