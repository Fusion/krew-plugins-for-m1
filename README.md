This repository is used to build and publish Kubectl Krew plugins that will run on Mac M1 models.

At this time, only one package needs a bit of preparation, **kubect-dfi**:
1. remove go.sum
2. remove the lintci line from go.mod
3. running `go mod tidy`

Note that you do not have to build the modules yourself (this would somewhat defeat the purpose) and are encouraged to download them from the releases page instead.

Of course, feel free to build them anyway if you do not trust everything that comes in binary form from random corners of the web :)
