# pwsh script that:
1. Source – path to a source folder
2. Destination – path to a destination folder
3. Text – a simple text which the script will search inside files

The script should copy all files, which contain {Text} inside, from {Source} folder to {Destination} folder.

### Usage
```
git clone https://github.com/testAqua/script.git
cd ./script
./copy.ps1 -Source ./source-ex/ -Destination ./dest-ex/ -Text "hhhh"
```