#### Md5 check

##### how to check your fastq files for integrity using md5 files from your sequencing centre

General info:

The **MD5 message-digest algorithm** is a widely used [hash function](https://en.wikipedia.org/wiki/Hash_function) producing a 128-[bit](https://en.wikipedia.org/wiki/Bit) hash value. MD5 was designed by [Ronald Rivest](https://en.wikipedia.org/wiki/Ronald_Rivest) in 1991 to replace an earlier hash function [MD4](https://en.wikipedia.org/wiki/MD4),[[3\]](https://en.wikipedia.org/wiki/MD5#cite_note-Ron_Barak-3) and was specified in 1992 as RFC 1321.

MD5 can be used as a [checksum](https://en.wikipedia.org/wiki/Checksum) to verify [data integrity](https://en.wikipedia.org/wiki/Data_integrity) against unintentional corruption.

MD5 digests have been widely used in the [software](https://en.wikipedia.org/wiki/Software) world to provide some assurance that a transferred file has arrived intact. For example, file servers often provide a pre-computed MD5 (known as [md5sum](https://en.wikipedia.org/wiki/Md5sum)) [checksum](https://en.wikipedia.org/wiki/Checksum) for the files, so that a user can compare the checksum of the downloaded file to it. Most unix-based operating systems include MD5 sum utilities in their distribution packages; Windows users may use the included [PowerShell](https://en.wikipedia.org/wiki/PowerShell) function "Get-FileHash", the included command line function "certutil -hashfile <filename> md5",[[45\]](https://en.wikipedia.org/wiki/MD5#cite_note-45)[[46\]](https://en.wikipedia.org/wiki/MD5#cite_note-46) install a Microsoft utility,[[47\]](https://en.wikipedia.org/wiki/MD5#cite_note-47)[[48\]](https://en.wikipedia.org/wiki/MD5#cite_note-48) or use third-party applications. Android ROMs also use this type of checksum.

![Diagram showing use of MD5 hashing in file transmission](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/CPT-Hashing-File-Transmission.svg/1920px-CPT-Hashing-File-Transmission.svg.png)

If you run md5sum to any file you get a unique hash. When you get the sequencing data you will get the md5 from the origin file and you will want to create another one to the received file and compare the two.



```
 md5sum *
0c1428f81033928619850cdbad605798  example1.txt
c76f0f1ab3c7198429a2a8da941929f1  example2.txt
4efdb9ef1d1786d19e1fd0c7928d2a37  example3.txt

```



To check for existing ones first 

```
cat *.md5 > sequencing.all.md5 
```

and run:

```
md5sum -c sequencing.all.md5 > md5checks.txt
example1.txt: OK
example2.txt: OK
example3.txt: OK
```



All the files have passed the integrity check and are intact. The "OK" message next to each file indicates that the MD5 checksums match the expected values. This means that the files have not been modified or corrupted.