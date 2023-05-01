# importing the "tarfile" module
import tarfile
  
# open file
file = tarfile.open('data/TCGA-PANCAN-HiSeq-801x20531.tar.gz')
  
# extracting file
file.extractall('./data/gene_data/TCGA-PANCAN-HiSeq-801x20531')
  
file.close()

"""
https://www.geeksforgeeks.org/how-to-uncompress-a-tar-gz-file-using-python/
"""