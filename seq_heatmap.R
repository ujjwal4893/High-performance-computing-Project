######################################################################################
## FILE: seq_heatmap.R							 	     #
## DESCRIPTION:									     #
## Rscript to create a heatmap of the sequentially generated random matrix	     #
## AUTHOR:									     #
## Atul Singh      (216100191) ## Ujjwal Verma               (216100297)    	     #
## Onkar Jadhav    (216100299) ## Ranjith Arahatholalu Nandish (216100180)           #
## Sudhanva Kusuma Chandrashekhara   (216100181)				     #
######################################################################################

## Opening the .jpeg file to write the image data
tiff("seq_heatmap.tiff", height = 4, width = 4, units = 'in', res=1600) 

## Reading the csv file separated by "," into making a matrix
mat <- read.csv(".\\seq.csv", sep=",")
matrix <- data.matrix(mat)

##making a heatmap using the inbuilt heatmap() function 
par(cex.main=0.5)
mat_heatmap <- heatmap(matrix, Rowv=NA, Colv=NA, col = heat.colors(256), scale="column",labRow = FALSE, labCol = FALSE,margins=c(1,1),main="\nHeatmap for generated Random Number Matrix (Sequential)")

dev.off()
