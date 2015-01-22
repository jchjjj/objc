#import "complex.h"
int main (int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Complex *c1 = [[Complex alloc] init];
    Complex *c2 = [[Complex alloc] init];
    Complex *compresult;
    id result;
    [c1 setReal: 18.0 andImaginary: 2.5];
    [c2 setReal: -5.0 andImaginary: 3.2];
    [c1 print]; NSLog (@"        +"); [c2 print];
    NSLog (@"---------");
    compresult = [c1 add: c2];
    [compresult print];
    result = compresult;
    [result  print];
    NSLog(@"%v",[result class]);
    printf("%i\n",[result class]== [Complex class]);
    printf("class equals %i\n",[result class]== [Complex class]);
    printf("%i\n",[result isMemberOfClass:[Complex class] ]);
    NSLog(@"class name is %@\n",[Complex class] );
    printf("%i\n",[Complex instancesRespondToSelector:@selector(init)]);
    printf("%i\n",[result respondsToSelector:@selector(init)]);
    SEL seli;
    seli = @selector(init);
    printf("is cmplpex respond to alloc:%i\n",[Complex instancesRespondToSelector :seli]);
    @try{
        [result nosuchmethod];
    }
    @catch(NSException * e){
        NSLog(@"%@,%@",[e name],[e reason]);
    }
    NSLog (@"\n");
    [c1 release];
    [c2 release];
    [compresult release];
    [pool drain];
    return 0;
}
