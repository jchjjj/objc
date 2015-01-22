#import<Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc,const char* argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    NSLog(@"Hello apple");
    NSLog(@"Hello objc");
    Fraction * f;
    f = [Fraction alloc];
    [f init];
    /*    [f setNumerator:1];
          [f setDenominator:2];
          [f print];
          */
    f.numerator = 1;
    f.denominator = 2;
    NSLog(@"%d\n",f.numerator);
    [f print];
    Fraction * ff = [Fraction alloc];
    [ff init];
    [ff setNumerator:8 andDenominator:5];
    [ff print];
    NSLog(@" to num is %lf\n",[ff convertToNum]);
    ff = [ff mul : f];
    [ff print];

    Fraction * sum = [[Fraction alloc]init];
    [sum setNumerator:0 andDenominator:1];
    Fraction * a = [[Fraction alloc]init];
    Fraction * sum2;
    int i,n,pow2;
    printf("please input a num :\n");
    scanf("%i",&n);
    pow2 = 2;
    for (i=1;i<=n ;i++){
        [a setNumerator:1 andDenominator:pow2];
        sum2 = [sum mul: a];
        [sum release];
        sum = sum2;
        pow2 *= 2;
    }
    [sum print];
    [pool drain];
    return 0;
}
