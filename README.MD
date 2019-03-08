# Nepali Stemmer
The [snowball stemmer project](https://github.com/snowballstem/snowball) implements a standard Nepali stemmer based on [paper by I. Shrestha and S. S. Dhakal](https://www.semanticscholar.org/paper/A-new-stemmer-for-Nepali-language-Shrestha-Dhakal/f60377b81f643cb3a21aa8e0e1b13df6b35edbe9). This project provides a docker build script to make the stemmer available in a docker container. 
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
