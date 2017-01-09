### [File encoding guess isn't perfect.](http://stackoverflow.com/questions/24582921/which-linux-command-is-trustable-about-file-encoding-guess-file-or-nkf)

## Install
```
$ sw_vers
ProductName:	Mac OS X 
ProductVersion: 10.9.2 
BuildVersion:	13C64
```

```
$ brew update
$ brew install nkf
```

## Usage
```
$ man nkf
$ nkf --help
```

### Print guessed encoding and newline.
`$ nkf -g ${file}`

### Specify input and output encodings.
```
$ nkf -j ${euc_file} > ${jis_file}
```
