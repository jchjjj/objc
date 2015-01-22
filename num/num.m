#import<Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc,const char* argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    NSLog(@"Hello apple");
NSLog(@"Hello objc");
Fraction * f;
    f = [Fraction alloc];
    [f init];
    [f setNumerator:1];
    [f setDenominator:2];
    [f print];
[pool drain];
return 0;
}
