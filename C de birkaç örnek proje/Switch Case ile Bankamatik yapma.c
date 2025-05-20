#include <stdio.h>

int main()

{
int islem,tutar,bakiye = 1000;

printf("Bakiyeniz = %d",bakiye);
printf("\n\n**** ISLEMLER ****\n");
printf("1. Para cekme\n");
printf("2. Para yatirma\n");
printf("3. Bakiye sorgulama\n");	
printf("4. Kart iade\n");

printf("Isleminizi seciniz = ");
scanf("%d",&islem);

switch(islem)	
{
case 1: printf("Bakiyeniz = %d\n",bakiye);
        printf("Cekmek istediginiz tutari giriniz =  ");	
        scanf("%d",&tutar);
        if(tutar>1000)
        {
		printf("Yetersiz bakiye girdiniz !!");
		scanf("%d",&tutar);
		}
        bakiye-=tutar;
        printf("Yeni bakiyeniz = %d",bakiye); break;

case 2: printf("Bakiyeniz = %d\n",bakiye);
        printf("Yatirmak istediginiz tutari giriniz = \n"); 
        scanf("%d",&tutar);
        bakiye+=tutar;
        printf("yeni bakiyeniz = %d",bakiye); break;

case 3: printf("Bakiyeniz = %d\n",bakiye); break;
case 4: printf("Kartinizi almayi unutmayinn!!"); break;


} 

return 0;
}
