for (i in 1:2000) {
  write.tree(rcoal(10),paste0("/Users/pmckenz1/Desktop/projects/quartet_proj/random_trees/samp",i,".phy"))
}

for (i in 1:2000) {
  system(paste0("seq-gen -mGTR -l10000 -n1 -z12345 < Desktop/projects/quartet_proj/random_trees/samp",i,".phy > Desktop/projects/quartet_proj/tree_seqs/test",i,".dat"))
}

getwd()




