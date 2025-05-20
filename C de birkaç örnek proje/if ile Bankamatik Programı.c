#include <stdio.h>

int main()

{
float kullaniciBakiyesi=1250,kullaniciMiktari=0,gunlukLimit=500;	
int islem;

printf("\t Merhabalar hoþgeldiniz \n");

printf("\t para yatirmak icin 1, Para cekmek icin 2, Hesap bakiyesi sorgulamak icin 3'e basiniz:");	
scanf("%d",&islem);	
	
if(islem==1)	
{
printf("\t yatirmak istediginiz tutari giriniz = ");
scanf("%f",&kullaniciMiktari);	
 
  if(kullaniciMiktari==0)
    {
     printf("\t Lutfen belirtilen surede para girisi yapýnýz = ");
   	 sleep(3);
   	 scanf("%f",&kullaniciMiktari);
    }

kullaniciBakiyesi+=kullaniciMiktari;
printf("\t isleminiz basariyla gerceklesmistir. Tesekkur ederiz.\n");
printf("\t yeni bakiyeniz = %.2f \n",kullaniciBakiyesi);

}	

else if(islem==2)
{
printf("\t cekmek istediginiz miktari giriniz = ");
scanf("%f",&kullaniciMiktari);	

  if(kullaniciMiktari>kullaniciBakiyesi)
     {
       printf("Hesabinizda o kadar bulunmamaktadýr. Islem gerceklesemiyor.\n");	
	 }
   
   else if(kullaniciMiktari>gunlukLimit)
     {
     	printf("Gunluk para cekme limitiniz astiniz. Islem Gerceklestirilemiyor.\n");
     }

    else
     {
       	kullaniciBakiyesi-=kullaniciMiktari;
     	printf("Isleminiz basariyla gerceklesmistir. Tesekkur ederiz.\n");
     	printf("\t Yeni bakiyeniz = %.2f \n",kullaniciBakiyesi);
	 }

}

else if(islem==3)
{
printf(" \t bakiyeniz = %.2f",kullaniciBakiyesi);
}	

else
{
printf("yanlis bir islem girdiniz.\n");
}
return 0;	
}
