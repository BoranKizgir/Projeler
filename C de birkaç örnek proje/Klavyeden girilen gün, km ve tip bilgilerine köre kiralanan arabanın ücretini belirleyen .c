#include <stdio.h>

int main()
/*ÖRNEK: Klavyeden girilen gün, km ve tip bilgilerine göre kiralanan arabanýn ücretini belirleyen c programýný yazýnýz. 
Program çalýþtýðýnda aþaðýdaki örnek çalýþmaya uygun olmalýdýr. 
(Arazi arabalarý gün baþýna 20$ ve km baþýna 18$, binek arabalarý gün baþýna 32$ ve km baþýna 22$, station arabalarý gün baþýna 43$ ve km baþýna 28$, spor arabalarý gün baþýna 51$ ve km baþýna 36$dýr) */
/*
ÖRNEK ÇALIÞMA:
Arabanýzýn tipi aþaðýdakilerden hangisidir
(A veya a) Arazi
(B veya b) Binek
(S veya s) Station
(P veya p) Spor
---------------------
Araba tipi= A
Arabayý kaç gün kullandýnýz=10
Araba ile kaç km yol yaptýnýz=10
---------------------
Ödemeniz gereken tutar = 380 $ dýr
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
        
default: printf("yanlýs deger girdiniz \n");        
}
system("pause");	
return 0;	
}
