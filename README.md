![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
[![license](https://img.shields.io/github/license/miyako/overlap-chunk)](LICENSE)
![downloads](https://img.shields.io/github/downloads/miyako/overlap-chunk/total)

# overlap-chunk
port of [overlap-chunk](https://github.com/katsuhirohonda/overlap-chunk) by @katsuhirohonda

basic chunking, semantic token boundaries not considered.

### usage

```4d
$file:=File("/DATA/sample.txt")

var $overlap_chunk : cs.overlap_chunk
$overlap_chunk:=cs.overlap_chunk.new()
$results:=$overlap_chunk.chunk({file: $file; size: 40; overlap: 10})
```

#### result

```json
[
	{
		"index": 1,
		"content": "Exploring 4th Dimension: A Pioneer in Da"
	},
	{
		"index": 2,
		"content": "n Database Software Development\r\n4th Dim"
	},
	{
		"index": 3,
		"content": " Dimension, often abbreviated as 4D, is "
	},
	{
		"index": 4,
		"content": " is a powerful and mature software devel"
	},
	{
		"index": 5,
		"content": "evelopment platform that has played a si"
	},
	{
		"index": 6,
		"content": "a significant role in the evolution of d"
	},
	{
		"index": 7,
		"content": "of database and application development "
	},
	{
		"index": 8,
		"content": "ent since the 1980s. Originally launched"
	},
	{
		"index": 9,
		"content": "ched in 1984 by Laurent Ribardière and l"
	},
	{
		"index": 10,
		"content": "nd later developed and distributed by th"
	},
	{
		"index": 11,
		"content": "y the French company 4D SAS, 4D is renow"
	},
	{
		"index": 12,
		"content": "enowned for its integrated environment t"
	},
	{
		"index": 13,
		"content": "nt that combines a relational database e"
	},
	{
		"index": 14,
		"content": "se engine with a programming language an"
	},
	{
		"index": 15,
		"content": "e and graphical user interface tools. At"
	},
	{
		"index": 16,
		"content": ". At its core, 4D is designed to allow d"
	},
	{
		"index": 17,
		"content": "ow developers to create customized busin"
	},
	{
		"index": 18,
		"content": "usiness solutions rapidly and efficientl"
	},
	{
		"index": 19,
		"content": "ently.\r\nWhat makes 4D unique is its all-"
	},
	{
		"index": 20,
		"content": "all-in-one approach. Unlike many modern "
	},
	{
		"index": 21,
		"content": "ern development stacks that require exte"
	},
	{
		"index": 22,
		"content": "external tools and complex integrations,"
	},
	{
		"index": 23,
		"content": "ons, 4D delivers a unified development e"
	},
	{
		"index": 24,
		"content": "nt experience where the database, progra"
	},
	{
		"index": 25,
		"content": "ogramming logic, user interface, and ser"
	},
	{
		"index": 26,
		"content": " server capabilities coexist within a si"
	},
	{
		"index": 27,
		"content": "a single framework. This reduces the lea"
	},
	{
		"index": 28,
		"content": " learning curve for new developers and a"
	},
	{
		"index": 29,
		"content": "nd accelerates the prototyping and deplo"
	},
	{
		"index": 30,
		"content": "eployment process. The 4D environment in"
	},
	{
		"index": 31,
		"content": "t includes its own programming language—"
	},
	{
		"index": 32,
		"content": "age—4D Language—which is both powerful a"
	},
	{
		"index": 33,
		"content": "ul and accessible, offering support for "
	},
	{
		"index": 34,
		"content": "for object-oriented programming, SQL com"
	},
	{
		"index": 35,
		"content": " commands, and modern coding practices.\r"
	},
	{
		"index": 36,
		"content": "es.\r\nOver the decades, 4D has adapted to"
	},
	{
		"index": 37,
		"content": "d to technological changes and maintaine"
	},
	{
		"index": 38,
		"content": "ained relevance by incorporating modern "
	},
	{
		"index": 39,
		"content": "ern features such as support for REST AP"
	},
	{
		"index": 40,
		"content": "T APIs, JSON, ORDA (Object Relational Da"
	},
	{
		"index": 41,
		"content": "l Data Access), and mobile development i"
	},
	{
		"index": 42,
		"content": "nt integrations. This forward-thinking a"
	},
	{
		"index": 43,
		"content": "ng approach allows legacy applications t"
	},
	{
		"index": 44,
		"content": "ns to be maintained while also giving de"
	},
	{
		"index": 45,
		"content": "g developers the tools they need to buil"
	},
	{
		"index": 46,
		"content": "build cutting-edge web and cloud-based a"
	},
	{
		"index": 47,
		"content": "ed applications. Additionally, 4D Server"
	},
	{
		"index": 48,
		"content": "rver enables scalable deployment options"
	},
	{
		"index": 49,
		"content": "ions, allowing businesses to host multi-"
	},
	{
		"index": 50,
		"content": "lti-user applications on networks or in "
	},
	{
		"index": 51,
		"content": " in cloud environments with ease.\r\n4D is"
	},
	{
		"index": 52,
		"content": "D is especially popular among small to m"
	},
	{
		"index": 53,
		"content": "to medium-sized businesses, software con"
	},
	{
		"index": 54,
		"content": " consultants, and in-house IT department"
	},
	{
		"index": 55,
		"content": "ments looking for flexibility and speed "
	},
	{
		"index": 56,
		"content": "eed without sacrificing power. Its cross"
	},
	{
		"index": 57,
		"content": "ross-platform capabilities ensure that a"
	},
	{
		"index": 58,
		"content": "at applications can run on both macOS an"
	},
	{
		"index": 59,
		"content": "S and Windows systems seamlessly. Moreov"
	},
	{
		"index": 60,
		"content": "reover, 4D’s built-in security features,"
	},
	{
		"index": 61,
		"content": "res, backup management, and database int"
	},
	{
		"index": 62,
		"content": " integrity tools make it a dependable ch"
	},
	{
		"index": 63,
		"content": "e choice for mission-critical applicatio"
	},
	{
		"index": 64,
		"content": "ations across industries such as healthc"
	},
	{
		"index": 65,
		"content": "lthcare, finance, logistics, and educati"
	},
	{
		"index": 66,
		"content": "cation.\r\nAnother strength of 4D is its d"
	},
	{
		"index": 67,
		"content": "ts dedicated community and comprehensive"
	},
	{
		"index": 68,
		"content": "sive documentation. The company behind 4"
	},
	{
		"index": 69,
		"content": "nd 4D provides frequent updates, profess"
	},
	{
		"index": 70,
		"content": "fessional support services, and active f"
	},
	{
		"index": 71,
		"content": "ve forums where developers can share kno"
	},
	{
		"index": 72,
		"content": " knowledge, solve problems, and collabor"
	},
	{
		"index": 73,
		"content": "aborate on best practices. 4D World Tour"
	},
	{
		"index": 74,
		"content": "Tour events and technical blogs further "
	},
	{
		"index": 75,
		"content": "her enrich the ecosystem, helping new an"
	},
	{
		"index": 76,
		"content": "w and experienced users stay current wit"
	},
	{
		"index": 77,
		"content": " with platform advancements.\r\nIn summary"
	},
	{
		"index": 78,
		"content": "mary, 4th Dimension stands as a testamen"
	},
	{
		"index": 79,
		"content": "ament to the enduring value of integrate"
	},
	{
		"index": 80,
		"content": "rated development environments. While it"
	},
	{
		"index": 81,
		"content": "e it may not have the widespread name re"
	},
	{
		"index": 82,
		"content": "e recognition of newer tools, it offers "
	},
	{
		"index": 83,
		"content": "ers a mature, stable, and feature-rich e"
	},
	{
		"index": 84,
		"content": "ch environment for building custom appli"
	},
	{
		"index": 85,
		"content": "pplications tailored to business needs. "
	},
	{
		"index": 86,
		"content": "ds. For developers who value productivit"
	},
	{
		"index": 87,
		"content": "ivity, reliability, and deep control ove"
	},
	{
		"index": 88,
		"content": " over both data and interface, 4D remain"
	},
	{
		"index": 89,
		"content": "mains a compelling option in the modern "
	},
	{
		"index": 90,
		"content": "ern software landscape.\r\n"
	}
]
```
