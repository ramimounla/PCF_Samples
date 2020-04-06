pushd
cd ..
Get-ChildItem -recurse | where {$_.name -like "*.pcfproj"} | foreach { cd $_.DirectoryName; npm i; cd ..; }
popd