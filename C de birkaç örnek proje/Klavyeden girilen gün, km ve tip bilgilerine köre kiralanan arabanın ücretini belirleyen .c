#include <stdio.h>

int main()
/*�RNEK: Klavyeden girilen g�n, km ve tip bilgilerine g�re kiralanan araban�n �cretini belirleyen c program�n� yaz�n�z. 
Program �al��t���nda a�a��daki �rnek �al��maya uygun olmal�d�r. 
(Arazi arabalar� g�n ba��na 20$ ve km ba��na 18$, binek arabalar� g�n ba��na 32$ ve km ba��na 22$, station arabalar� g�n ba��na 43$ ve km ba��na 28$, spor arabalar� g�n ba��na 51$ ve km ba��na 36$d�r) */
/*
�RNEK �ALI�MA:
Araban�z�n tipi a�a��dakilerden hangisidir
(A veya a) Arazi
(B veya b) Binek
(S veya s) Station
(P veya p) Spor
---------------------
Araba tipi= A
Arabay� ka� g�n kulland�n�z=10
Araba ile ka� km yol yapt�n�z=10
---------------------
�demeniz gereken tutar = 380 $ d�r
*/
{
int gunsayisi,km,ucret;	
char tip;
	
printf("aracin tipini giriniz = ");	
scanf("%c",&tip);	
	
printf("gun sayisi giriniz = ");	
scanf("%d",&gunsayisi);	
	
printf("km giriniz = ");	
scanf("%d",&km);	

switch(tip)
{
case'a':
case'A':ucret=20*gunsayisi+km*18; 
        printf("ucret = %d\n",ucret); break;
case'b':
case'B':ucret=32*gunsayisi+km*22;
        printf("ucret = %d\n",ucret); break;

case's':
case'S':ucret=43*gunsayisi+km*28;
        printf("ucret = %d",ucret); break;

case'p':
case'P':ucret=51*gunsayisi+km*36;
        printf("ucret = %d",ucret); break;
        
default: printf("yanl�s deger girdiniz \n");        
}
system("pause");	
return 0;	
}
