# TeX Sample

## TeX のインストール
### Mac (Homebrew)
```
$ brew cask install basictex
$ sudo tlmgr update --self --all
$ sudo tlmgr paper a4
$ sudo tlmgr install collection-langjapanese
```

## Docker でビルドする

### Docker Image をビルド
```
$ docker build -t ikmski/texlive
```

### Tex をビルド
```
$ docker run --rm -v $PWD:/app ikmski/texlive make
```
