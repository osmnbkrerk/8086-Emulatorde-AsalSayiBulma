;Sayi asalsa AL'ye degilse DL'ye atan prog
MOV DH, 04h ; Sayi asal olsun
MOV CL, 01h ; Sayac (2 -> (sayi-1))
MOV BL, 01h ; kontrol degiskeni
Arttir: INC CL
MOV CH, DH
Devam: CMP CL, CH
JC islem
JZ Esit
JMP Sonraki
islem: SUB CH, CL 
JMP Devam
Esit: MOV BL, 00h
JMP Bitir
Sonraki: CMP CL, DH
JC Arttir
Bitir: CMP CH,DH
JNZ AsalD
MOV AL,DH
JMP Cik
AsalD: MOV DL,DH 

Cik: