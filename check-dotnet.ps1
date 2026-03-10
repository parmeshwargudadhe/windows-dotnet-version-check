$outputFile = "dotnet-check-output.txt"

"===== .NET Environment Check =====" | Out-File $outputFile

"`n--- dotnet --list-sdks ---" | Out-File $outputFile -Append
dotnet --list-sdks | Out-File $outputFile -Append

"`n--- dotnet --list-runtimes ---" | Out-File $outputFile -Append
dotnet --list-runtimes | Out-File $outputFile -Append

"`n--- dotnet --info ---" | Out-File $outputFile -Append
dotnet --info | Out-File $outputFile -Append

"`n--- Get-Command dotnet ---" | Out-File $outputFile -Append
Get-Command dotnet | Out-File $outputFile -Append

"`n--- C:\Program Files\dotnet\shared ---" | Out-File $outputFile -Append
Get-ChildItem "C:\Program Files\dotnet\shared" -Recurse -Directory | Out-File $outputFile -Append

"`n--- C:\Program Files (x86)\dotnet\shared ---" | Out-File $outputFile -Append
Get-ChildItem "C:\Program Files (x86)\dotnet\shared" -Recurse -Directory | Out-File $outputFile -Append

Write-Host "Output saved to $outputFile"
