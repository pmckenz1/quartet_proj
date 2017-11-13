library(ape)
for (i in 1:3000) {
  write.tree(rcoal(10),paste0("/Users/pmckenz1/Desktop/projects/quartet_proj/random_trees/samp",i,".phy"))
}

for (i in 1:2000) {
  system(paste0("seq-gen -mGTR -l484 -s .1 -n1 -z12345 < /Users/pmckenz1/Desktop/projects/quartet_proj/random_trees/samp",i,".tre > /Users/pmckenz1/Desktop/projects/quartet_proj/tree_seqs/test",i,".dat"))
}
for (i in 1:1000) {
  system(paste0("seq-gen -mGTR -l10000 -n1 -z12345 < /Users/pmckenz1/Desktop/projects/quartet_proj/random_trees/samp",(i+2000),".phy > /Users/pmckenz1/Desktop/projects/quartet_proj/tree_seqs/test",(i+2000),".dat"))
}

getwd()

plot(rtree(37))
write.tree(rtree(37),paste0("/Users/pmckenz1/Desktop/projects/quartet_proj/random_trees/tree37.phy"))

mytree <- read.tree("/Users/pmckenz1/Desktop/projects/quartet_proj/random_trees/tree37.phy")
cophenetic(mytree)["t2", "t4"]
