- 

```
# importing the "tarfile" module
import tarfile
  
# open file
file = tarfile.open('gfg.tar.gz')
  
# extracting file
file.extractall('./Destination_FolderName')
  
file.close()
```
[How to uncompress a “.tar.gz” file using Python ?](https://www.geeksforgeeks.org/how-to-uncompress-a-tar-gz-file-using-python/)