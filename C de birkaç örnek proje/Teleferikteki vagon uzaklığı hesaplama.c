#include <stdio.h>

/* Bir teleferik hatt�n�n iki kulesi aras�ndaki uzakl�k 1000 metredir.
   Hatt�n tam ortas�nda bir orta kule vard�r.
   Ba�lang�� kuleye 1. ortadakine 2. sondakine 3. kule deniyor
   Vagonun hat �zerinde, ba�lang�ca g�re bulundu�u konum klavyeden giriliyor.
   
   Vagonun h�z� a�a��daki form�l ile veriliyor.
   
   Vagonun hangi kuleye daha yak�n oldu�unu ve o anki h�z�n� bulan bir c program� yaz�n�z
   
   h�z = 2.425 + 0.00175 * uzakl�k * uzakl�k
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
