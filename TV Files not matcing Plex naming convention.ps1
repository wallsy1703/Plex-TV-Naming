cls 

$pattern = "(.*)\s+S(\d{2})E(\d{2})[\- ]+(.*)" # regex to find match for 'TV Show - SxxExx - Show Title'

$path = "Z:\TV" # enter your root folder here, there is the option below to check subfolders

Write-Host "Scanning files....."

# Get all files that match $pattern in a folder.
# Add '-Recurse' switch to include files in subfolders.
$search_results = Get-ChildItem -Path $path -Recurse `
    | Where-Object { ((! $_.PSIsContainer) -and ($_.Name -notmatch $pattern)) } 


foreach ($file in $search_results) {

write-host $file.Directoryname"\"$file

}