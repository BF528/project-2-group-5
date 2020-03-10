# Read the file as tab separated values
gene_exp <- as.data.frame(read.csv("../cuffdiff_out/gene_exp.diff", sep = "\t"))
gene_exp <- gene_exp[order(gene_exp$p_value, decreasing = FALSE),]

# Create a histogram
hist(gene_exp$log2.fold_change., breaks = 15, xlab = "Log2 Fold Change", main = "Histogram of Gene Differential Expression")

sig_genes <- subset(gene_exp, significant == "yes")
hist(sig_genes$log2.fold_change., breaks = 15, xlab = "Log2 Fold Change", main = "Differential Expression of Significant Genes")

sig_genes_up <- subset(sig_genes, log2.fold_change. > 0)
sig_genes_down <- subset(sig_genes, log2.fold_change. < 0)
cat("The number of up-regulated significant genes: ", dim(sig_genes_up)[1])
cat("The number of down-regulated significant genes: ", dim(sig_genes_down)[1])
write.table(sig_genes_up$gene, "sig_genes_up.csv", row.names = FALSE, col.names = FALSE, quote = FALSE)
write.table(sig_genes_down$gene, "sig_genes_down.csv", row.names = FALSE, col.names = FALSE, quote = FALSE)
write.table(sig_genes_up$gene, "sig_genes_up.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
write.table(sig_genes_down$gene, "sig_genes_down.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
