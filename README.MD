# Nepali Stemmer
The [snowball stemmer project](https://github.com/snowballstem/snowball) implements a stemmer for standard Nepali stemmer, this project provides a docker build script to make the stemmer available in a docker container. 
### Usage
```
$ git clone https://github.com/SushilShrestha/NepaliStemmer
$ cd NepaliStemmer
$ docker build -t nepalistemmer .
$ docker run -it nepalistemmer /bin/bash
$ for WORD in `cat /data/helo.txt`; do /snowball/runtime/nepstem <<< "$WORD"; done

or 

$ python
>>> import snowballstemmer
>>> nepali_stemmer = snowballstemmer.NepaliStemmer()
>>> nepali_stemmer.stemWords(["नेपालीको", "आफ्नै", "स्तेम्मेर"])
['नेपाली', 'आफ्नै', 'स्तेम्मेर']
```
