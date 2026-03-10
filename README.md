# windows-dotnet-version-check
PowerShell commands to check installed .NET SDKs, runtimes, and environment details on Windows and export the results to a report file.

# Show installed .NET SDK versions
dotnet --list-sdks

# Show installed .NET runtime versions
dotnet --list-runtimes

# Show full .NET environment info (SDK, runtime, paths)
dotnet --info

# Show location of dotnet executable in PATH
Get-Command dotnet

# List runtime folders (64-bit)
Get-ChildItem "C:\Program Files\dotnet\shared" -Recurse -Directory

# List runtime folders (32-bit)
Get-ChildItem "C:\Program Files (x86)\dotnet\shared" -Recurse -Directory
