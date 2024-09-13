#include <stdio.h>

int main(){
   printf("Enter width: ");
   int width;
   scanf("%d",&width);

   printf("Enter Length: ");
   int length;
   scanf("%d", &length);

   int area = length * width;
   printf("%d\n", area );

   int perimeter = (length + width) * 2;
   printf("%d\n", perimeter );
}
