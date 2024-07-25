# Path to the folder containing the images
$folderPath = "C:\Users\tabs2\Downloads\Meteor Data\images"

# Path to the CSV file
$csvPath = "C:\Users\tabs2\Downloads\Meteor Data\blobfile.csv"

# Import the CSV file
$csvData = Import-Csv -Path $csvPath

# Loop through each row in the CSV
foreach ($row in $csvData) {
    $fileID = $row.fileid
    $newFilename = $row.filename

    # Get the full path of the current image file
    $currentFilePath = Join-Path -Path $folderPath -ChildPath "$fileID*"

    # Check if the file exists
    $files = Get-Item -Path $currentFilePath -ErrorAction SilentlyContinue
    if ($files) {
        foreach ($file in $files) {
            # Get the file extension
            $extension = $file.Extension

            # Construct the new file path
            $newFilePath = Join-Path -Path $folderPath -ChildPath "$newFilename$extension"

            # Rename the file
            Rename-Item -Path $file.FullName -NewName $newFilePath
            Write-Output "Renamed '$($file.Name)' to '$($newFilename)$extension'"
        }
    } else {
        Write-Output "File with ID '$fileID' not found."
    }
}