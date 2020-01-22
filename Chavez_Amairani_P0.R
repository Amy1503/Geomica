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
for (i in length(sec1)){
  if (sec1[i] == "A"){
    A+1
  } else if (sec1[i] == "C"){
    C+1
  } else if (sec1[i] == "G"){
    G+1
  } else if (sec1[i] == "T"){
    T+1
  }
}
print(A)                     #NO DA RESULTADO
print(C)
print(G)
print(T)

###De manera diferente
library(stringr)
A<- "A"
ca <- as.character(sec1)
ext <- str_extract_all(ca, A, simplify = TRUE)
ext
length(ext)
C <- "C"
extC <- str_extract_all(ca, C, simplify = TRUE)
length(extC)
G <- "G"
extG <- str_extract_all(ca, G, simplify = TRUE)
length(extG)
T <- "T"
extT <- str_extract_all(ca, T, simplify = TRUE)
length(extT)

#segundo problema a resolver: Complementing a Strand of DNA
#con libreria
#utilizo la misma secuencia del problema anterior
sec_reverso_complemento <- reverseComplement(sec1)
sec_reverso_complemento
#sin libreria 
