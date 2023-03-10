Class MC2022AOC.Day5
{

ClassMethod runGame2(intLive As %Integer = 1, intVerb As %Integer = 0) As %Integer
{
	I intLive=1
	{ d ..initLive() }
	ELSE 
	{ d ..initTest() }
	
	F i=1:1:^AOCD5D
	{
		S ^AOCD5I(0,i)=^AOCD5D(i)
	}
	
	for intRow=1:1:^AOCD5I {
		
		S strInstr=^AOCD5I(intRow)
		S intQty=$P(strInstr," ",2)
		S ^AOCD5I(intRow,"1Qty")=intQty
		S intSource=$P(strInstr," ",4)
		S ^AOCD5I(intRow,"2Source")=intSource
		S intDest=$P(strInstr," ",6)
		S ^AOCD5I(intRow,"3Dest")=intDest
		
		s strNewDest=^AOCD5D(intDest)_$E(^AOCD5D(intSource),*-(intQty-1),*)
		S strNewSource=$E(^AOCD5D(intSource),1,*-(intQty))
		S ^AOCD5D(intDest)=strNewDest
		S ^AOCD5D(intSource)=strNewSource
		
		F i=1:1:^AOCD5D
		{
			S ^AOCD5I(intRow,i)=^AOCD5D(i)
		}
		
		
	}
	
	S strTops=""
	for intStack=1:1:^AOCD5D {
		S strTops=strTops_$E(^AOCD5D(intStack),*,*)
	}
	Q strTops
}

ClassMethod runGame(intLive As %Integer = 1, intVerb As %Integer = 0) As %Integer
{
	I intLive=1
	{ d ..initLive() }
	ELSE 
	{ d ..initTest() }
	
	
	F i=1:1:^AOCD5D
	{
		S ^AOCD5I(0,i)=^AOCD5D(i)
	}
	
	for intRow=1:1:^AOCD5I {
		
		S strInstr=^AOCD5I(intRow)
		S intQty=$P(strInstr," ",2)
		S ^AOCD5I(intRow,"1Qty")=intQty
		S intSource=$P(strInstr," ",4)
		S ^AOCD5I(intRow,"2Source")=intSource
		S intDest=$P(strInstr," ",6)
		S ^AOCD5I(intRow,"3Dest")=intDest
		
		F M=1:1:intQty {
			s strNewDest=^AOCD5D(intDest)_$E(^AOCD5D(intSource),*,*)
			S strNewSource=$E(^AOCD5D(intSource),1,*-1)
			S ^AOCD5D(intDest)=strNewDest
			S ^AOCD5D(intSource)=strNewSource
		}
		
		F i=1:1:^AOCD5D
		{
			S ^AOCD5I(intRow,i)=^AOCD5D(i)
		}
		
		
	}
	
	S strTops=""
	for intStack=1:1:^AOCD5D {
		S strTops=strTops_$E(^AOCD5D(intStack),*,*)
	}
	Q strTops
}

ClassMethod initTest()
{
 k ^AOCD5D,^AOCD5I
 
 S ^AOCD5D=3
 S ^AOCD5D(1)="ZN"
 S ^AOCD5D(2)="MCD"
 S ^AOCD5D(3)="P"
 
 S ^AOCD5I=4
 S ^AOCD5I(1)="move 1 from 2 to 1"
 S ^AOCD5I(2)="move 3 from 1 to 3"
 S ^AOCD5I(3)="move 2 from 2 to 1"
 S ^AOCD5I(4)="move 1 from 1 to 2"
}

ClassMethod initLive()
{
 k ^AOCD5D,^AOCD5I
 
 S ^AOCD5D=9
 S ^AOCD5D(1)="BLDTWCFM"
 S ^AOCD5D(2)="NBL"
 S ^AOCD5D(3)="JCHTLV"
 S ^AOCD5D(4)="SPJW"
 S ^AOCD5D(5)="ZSCFTLR"
 S ^AOCD5D(6)="WDGBHNZ"
 S ^AOCD5D(7)="FMSPVGCN"
 S ^AOCD5D(8)="WQRJFVCZ"
 S ^AOCD5D(9)="RPMLH"
 
 S ^AOCD5I=502
 S ^AOCD5I(1)="move 5 from 3 to 6"
 S ^AOCD5I(2)="move 2 from 2 to 5"
 S ^AOCD5I(3)="move 1 from 9 to 1"
 S ^AOCD5I(4)="move 1 from 3 to 1"
 S ^AOCD5I(5)="move 5 from 7 to 5"
 S ^AOCD5I(6)="move 2 from 9 to 8"
 S ^AOCD5I(7)="move 1 from 2 to 8"
 S ^AOCD5I(8)="move 1 from 4 to 2"
 S ^AOCD5I(9)="move 8 from 1 to 6"
 S ^AOCD5I(10)="move 4 from 6 to 9"
 S ^AOCD5I(11)="move 1 from 2 to 1"
 S ^AOCD5I(12)="move 2 from 4 to 8"
 S ^AOCD5I(13)="move 2 from 8 to 4"
 S ^AOCD5I(14)="move 3 from 7 to 5"
 S ^AOCD5I(15)="move 6 from 5 to 3"
 S ^AOCD5I(16)="move 1 from 1 to 8"
 S ^AOCD5I(17)="move 1 from 5 to 7"
 S ^AOCD5I(18)="move 5 from 6 to 9"
 S ^AOCD5I(19)="move 3 from 5 to 8"
 S ^AOCD5I(20)="move 2 from 4 to 3"
 S ^AOCD5I(21)="move 1 from 7 to 8"
 S ^AOCD5I(22)="move 2 from 8 to 6"
 S ^AOCD5I(23)="move 2 from 1 to 8"
 S ^AOCD5I(24)="move 8 from 3 to 8"
 S ^AOCD5I(25)="move 11 from 6 to 3"
 S ^AOCD5I(26)="move 1 from 4 to 7"
 S ^AOCD5I(27)="move 1 from 3 to 7"
 S ^AOCD5I(28)="move 2 from 6 to 1"
 S ^AOCD5I(29)="move 7 from 9 to 7"
 S ^AOCD5I(30)="move 10 from 3 to 5"
 S ^AOCD5I(31)="move 1 from 9 to 3"
 S ^AOCD5I(32)="move 2 from 9 to 5"
 S ^AOCD5I(33)="move 5 from 5 to 2"
 S ^AOCD5I(34)="move 19 from 8 to 6"
 S ^AOCD5I(35)="move 1 from 9 to 6"
 S ^AOCD5I(36)="move 1 from 3 to 8"
 S ^AOCD5I(37)="move 4 from 2 to 6"
 S ^AOCD5I(38)="move 1 from 1 to 4"
 S ^AOCD5I(39)="move 5 from 8 to 9"
 S ^AOCD5I(40)="move 1 from 2 to 1"
 S ^AOCD5I(41)="move 6 from 7 to 2"
 S ^AOCD5I(42)="move 3 from 5 to 8"
 S ^AOCD5I(43)="move 3 from 8 to 1"
 S ^AOCD5I(44)="move 2 from 9 to 6"
 S ^AOCD5I(45)="move 1 from 7 to 8"
 S ^AOCD5I(46)="move 6 from 2 to 7"
 S ^AOCD5I(47)="move 1 from 4 to 8"
 S ^AOCD5I(48)="move 3 from 8 to 4"
 S ^AOCD5I(49)="move 2 from 1 to 5"
 S ^AOCD5I(50)="move 7 from 7 to 6"
 S ^AOCD5I(51)="move 1 from 7 to 2"
 S ^AOCD5I(52)="move 3 from 4 to 6"
 S ^AOCD5I(53)="move 2 from 9 to 2"
 S ^AOCD5I(54)="move 1 from 1 to 8"
 S ^AOCD5I(55)="move 2 from 1 to 3"
 S ^AOCD5I(56)="move 1 from 8 to 7"
 S ^AOCD5I(57)="move 3 from 2 to 5"
 S ^AOCD5I(58)="move 5 from 5 to 8"
 S ^AOCD5I(59)="move 4 from 5 to 3"
 S ^AOCD5I(60)="move 1 from 7 to 8"
 S ^AOCD5I(61)="move 2 from 8 to 1"
 S ^AOCD5I(62)="move 1 from 8 to 5"
 S ^AOCD5I(63)="move 5 from 3 to 5"
 S ^AOCD5I(64)="move 13 from 5 to 1"
 S ^AOCD5I(65)="move 1 from 3 to 4"
 S ^AOCD5I(66)="move 2 from 8 to 3"
 S ^AOCD5I(67)="move 3 from 1 to 4"
 S ^AOCD5I(68)="move 1 from 3 to 1"
 S ^AOCD5I(69)="move 1 from 8 to 1"
 S ^AOCD5I(70)="move 5 from 1 to 9"
 S ^AOCD5I(71)="move 1 from 3 to 7"
 S ^AOCD5I(72)="move 2 from 9 to 6"
 S ^AOCD5I(73)="move 2 from 1 to 7"
 S ^AOCD5I(74)="move 3 from 1 to 5"
 S ^AOCD5I(75)="move 3 from 1 to 5"
 S ^AOCD5I(76)="move 1 from 6 to 1"
 S ^AOCD5I(77)="move 4 from 4 to 3"
 S ^AOCD5I(78)="move 3 from 9 to 1"
 S ^AOCD5I(79)="move 5 from 1 to 7"
 S ^AOCD5I(80)="move 7 from 7 to 8"
 S ^AOCD5I(81)="move 1 from 3 to 9"
 S ^AOCD5I(82)="move 28 from 6 to 8"
 S ^AOCD5I(83)="move 5 from 5 to 9"
 S ^AOCD5I(84)="move 6 from 6 to 1"
 S ^AOCD5I(85)="move 4 from 1 to 8"
 S ^AOCD5I(86)="move 5 from 9 to 1"
 S ^AOCD5I(87)="move 12 from 8 to 7"
 S ^AOCD5I(88)="move 1 from 3 to 8"
 S ^AOCD5I(89)="move 6 from 1 to 4"
 S ^AOCD5I(90)="move 5 from 4 to 1"
 S ^AOCD5I(91)="move 3 from 6 to 4"
 S ^AOCD5I(92)="move 2 from 3 to 4"
 S ^AOCD5I(93)="move 3 from 1 to 5"
 S ^AOCD5I(94)="move 6 from 7 to 1"
 S ^AOCD5I(95)="move 2 from 4 to 9"
 S ^AOCD5I(96)="move 2 from 5 to 4"
 S ^AOCD5I(97)="move 19 from 8 to 1"
 S ^AOCD5I(98)="move 4 from 9 to 5"
 S ^AOCD5I(99)="move 5 from 4 to 3"
 S ^AOCD5I(100)="move 4 from 1 to 4"
 S ^AOCD5I(101)="move 5 from 5 to 1"
 S ^AOCD5I(102)="move 3 from 8 to 5"
 S ^AOCD5I(103)="move 7 from 7 to 3"
 S ^AOCD5I(104)="move 14 from 1 to 8"
 S ^AOCD5I(105)="move 5 from 4 to 2"
 S ^AOCD5I(106)="move 12 from 8 to 7"
 S ^AOCD5I(107)="move 1 from 3 to 6"
 S ^AOCD5I(108)="move 3 from 5 to 9"
 S ^AOCD5I(109)="move 1 from 7 to 8"
 S ^AOCD5I(110)="move 8 from 1 to 2"
 S ^AOCD5I(111)="move 5 from 1 to 2"
 S ^AOCD5I(112)="move 9 from 3 to 4"
 S ^AOCD5I(113)="move 8 from 4 to 6"
 S ^AOCD5I(114)="move 2 from 1 to 9"
 S ^AOCD5I(115)="move 3 from 6 to 1"
 S ^AOCD5I(116)="move 5 from 6 to 7"
 S ^AOCD5I(117)="move 14 from 7 to 1"
 S ^AOCD5I(118)="move 1 from 4 to 7"
 S ^AOCD5I(119)="move 6 from 8 to 2"
 S ^AOCD5I(120)="move 14 from 1 to 4"
 S ^AOCD5I(121)="move 13 from 4 to 9"
 S ^AOCD5I(122)="move 2 from 3 to 5"
 S ^AOCD5I(123)="move 3 from 1 to 7"
 S ^AOCD5I(124)="move 1 from 8 to 4"
 S ^AOCD5I(125)="move 1 from 4 to 1"
 S ^AOCD5I(126)="move 1 from 1 to 3"
 S ^AOCD5I(127)="move 1 from 3 to 4"
 S ^AOCD5I(128)="move 1 from 4 to 1"
 S ^AOCD5I(129)="move 1 from 6 to 9"
 S ^AOCD5I(130)="move 1 from 7 to 6"
 S ^AOCD5I(131)="move 1 from 4 to 5"
 S ^AOCD5I(132)="move 11 from 9 to 3"
 S ^AOCD5I(133)="move 6 from 3 to 8"
 S ^AOCD5I(134)="move 5 from 3 to 1"
 S ^AOCD5I(135)="move 2 from 8 to 4"
 S ^AOCD5I(136)="move 1 from 6 to 2"
 S ^AOCD5I(137)="move 7 from 9 to 2"
 S ^AOCD5I(138)="move 1 from 7 to 2"
 S ^AOCD5I(139)="move 1 from 9 to 8"
 S ^AOCD5I(140)="move 2 from 8 to 6"
 S ^AOCD5I(141)="move 30 from 2 to 3"
 S ^AOCD5I(142)="move 2 from 7 to 2"
 S ^AOCD5I(143)="move 2 from 8 to 2"
 S ^AOCD5I(144)="move 3 from 8 to 7"
 S ^AOCD5I(145)="move 6 from 2 to 5"
 S ^AOCD5I(146)="move 1 from 2 to 5"
 S ^AOCD5I(147)="move 3 from 1 to 8"
 S ^AOCD5I(148)="move 2 from 6 to 7"
 S ^AOCD5I(149)="move 1 from 1 to 9"
 S ^AOCD5I(150)="move 1 from 9 to 3"
 S ^AOCD5I(151)="move 7 from 3 to 1"
 S ^AOCD5I(152)="move 6 from 7 to 8"
 S ^AOCD5I(153)="move 8 from 3 to 9"
 S ^AOCD5I(154)="move 7 from 9 to 1"
 S ^AOCD5I(155)="move 1 from 5 to 8"
 S ^AOCD5I(156)="move 7 from 5 to 9"
 S ^AOCD5I(157)="move 2 from 4 to 2"
 S ^AOCD5I(158)="move 11 from 3 to 6"
 S ^AOCD5I(159)="move 2 from 2 to 7"
 S ^AOCD5I(160)="move 11 from 1 to 8"
 S ^AOCD5I(161)="move 2 from 5 to 4"
 S ^AOCD5I(162)="move 11 from 6 to 4"
 S ^AOCD5I(163)="move 12 from 4 to 9"
 S ^AOCD5I(164)="move 4 from 1 to 5"
 S ^AOCD5I(165)="move 3 from 7 to 9"
 S ^AOCD5I(166)="move 12 from 8 to 4"
 S ^AOCD5I(167)="move 1 from 1 to 7"
 S ^AOCD5I(168)="move 6 from 8 to 3"
 S ^AOCD5I(169)="move 2 from 3 to 5"
 S ^AOCD5I(170)="move 3 from 8 to 4"
 S ^AOCD5I(171)="move 3 from 3 to 7"
 S ^AOCD5I(172)="move 9 from 9 to 7"
 S ^AOCD5I(173)="move 5 from 3 to 9"
 S ^AOCD5I(174)="move 1 from 3 to 2"
 S ^AOCD5I(175)="move 13 from 7 to 5"
 S ^AOCD5I(176)="move 1 from 2 to 6"
 S ^AOCD5I(177)="move 1 from 6 to 1"
 S ^AOCD5I(178)="move 1 from 1 to 6"
 S ^AOCD5I(179)="move 16 from 4 to 5"
 S ^AOCD5I(180)="move 1 from 5 to 6"
 S ^AOCD5I(181)="move 16 from 5 to 4"
 S ^AOCD5I(182)="move 13 from 4 to 5"
 S ^AOCD5I(183)="move 3 from 4 to 2"
 S ^AOCD5I(184)="move 1 from 6 to 7"
 S ^AOCD5I(185)="move 3 from 2 to 1"
 S ^AOCD5I(186)="move 8 from 5 to 2"
 S ^AOCD5I(187)="move 3 from 1 to 4"
 S ^AOCD5I(188)="move 1 from 7 to 9"
 S ^AOCD5I(189)="move 14 from 5 to 1"
 S ^AOCD5I(190)="move 10 from 1 to 5"
 S ^AOCD5I(191)="move 1 from 2 to 8"
 S ^AOCD5I(192)="move 19 from 9 to 1"
 S ^AOCD5I(193)="move 1 from 9 to 1"
 S ^AOCD5I(194)="move 6 from 2 to 7"
 S ^AOCD5I(195)="move 4 from 1 to 7"
 S ^AOCD5I(196)="move 1 from 8 to 6"
 S ^AOCD5I(197)="move 16 from 5 to 3"
 S ^AOCD5I(198)="move 1 from 5 to 4"
 S ^AOCD5I(199)="move 2 from 5 to 2"
 S ^AOCD5I(200)="move 1 from 5 to 6"
 S ^AOCD5I(201)="move 1 from 6 to 5"
 S ^AOCD5I(202)="move 1 from 2 to 4"
 S ^AOCD5I(203)="move 7 from 7 to 2"
 S ^AOCD5I(204)="move 4 from 4 to 7"
 S ^AOCD5I(205)="move 2 from 6 to 2"
 S ^AOCD5I(206)="move 8 from 2 to 9"
 S ^AOCD5I(207)="move 4 from 9 to 2"
 S ^AOCD5I(208)="move 16 from 3 to 7"
 S ^AOCD5I(209)="move 4 from 9 to 7"
 S ^AOCD5I(210)="move 14 from 1 to 3"
 S ^AOCD5I(211)="move 26 from 7 to 8"
 S ^AOCD5I(212)="move 1 from 5 to 4"
 S ^AOCD5I(213)="move 20 from 8 to 4"
 S ^AOCD5I(214)="move 5 from 1 to 8"
 S ^AOCD5I(215)="move 2 from 4 to 6"
 S ^AOCD5I(216)="move 4 from 3 to 2"
 S ^AOCD5I(217)="move 1 from 6 to 5"
 S ^AOCD5I(218)="move 8 from 2 to 4"
 S ^AOCD5I(219)="move 1 from 6 to 5"
 S ^AOCD5I(220)="move 1 from 7 to 8"
 S ^AOCD5I(221)="move 8 from 3 to 1"
 S ^AOCD5I(222)="move 6 from 1 to 9"
 S ^AOCD5I(223)="move 1 from 3 to 6"
 S ^AOCD5I(224)="move 14 from 4 to 1"
 S ^AOCD5I(225)="move 1 from 3 to 8"
 S ^AOCD5I(226)="move 2 from 2 to 1"
 S ^AOCD5I(227)="move 1 from 6 to 8"
 S ^AOCD5I(228)="move 1 from 2 to 8"
 S ^AOCD5I(229)="move 5 from 8 to 1"
 S ^AOCD5I(230)="move 2 from 1 to 6"
 S ^AOCD5I(231)="move 2 from 5 to 9"
 S ^AOCD5I(232)="move 1 from 6 to 3"
 S ^AOCD5I(233)="move 1 from 6 to 1"
 S ^AOCD5I(234)="move 5 from 9 to 2"
 S ^AOCD5I(235)="move 5 from 4 to 1"
 S ^AOCD5I(236)="move 5 from 4 to 2"
 S ^AOCD5I(237)="move 16 from 1 to 8"
 S ^AOCD5I(238)="move 9 from 1 to 4"
 S ^AOCD5I(239)="move 24 from 8 to 6"
 S ^AOCD5I(240)="move 1 from 8 to 7"
 S ^AOCD5I(241)="move 7 from 6 to 5"
 S ^AOCD5I(242)="move 1 from 3 to 4"
 S ^AOCD5I(243)="move 3 from 1 to 8"
 S ^AOCD5I(244)="move 3 from 5 to 8"
 S ^AOCD5I(245)="move 10 from 4 to 8"
 S ^AOCD5I(246)="move 3 from 4 to 6"
 S ^AOCD5I(247)="move 1 from 7 to 4"
 S ^AOCD5I(248)="move 20 from 6 to 7"
 S ^AOCD5I(249)="move 1 from 4 to 9"
 S ^AOCD5I(250)="move 1 from 4 to 9"
 S ^AOCD5I(251)="move 7 from 2 to 3"
 S ^AOCD5I(252)="move 13 from 8 to 9"
 S ^AOCD5I(253)="move 4 from 5 to 9"
 S ^AOCD5I(254)="move 4 from 8 to 5"
 S ^AOCD5I(255)="move 18 from 9 to 2"
 S ^AOCD5I(256)="move 14 from 7 to 5"
 S ^AOCD5I(257)="move 6 from 3 to 8"
 S ^AOCD5I(258)="move 1 from 3 to 2"
 S ^AOCD5I(259)="move 1 from 8 to 6"
 S ^AOCD5I(260)="move 4 from 8 to 2"
 S ^AOCD5I(261)="move 1 from 2 to 3"
 S ^AOCD5I(262)="move 17 from 5 to 3"
 S ^AOCD5I(263)="move 18 from 3 to 5"
 S ^AOCD5I(264)="move 6 from 7 to 2"
 S ^AOCD5I(265)="move 3 from 9 to 7"
 S ^AOCD5I(266)="move 1 from 8 to 6"
 S ^AOCD5I(267)="move 5 from 2 to 5"
 S ^AOCD5I(268)="move 26 from 2 to 7"
 S ^AOCD5I(269)="move 1 from 6 to 9"
 S ^AOCD5I(270)="move 29 from 7 to 9"
 S ^AOCD5I(271)="move 15 from 5 to 2"
 S ^AOCD5I(272)="move 1 from 6 to 7"
 S ^AOCD5I(273)="move 8 from 9 to 2"
 S ^AOCD5I(274)="move 14 from 2 to 6"
 S ^AOCD5I(275)="move 16 from 9 to 1"
 S ^AOCD5I(276)="move 6 from 9 to 1"
 S ^AOCD5I(277)="move 1 from 7 to 1"
 S ^AOCD5I(278)="move 3 from 2 to 1"
 S ^AOCD5I(279)="move 5 from 2 to 6"
 S ^AOCD5I(280)="move 15 from 1 to 4"
 S ^AOCD5I(281)="move 1 from 2 to 8"
 S ^AOCD5I(282)="move 1 from 9 to 7"
 S ^AOCD5I(283)="move 1 from 8 to 6"
 S ^AOCD5I(284)="move 19 from 6 to 7"
 S ^AOCD5I(285)="move 10 from 1 to 8"
 S ^AOCD5I(286)="move 4 from 8 to 3"
 S ^AOCD5I(287)="move 1 from 7 to 5"
 S ^AOCD5I(288)="move 3 from 5 to 3"
 S ^AOCD5I(289)="move 13 from 7 to 6"
 S ^AOCD5I(290)="move 2 from 8 to 9"
 S ^AOCD5I(291)="move 7 from 3 to 6"
 S ^AOCD5I(292)="move 5 from 5 to 3"
 S ^AOCD5I(293)="move 1 from 1 to 6"
 S ^AOCD5I(294)="move 2 from 5 to 1"
 S ^AOCD5I(295)="move 4 from 4 to 8"
 S ^AOCD5I(296)="move 7 from 8 to 7"
 S ^AOCD5I(297)="move 8 from 7 to 3"
 S ^AOCD5I(298)="move 1 from 8 to 4"
 S ^AOCD5I(299)="move 2 from 9 to 2"
 S ^AOCD5I(300)="move 8 from 6 to 5"
 S ^AOCD5I(301)="move 1 from 4 to 5"
 S ^AOCD5I(302)="move 4 from 5 to 4"
 S ^AOCD5I(303)="move 2 from 2 to 8"
 S ^AOCD5I(304)="move 9 from 4 to 5"
 S ^AOCD5I(305)="move 2 from 1 to 9"
 S ^AOCD5I(306)="move 2 from 8 to 9"
 S ^AOCD5I(307)="move 14 from 6 to 4"
 S ^AOCD5I(308)="move 5 from 3 to 4"
 S ^AOCD5I(309)="move 3 from 9 to 7"
 S ^AOCD5I(310)="move 3 from 5 to 3"
 S ^AOCD5I(311)="move 2 from 4 to 8"
 S ^AOCD5I(312)="move 2 from 4 to 7"
 S ^AOCD5I(313)="move 2 from 8 to 9"
 S ^AOCD5I(314)="move 4 from 5 to 8"
 S ^AOCD5I(315)="move 16 from 4 to 6"
 S ^AOCD5I(316)="move 1 from 9 to 6"
 S ^AOCD5I(317)="move 3 from 7 to 5"
 S ^AOCD5I(318)="move 7 from 7 to 5"
 S ^AOCD5I(319)="move 10 from 5 to 1"
 S ^AOCD5I(320)="move 6 from 3 to 8"
 S ^AOCD5I(321)="move 2 from 9 to 3"
 S ^AOCD5I(322)="move 3 from 6 to 9"
 S ^AOCD5I(323)="move 3 from 3 to 6"
 S ^AOCD5I(324)="move 2 from 1 to 7"
 S ^AOCD5I(325)="move 13 from 6 to 2"
 S ^AOCD5I(326)="move 2 from 4 to 5"
 S ^AOCD5I(327)="move 2 from 7 to 6"
 S ^AOCD5I(328)="move 2 from 6 to 7"
 S ^AOCD5I(329)="move 2 from 4 to 1"
 S ^AOCD5I(330)="move 3 from 9 to 5"
 S ^AOCD5I(331)="move 1 from 1 to 4"
 S ^AOCD5I(332)="move 3 from 2 to 5"
 S ^AOCD5I(333)="move 2 from 4 to 1"
 S ^AOCD5I(334)="move 2 from 3 to 2"
 S ^AOCD5I(335)="move 5 from 8 to 5"
 S ^AOCD5I(336)="move 1 from 7 to 2"
 S ^AOCD5I(337)="move 1 from 7 to 1"
 S ^AOCD5I(338)="move 1 from 3 to 5"
 S ^AOCD5I(339)="move 1 from 8 to 7"
 S ^AOCD5I(340)="move 1 from 6 to 7"
 S ^AOCD5I(341)="move 1 from 3 to 5"
 S ^AOCD5I(342)="move 12 from 5 to 6"
 S ^AOCD5I(343)="move 6 from 6 to 2"
 S ^AOCD5I(344)="move 1 from 7 to 4"
 S ^AOCD5I(345)="move 1 from 5 to 7"
 S ^AOCD5I(346)="move 2 from 8 to 9"
 S ^AOCD5I(347)="move 1 from 9 to 6"
 S ^AOCD5I(348)="move 1 from 8 to 9"
 S ^AOCD5I(349)="move 5 from 6 to 9"
 S ^AOCD5I(350)="move 1 from 8 to 1"
 S ^AOCD5I(351)="move 14 from 2 to 4"
 S ^AOCD5I(352)="move 1 from 7 to 1"
 S ^AOCD5I(353)="move 1 from 7 to 2"
 S ^AOCD5I(354)="move 3 from 2 to 3"
 S ^AOCD5I(355)="move 2 from 3 to 4"
 S ^AOCD5I(356)="move 1 from 2 to 4"
 S ^AOCD5I(357)="move 4 from 6 to 2"
 S ^AOCD5I(358)="move 8 from 5 to 8"
 S ^AOCD5I(359)="move 15 from 4 to 8"
 S ^AOCD5I(360)="move 3 from 4 to 8"
 S ^AOCD5I(361)="move 7 from 8 to 4"
 S ^AOCD5I(362)="move 6 from 1 to 3"
 S ^AOCD5I(363)="move 1 from 6 to 1"
 S ^AOCD5I(364)="move 5 from 4 to 8"
 S ^AOCD5I(365)="move 7 from 9 to 1"
 S ^AOCD5I(366)="move 1 from 5 to 6"
 S ^AOCD5I(367)="move 4 from 2 to 6"
 S ^AOCD5I(368)="move 10 from 1 to 8"
 S ^AOCD5I(369)="move 29 from 8 to 3"
 S ^AOCD5I(370)="move 1 from 4 to 5"
 S ^AOCD5I(371)="move 1 from 4 to 6"
 S ^AOCD5I(372)="move 6 from 1 to 4"
 S ^AOCD5I(373)="move 1 from 5 to 8"
 S ^AOCD5I(374)="move 3 from 4 to 2"
 S ^AOCD5I(375)="move 27 from 3 to 7"
 S ^AOCD5I(376)="move 18 from 7 to 9"
 S ^AOCD5I(377)="move 5 from 6 to 3"
 S ^AOCD5I(378)="move 7 from 7 to 4"
 S ^AOCD5I(379)="move 1 from 7 to 8"
 S ^AOCD5I(380)="move 9 from 3 to 5"
 S ^AOCD5I(381)="move 5 from 3 to 6"
 S ^AOCD5I(382)="move 3 from 4 to 2"
 S ^AOCD5I(383)="move 1 from 7 to 2"
 S ^AOCD5I(384)="move 2 from 8 to 4"
 S ^AOCD5I(385)="move 2 from 8 to 6"
 S ^AOCD5I(386)="move 2 from 8 to 6"
 S ^AOCD5I(387)="move 8 from 2 to 1"
 S ^AOCD5I(388)="move 7 from 5 to 4"
 S ^AOCD5I(389)="move 1 from 8 to 9"
 S ^AOCD5I(390)="move 4 from 1 to 5"
 S ^AOCD5I(391)="move 1 from 2 to 9"
 S ^AOCD5I(392)="move 8 from 6 to 3"
 S ^AOCD5I(393)="move 3 from 1 to 8"
 S ^AOCD5I(394)="move 1 from 1 to 7"
 S ^AOCD5I(395)="move 8 from 3 to 6"
 S ^AOCD5I(396)="move 2 from 8 to 3"
 S ^AOCD5I(397)="move 1 from 3 to 6"
 S ^AOCD5I(398)="move 4 from 6 to 7"
 S ^AOCD5I(399)="move 16 from 4 to 2"
 S ^AOCD5I(400)="move 1 from 3 to 5"
 S ^AOCD5I(401)="move 2 from 6 to 4"
 S ^AOCD5I(402)="move 1 from 2 to 3"
 S ^AOCD5I(403)="move 2 from 7 to 3"
 S ^AOCD5I(404)="move 2 from 7 to 8"
 S ^AOCD5I(405)="move 3 from 6 to 7"
 S ^AOCD5I(406)="move 4 from 5 to 2"
 S ^AOCD5I(407)="move 2 from 4 to 2"
 S ^AOCD5I(408)="move 4 from 9 to 8"
 S ^AOCD5I(409)="move 3 from 5 to 1"
 S ^AOCD5I(410)="move 3 from 1 to 6"
 S ^AOCD5I(411)="move 6 from 9 to 1"
 S ^AOCD5I(412)="move 4 from 7 to 9"
 S ^AOCD5I(413)="move 8 from 9 to 5"
 S ^AOCD5I(414)="move 4 from 5 to 2"
 S ^AOCD5I(415)="move 7 from 8 to 6"
 S ^AOCD5I(416)="move 11 from 6 to 8"
 S ^AOCD5I(417)="move 4 from 1 to 2"
 S ^AOCD5I(418)="move 3 from 8 to 9"
 S ^AOCD5I(419)="move 5 from 8 to 7"
 S ^AOCD5I(420)="move 2 from 1 to 6"
 S ^AOCD5I(421)="move 4 from 5 to 6"
 S ^AOCD5I(422)="move 2 from 7 to 9"
 S ^AOCD5I(423)="move 2 from 7 to 3"
 S ^AOCD5I(424)="move 5 from 6 to 2"
 S ^AOCD5I(425)="move 4 from 3 to 1"
 S ^AOCD5I(426)="move 1 from 7 to 2"
 S ^AOCD5I(427)="move 1 from 3 to 2"
 S ^AOCD5I(428)="move 2 from 6 to 7"
 S ^AOCD5I(429)="move 1 from 1 to 6"
 S ^AOCD5I(430)="move 6 from 9 to 6"
 S ^AOCD5I(431)="move 1 from 7 to 6"
 S ^AOCD5I(432)="move 1 from 7 to 6"
 S ^AOCD5I(433)="move 2 from 1 to 7"
 S ^AOCD5I(434)="move 2 from 8 to 6"
 S ^AOCD5I(435)="move 4 from 9 to 2"
 S ^AOCD5I(436)="move 17 from 2 to 6"
 S ^AOCD5I(437)="move 1 from 9 to 4"
 S ^AOCD5I(438)="move 1 from 1 to 3"
 S ^AOCD5I(439)="move 1 from 4 to 1"
 S ^AOCD5I(440)="move 20 from 2 to 8"
 S ^AOCD5I(441)="move 2 from 7 to 6"
 S ^AOCD5I(442)="move 2 from 2 to 5"
 S ^AOCD5I(443)="move 1 from 3 to 1"
 S ^AOCD5I(444)="move 1 from 2 to 5"
 S ^AOCD5I(445)="move 6 from 8 to 6"
 S ^AOCD5I(446)="move 2 from 5 to 6"
 S ^AOCD5I(447)="move 3 from 6 to 4"
 S ^AOCD5I(448)="move 1 from 1 to 4"
 S ^AOCD5I(449)="move 15 from 8 to 2"
 S ^AOCD5I(450)="move 11 from 2 to 9"
 S ^AOCD5I(451)="move 1 from 1 to 3"
 S ^AOCD5I(452)="move 10 from 9 to 4"
 S ^AOCD5I(453)="move 1 from 9 to 8"
 S ^AOCD5I(454)="move 12 from 6 to 3"
 S ^AOCD5I(455)="move 1 from 8 to 7"
 S ^AOCD5I(456)="move 1 from 5 to 4"
 S ^AOCD5I(457)="move 8 from 4 to 7"
 S ^AOCD5I(458)="move 5 from 3 to 4"
 S ^AOCD5I(459)="move 7 from 6 to 4"
 S ^AOCD5I(460)="move 3 from 3 to 6"
 S ^AOCD5I(461)="move 3 from 3 to 2"
 S ^AOCD5I(462)="move 1 from 3 to 6"
 S ^AOCD5I(463)="move 17 from 4 to 3"
 S ^AOCD5I(464)="move 1 from 3 to 4"
 S ^AOCD5I(465)="move 2 from 4 to 9"
 S ^AOCD5I(466)="move 14 from 3 to 6"
 S ^AOCD5I(467)="move 2 from 2 to 7"
 S ^AOCD5I(468)="move 1 from 4 to 9"
 S ^AOCD5I(469)="move 8 from 7 to 6"
 S ^AOCD5I(470)="move 1 from 3 to 4"
 S ^AOCD5I(471)="move 9 from 6 to 2"
 S ^AOCD5I(472)="move 1 from 4 to 2"
 S ^AOCD5I(473)="move 26 from 6 to 2"
 S ^AOCD5I(474)="move 27 from 2 to 6"
 S ^AOCD5I(475)="move 10 from 2 to 4"
 S ^AOCD5I(476)="move 1 from 7 to 6"
 S ^AOCD5I(477)="move 28 from 6 to 2"
 S ^AOCD5I(478)="move 21 from 2 to 4"
 S ^AOCD5I(479)="move 2 from 6 to 7"
 S ^AOCD5I(480)="move 3 from 2 to 1"
 S ^AOCD5I(481)="move 5 from 6 to 5"
 S ^AOCD5I(482)="move 3 from 5 to 2"
 S ^AOCD5I(483)="move 1 from 7 to 4"
 S ^AOCD5I(484)="move 11 from 2 to 4"
 S ^AOCD5I(485)="move 21 from 4 to 9"
 S ^AOCD5I(486)="move 1 from 5 to 8"
 S ^AOCD5I(487)="move 1 from 8 to 6"
 S ^AOCD5I(488)="move 18 from 9 to 7"
 S ^AOCD5I(489)="move 1 from 5 to 7"
 S ^AOCD5I(490)="move 3 from 9 to 8"
 S ^AOCD5I(491)="move 1 from 6 to 7"
 S ^AOCD5I(492)="move 1 from 3 to 5"
 S ^AOCD5I(493)="move 1 from 8 to 3"
 S ^AOCD5I(494)="move 22 from 7 to 5"
 S ^AOCD5I(495)="move 13 from 5 to 1"
 S ^AOCD5I(496)="move 16 from 4 to 5"
 S ^AOCD5I(497)="move 3 from 1 to 4"
 S ^AOCD5I(498)="move 2 from 3 to 9"
 S ^AOCD5I(499)="move 3 from 9 to 7"
 S ^AOCD5I(500)="move 6 from 4 to 6"
 S ^AOCD5I(501)="move 1 from 4 to 2"
 S ^AOCD5I(502)="move 2 from 7 to 3"
}

}
