#another place for install tips: (https://github.com/al2na/methylKit/blob/master/README.md)
#steven's solution for proper install: (https://sr320.github.io/MethylKittens/)

#from command line, change the permissions on R library folders to make them writable
#sudo chmod -R 777 /Users/Shelly/Library/R/
#sudo chmod -R 777 /Library/Frameworks/

#these are steps suggested by the Bioconductor troubleshooting guide (https://bioconductor.org/install/#install-bioconductor-packages)
remove.packages("BiocInstaller", lib=.libPaths())
source("http://bioconductor.org/biocLite.R")

biocLite("methylKit")
library(methylKit)

file.list=list("/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_1_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_2_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_3_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_4_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_5_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_6_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_7_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_8_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_9_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt2/zr2096_10_dedup.sorted.bam")

file.list2=list("/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_1_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_2_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_3_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_4_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_5_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_6_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_7_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_8_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_9_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt3/zr2096_10_dedup.sorted.bam")


file.list3=list("/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_1_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_2_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_3_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_4_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_5_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_6_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_7_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_8_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_9_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt4/zr2096_10_dedup.sorted.bam")


file.list4=list("/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_1_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_2_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_3_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_4_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_5_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_6_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_7_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_8_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_9_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt5/zr2096_10_dedup.sorted.bam")


file.list5=list("/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_1_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_2_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_3_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_4_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_5_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_6_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_7_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_8_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_9_dedup.sorted.bam",
               "/Volumes/web/metacarcinus/Cvirginica/Bismark_attempt6/zr2096_10_dedup.sorted.bam")


myobj <- processBismarkAln(location = file.list, sample.id = list("1","2","3","4","5","6","7","8","9","10"), 
                          assembly = "v3", read.context="CpG", mincov=3, treatment = c(0,0,0,0,0,1,1,1,1,1))

#For each analysis
myobj2 <- processBismarkAln(location = file.list2, sample.id = list("1","2","3","4","5","6","7","8","9","10"), 
                            assembly = "v3", read.context="CpG", mincov=3, treatment = c(0,0,0,0,0,1,1,1,1,1))
myobj3 <- processBismarkAln(location = file.list3, sample.id = list("1","2","3","4","5","6","7","8","9","10"), 
                            assembly = "v3", read.context="CpG", mincov=3, treatment = c(0,0,0,0,0,1,1,1,1,1))
myobj4 <- processBismarkAln(location = file.list4, sample.id = list("1","2","3","4","5","6","7","8","9","10"), 
                            assembly = "v3", read.context="CpG", mincov=3, treatment = c(0,0,0,0,0,1,1,1,1,1))
myobj5 <- processBismarkAln(location = file.list5, sample.id = list("1","2","3","4","5","6","7","8","9","10"), 
                            assembly = "v3", read.context="CpG", mincov=3, treatment = c(0,0,0,0,0,1,1,1,1,1))

#Find region coverage
tiles <- tileMethylCounts(myobj,win.size=1000,step.size=1000)
tiles2 <- tileMethylCounts(myobj2,win.size=1000,step.size=1000)
tiles3 <- tileMethylCounts(myobj3,win.size=1000,step.size=1000)
tiles4 <- tileMethylCounts(myobj4,win.size=1000,step.size=1000)
tiles5 <- tileMethylCounts(myobj5,win.size=1000,step.size=1000)

#find regions covered
mmeth <- unite(tiles, min.per.group = 1L)
mmeth2 <- unite(tiles2, min.per.group = 1L)
mmeth3 <- unite(tiles3, min.per.group = 1L)
mmeth4 <- unite(tiles4, min.per.group = 1L)
mmeth5 <- unite(tiles5, min.per.group = 1L)


RegionsCovered <- getData(mmeth)[,1:3]
RegionsCovered2 <- getData(mmeth2)[,1:3]
RegionsCovered3 <- getData(mmeth3)[,1:3]
RegionsCovered4 <- getData(mmeth4)[,1:3]
RegionsCovered5 <- getData(mmeth5)[,1:3]

#sum coverage across samples
RegionsCovered$cov_sum <- rowSums(getData(mmeth)[,grep("coverage", colnames(getData(mmeth)))], na.rm = TRUE)
RegionsCovered2$cov_sum <- rowSums(getData(mmeth2)[,grep("coverage", colnames(getData(mmeth2)))], na.rm = TRUE)
RegionsCovered3$cov_sum <- rowSums(getData(mmeth3)[,grep("coverage", colnames(getData(mmeth3)))], na.rm = TRUE)
RegionsCovered4$cov_sum <- rowSums(getData(mmeth4)[,grep("coverage", colnames(getData(mmeth4)))], na.rm = TRUE)
RegionsCovered5$cov_sum <- rowSums(getData(mmeth5)[,grep("coverage", colnames(getData(mmeth5)))], na.rm = TRUE)

RegionsCovered$par <- "AS1.2"
RegionsCovered2$par <- "AS0.6"
RegionsCovered3$par <- "AS2"
RegionsCovered4$par <- "AS1.2I60"
RegionsCovered5$par <- "AS1.2I150"

allRegionsCovered <- rbind(RegionsCovered,RegionsCovered2, RegionsCovered3, RegionsCovered4, RegionsCovered5)
#plot coverage
ggplot(allRegionsCovered, aes(start, cov_sum))  + geom_point(aes(colour = par, shape = par), alpha = 0.7) + scale_color_manual(values = c("orange","green","blue", "magenta","darkgray")) + xlab("position") + ylab("coverage") + facet_wrap(~chr)



filter_myobj <- filterByCoverage(myobj,lo.count=3,lo.perc=NULL,
                                hi.count=NULL,hi.perc=99.9)

meth_filter=unite(filter_myobj, destrand=TRUE)

meth <-unite(filter_myobj)
myDiff <- calculateDiffMeth(meth)










mmeth_diff <- calculateDiffMeth(mmeth)

getMethylationStats(tiles[[2]],plot = TRUE, both.strands = FALSE)
getCoverageStats(tiles[[2]],plot = TRUE, both.strands = FALSE)




