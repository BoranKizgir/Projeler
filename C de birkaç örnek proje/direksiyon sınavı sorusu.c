#include <stdio.h>

int main()

{
float td,md,id;
	
printf("trafik yanlis sayisini giriniz = ");	
scanf("%f",&td);	
	
printf("motor yanlis sayisini giriniz = ");	
scanf("%f",&md);	
	
printf("Ilk yardim yanlis sayisini  giriniz = ");	
scanf("%f",&id);	
	
td=(50*2)-td*2;
md=(40*2.5)-md*2.5;
id=(30*3.333)-id*3.333;


printf("\n\n\ntrafik puaniniz=%.2f\n",td);
printf("motor dersi puaniniz=%.2f\n",md);
printf("ilk yardim dersi puaniniz=%.2f\n\n",id);

if(td<70)
{
printf("uzgunum direksiyon sinavina katilamazsýnýz\n",td);	
}
else if(md<70)
{
printf("uzgunum direksiyon sinavina katilamazsýnýz\n",md);	
}
else if(id<70)
{
printf("uzgunum direksiyon sinavina katilamazsiniz\n",id);	
}
return 0;	
}
