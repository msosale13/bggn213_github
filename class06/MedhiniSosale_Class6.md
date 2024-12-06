Class 6: R functions
================
Medhini Sosale (PID: A69034757)

My first function :)

``` r
add <- function(x,y=1,z=0){
  x + y + z
}
```

Can I just use it?

``` r
add(1, 1)
```

    [1] 2

``` r
add(x=1, y=100)
```

    [1] 101

``` r
add(c(100,1,100),1)
```

    [1] 101   2 101

``` r
add(10) # works because we set y to a default value
```

    [1] 11

``` r
add(10, 10)
```

    [1] 20

``` r
add(1, 1, z=1)
```

    [1] 3

Write a function “generate_dna” that makes a random nucleotide sequence
of any length

``` r
# generate_dna <- function(){
  
# }

bases <- c("A", "C", "G", "T")
sequence <- sample(bases, size=50, replace = TRUE)
```

Turning working snippet into a function:

``` r
generate_dna <- function(length){
  bases <- c("A", "C", "G", "T")
  sequence <- sample(bases, size=length, replace = TRUE)
  return(sequence)
}
```

``` r
generate_dna(10)
```

     [1] "A" "T" "A" "C" "A" "C" "A" "T" "T" "T"

Then I installed the bio3d package.

``` r
aa <- unique(bio3d::aa.table$aa1)[1:20] # pull out the amino acid table but only unique labels

generate_protein <- function(length){
 aa <- unique(bio3d::aa.table$aa1)[1:20]
 sequence <- sample(aa, size=length, replace = TRUE)
 sequence <- paste(sequence, collapse = '') # gets rid of spaces
 return(sequence)
}

generate_protein(10)
```

    [1] "TWFYHCLQFN"

``` r
for (len in 6:13)
     {
      seq <- generate_protein(len)
      print(seq)
}
```

    [1] "MGCKVQ"
    [1] "TNPKNDS"
    [1] "YMASTKDW"
    [1] "NGDQEPIFN"
    [1] "IKLAWGCACN"
    [1] "GVDNPVSPDYC"
    [1] "TSMFCKRKSDLR"
    [1] "IPLWGSQMYDIMW"

``` r
answer <- sapply(6:12, generate_protein)
paste(c("barry", "alice", "amy", "chandra"), "loves R", sep='')
```

    [1] "barryloves R"   "aliceloves R"   "amyloves R"     "chandraloves R"

``` r
cat(paste('>id.', 6:12, '\n', answer, sep='', '\n')) # prepping the sequences to be FASTA / BLAST friendly
```

    >id.6
    KVETGR
     >id.7
    YTMYGEN
     >id.8
    LVWFESNW
     >id.9
    CYSFGPCSY
     >id.10
    FKPWDGVCLI
     >id.11
    QWLYHKGAMNE
     >id.12
    KMLTKKFEKWTW
