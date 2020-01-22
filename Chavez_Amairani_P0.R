#Genomica funcional
#Practica 0
#descargando Biostrings
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Biostrings")

#primera parte, Traducción a aminoacidos
library(Biostrings)
sec_RNA <- readRNAStringSet("first.fasta")
prot <- translate(sec_RNA)
prot

#segunda parte, dos problemas a resolver de Rosalind
#Primer problema a resolver: Counting DNA Nucleotides
#con libreria
sec_problema <- readDNAStringSet("secuencias_examen.fasta")
sec_problema1 <- replaceAmbiguities(sec_problema)
sec_problema1
sec1 <- sec_problema1[1]
sec1 #trabajaré unicamente con esta secuencia 
contenido_nucleotidos<- alphabetFrequency(sec1, baseOnly=TRUE, collapse=TRUE)
contenido_nucleotidos
#sin libreria 
A <- 0
C <- 0
G <- 0
T <- 0
sec1.1 <- as.character(sec1)
sec1.1
for (i in sec1.1){
  if (i == "A"){
    A+1
  } else if (i == "C"){
    C+1
  } else if (i == "G"){
    G+1
  } else if (i == "T"){
    T+1
  }
}
print(A)
print(C)
print(G)
print(T)
#segundo problema a resolver: Complementing a Strand of DNA
#con libreria
#utilizo la misma secuencia del problema anterior
sec_reverso_complemento <- reverseComplement(sec1)
sec_reverso_complemento
#sin libreria 
