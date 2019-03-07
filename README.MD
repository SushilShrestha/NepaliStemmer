```
$ cd /navigate/to/NepaliStemmer
$ docker build -t nepalistemmer .
$ docker run -v `pwd`:/data/ -it nepalistemmer /bin/bash
$ docker run -it nepalistemmer /bin/bash
$ for WORD in `cat /data/helo.txt`; do /snowball/runtime/nepstem <<< "$WORD"; done

or 

$ python
>>> import snowballstemmer
>>> nepali_stemmer = snowballstemmer.NepaliStemmer()
>>> nepali_stemmer.stemWords(["नेपालीको", "आफ्नै", "स्तेम्मेर"])
['नेपाली', 'आफ्नै', 'स्तेम्मेर']
```
