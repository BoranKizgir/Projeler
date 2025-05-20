#include <stdio.h>

/* Bir teleferik hattýnýn iki kulesi arasýndaki uzaklýk 1000 metredir.
   Hattýn tam ortasýnda bir orta kule vardýr.
   Baþlangýç kuleye 1. ortadakine 2. sondakine 3. kule deniyor
   Vagonun hat üzerinde, baþlangýca göre bulunduðu konum klavyeden giriliyor.
   
   Vagonun hýzý aþaðýdaki formül ile veriliyor.
   
   Vagonun hangi kuleye daha yakýn olduðunu ve o anki hýzýný bulan bir c programý yazýnýz
   
   hýz = 2.425 + 0.00175 * uzaklýk * uzaklýk
   */
    
int main()

{
int konum,uzaklik;
float hiz;	
	
printf("konum giriniz  = ");	
scanf("%d",&konum);	

if(konum<=250)
uzaklik=konum;	
else if(konum<=500)
uzaklik = 500-konum;	
else if(konum<=750)
uzaklik = uzaklik-500;	
else
uzaklik = 1000-konum;	

printf("vagonun en yakin kuleye uzakligi = %d m\n",uzaklik);

hiz = 2.425 + 0.00175 * uzaklik * uzaklik;

if(konum<=250)
printf("vagon birinci kuleye daha yakin\n");	
else if(konum<=750)
printf("vagon ikinci kuleye daha yakin\n");	
else
printf("vagon ucuncu kuleye daha yakin\n");	

printf("vagonun hizi = %.2f m/s",hiz);


return 0;	
}
