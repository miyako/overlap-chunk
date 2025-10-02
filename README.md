![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
[![license](https://img.shields.io/github/license/miyako/overlap-chunk)](LICENSE)
![downloads](https://img.shields.io/github/downloads/miyako/overlap-chunk/total)

# overlap-chunk

tool to split text into chunks (namespace: `overlap_chunk`)

basic chunking, semantic token boundaries not considered.

## similar projects

* [text-splitter](https://github.com/miyako/text-splitter)

## acknowledgements

[overlap-chunk](https://github.com/katsuhirohonda/overlap-chunk)

### usage

```4d
$file:=File("/DATA/sample.txt")

var $overlap_chunk : cs.overlap_chunk
$overlap_chunk:=cs.overlap_chunk.new()
$results:=$overlap_chunk.chunk({file: $file; size: 40; overlap: 10})
```

#### result

```json
["Exploring 4th Dimension: A Pioneer in Da","n Database Software Development\r\n4th Dim"," Dimension, often abbreviated as 4D, is "," is a powerful and mature software devel","evelopment platform that has played a si","a significant role in the evolution of d","of database and application development ","ent since the 1980s. Originally launched","ched in 1984 by Laurent Ribardière and l","nd later developed and distributed by th","y the French company 4D SAS, 4D is renow","enowned for its integrated environment t","nt that combines a relational database e","se engine with a programming language an","e and graphical user interface tools. At",". At its core, 4D is designed to allow d","ow developers to create customized busin","usiness solutions rapidly and efficientl","ently.\r\nWhat makes 4D unique is its all-","all-in-one approach. Unlike many modern ","ern development stacks that require exte","external tools and complex integrations,","ons, 4D delivers a unified development e","nt experience where the database, progra","ogramming logic, user interface, and ser"," server capabilities coexist within a si","a single framework. This reduces the lea"," learning curve for new developers and a","nd accelerates the prototyping and deplo","eployment process. The 4D environment in","t includes its own programming language—","age—4D Language—which is both powerful a","ul and accessible, offering support for ","for object-oriented programming, SQL com"," commands, and modern coding practices.\r","es.\r\nOver the decades, 4D has adapted to","d to technological changes and maintaine","ained relevance by incorporating modern ","ern features such as support for REST AP","T APIs, JSON, ORDA (Object Relational Da","l Data Access), and mobile development i","nt integrations. This forward-thinking a","ng approach allows legacy applications t","ns to be maintained while also giving de","g developers the tools they need to buil","build cutting-edge web and cloud-based a","ed applications. Additionally, 4D Server","rver enables scalable deployment options","ions, allowing businesses to host multi-","lti-user applications on networks or in "," in cloud environments with ease.\r\n4D is","D is especially popular among small to m","to medium-sized businesses, software con"," consultants, and in-house IT department","ments looking for flexibility and speed ","eed without sacrificing power. Its cross","ross-platform capabilities ensure that a","at applications can run on both macOS an","S and Windows systems seamlessly. Moreov","reover, 4D’s built-in security features,","res, backup management, and database int"," integrity tools make it a dependable ch","e choice for mission-critical applicatio","ations across industries such as healthc","lthcare, finance, logistics, and educati","cation.\r\nAnother strength of 4D is its d","ts dedicated community and comprehensive","sive documentation. The company behind 4","nd 4D provides frequent updates, profess","fessional support services, and active f","ve forums where developers can share kno"," knowledge, solve problems, and collabor","aborate on best practices. 4D World Tour","Tour events and technical blogs further ","her enrich the ecosystem, helping new an","w and experienced users stay current wit"," with platform advancements.\r\nIn summary","mary, 4th Dimension stands as a testamen","ament to the enduring value of integrate","rated development environments. While it","e it may not have the widespread name re","e recognition of newer tools, it offers ","ers a mature, stable, and feature-rich e","ch environment for building custom appli","pplications tailored to business needs. ","ds. For developers who value productivit","ivity, reliability, and deep control ove"," over both data and interface, 4D remain","mains a compelling option in the modern ","ern software landscape.\r\n"]
```
