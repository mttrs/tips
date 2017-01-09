# MacOSX
- Confirm java path
```shell
$ which java
/usr/bin/java

$ ls -l /usr/bin/java
lrwxr-xr-x  1 root  wheel  74 Oct 31  2013 /usr/bin/java -> /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java

$ ls -l /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java*
-rwxr-xr-x  1 root  wheel  54624 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java
-rwxr-xr-x  1 root  wheel  68224 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home
-rwxr-xr-x  1 root  wheel  54624 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/javac
-rwxr-xr-x  1 root  wheel  54640 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/javadoc
-rwxr-xr-x  1 root  wheel  54624 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/javah
-rwxr-xr-x  1 root  wheel  54624 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/javap
-rwxr-xr-x  1 root  wheel  49584 Oct 31  2013 /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/javaws
```

- [Install java 1.8](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html)

- Set Java 1.8
```
$ sudo ln -s /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/ /System/Library/Frameworks/JavaVM.framework/Versions/1.8.0

# .bashrc etc
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.8.0"
```
- Confirm the setting

```shell
# Expected

$ java -version
java version "1.8.0_20"
Java(TM) SE Runtime Environment (build 1.8.0_20-b26)
Java HotSpot(TM) 64-Bit Server VM (build 25.20-b23, mixed mode)
```
