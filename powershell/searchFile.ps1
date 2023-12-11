# Define the directory path to start the search
# Use "C:\" to search the entire C: drive, or specify a more targeted directory
$directory = "C:\"

# Define the search pattern
$searchPattern = "*.iso"

# Search for .iso files and save the output to a file
Get-ChildItem -Path $directory -Recurse -Filter $searchPattern -ErrorAction SilentlyContinue -File | Tee-Object -FilePath "search-output.txt"
