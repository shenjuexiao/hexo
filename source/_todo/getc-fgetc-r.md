date: 2016-03-01 00:00:00
categories: C
tags:
title: C getc/fgetc 
---
**getc/fgetc的使用文件方式应为`"r"`**  

关于调用getc（或fgetc）函数输入一个字符的问题。

**1．getc函数的调用形式** 
---
`ch=getc(pf);` 

此处pf是文件指针。函数的功能是从pf指定的文件中读入一个字符，并把它作为函数值返回。以上表达式中getc函数把从文件中读入的一个字符赋给变量ch。

fgetc函数的调用形式和函数的功能与getc函数完全相同。

**2．例题**
---
例16.2　把一个已存在磁盘上的file_a.dat文本文件中的内容，原样输出到终端屏幕上。

算法步骤如下：  

（1）打开文件。  
（2）从指定文件中读入一个字符。  
（3）判断读入的是否是文件结束标志。若是，结束循环，执行步骤（7）。  
（4）把刚读入的字符输出到终端屏幕。  
（5）从文件中再读入一个字符。  
（6）重复步骤（3）至（5）。  
（7）关闭文件。  
（8）程序结束。  
注意：无论调用哪种函数读文件时，最好要先执行一次读操作，然后才能判断文件是否结束。  

程序如下：

	#include <stdio.h>
	#include <stdlib.h>
    main()
	{
		FILE *fpin;
		char ch;
		if((fpin=fopen("file_a.dat", "r"))==NULL)
		{ 
			printf("Cannot open this file!\n"); 
			exit(0); 
		}
		ch=fgetc(fpin);
		while(ch!=EOF)
		{
			putchar(ch);  
			ch=fgetc(fpin);
		}
	fclose(fpin);
	}

假如file_a.dat的内容是abcdefghij，输出如下：

![](http://7xs2hi.com1.z0.glb.clouddn.com/getc_fgetc_r.png)


如果文件使用方式是`"w"`，那么等于打开的时候改写了文件，输出为空。

	if((fpin=fopen("file_a.dat", "w"))==NULL)

![](http://7xs2hi.com1.z0.glb.clouddn.com/getc_fgetc_w.png)

