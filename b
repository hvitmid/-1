#include<stdio.h>
#include<locale.h>
#include<math.h>
double Adel(double, double);
double Del(double, double);
int main()
{
setlocale(LC_ALL, "RUS");
double a,b,a1=1.89,b1=4.12,v=0.66385,c=0.00042,d,v1=0,n=24.6;
printf("Задание 1.");
printf("Какое выражение точнее: 1) 17/9=1.89 или 2) sqrt(17)=4.12\n");
a = 17. / 9.;
b = sqrt(17);
printf("Значения выражений с большим количеством десятичных знаков:\n");
printf("1) 17/9 = %lf\n", a);
printf("1) sqrt(17) = %lf\n", b);
printf("Предельные абсолютные погрешности, округляя их с избытком:\n");
printf("1) %lf\n", Adel(a,a1));
printf("2) %lf\n", Adel(b, b1));
printf("Предельные абсолютные погрешности составляют в %%:\n");
printf("1) %lf\n", Del(a, a1));
printf("2) %lf\n", Del(b, b1));
printf("Значит, более точное выражение: ");
if (Del(a, a1) < Del(b, b1)) printf("17/9=1.89\n");
else printf("sqrt(17)=4.12\n");
printf("Задание 2.");
printf("\nОкруглить сомнительные цифры числа 0.66385+-0.00042, оставив верные знаки. Определить абсолютную погрешность результата.\n");
printf("Количество верных знаков после запятой ");
for (d = 1000000; (v/v/d) < c; d = d/10) {
v1 +=1 ;
}
printf("%.0lf\n", v1);
printf("Результат округления числа %.3lf", v);
printf("\nЗадание 3.");
printf("Найти предельные абсолютную и относительную погрешности приближенного числа 24.6, все цифры которого по умолчанию верные.\n");
printf("Предельная абсолютная погрешность 0,05\n");
printf("Предельная относительная погрешность %lf\n", Del(0.05,n));
}
double Adel(double x, double delx)
{
double A = fabs(x-delx);
return A;
}
double Del(double x, double delx)
{
double del = Adel(x, delx) / fabs(delx) * 100;
return del;
}
