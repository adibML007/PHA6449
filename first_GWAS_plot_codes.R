rm(list=ls())
library(qqman)
library(tidyr)
DBP_night_w.AC3ASBPPMAMratio.glm <- read.delim("~/R/R-Projects/GWAS_Test/DBP_night_w.AC3ASBPPMAMratio.glm.linear", comment.char="#", header = T)
y<- DBP_night_w.AC3ASBPPMAMratio.glm[1:988556,]
y$CHR = as.numeric(y$CHR)
y$POS = as.numeric(y$POS)
y <- drop_na(y)
manhattan(y, chr="CHR", bp="POS", snp="ID", p="P", col = c("cornflowerblue", "darkgoldenrod1"),
          genomewideline=-log10(5e-08),
          suggestiveline=-log10(1e-05))
