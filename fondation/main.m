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
    NSLog (@"%@-------",c1);
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

    NSNumber * mynumber;
    NSInteger myint;
    mynumber = [NSNumber numberWithInteger:100];
    myint = [mynumber integerValue];
    NSLog(@"myint is %li",(long)myint);

    //mutalable string 

    NSString  *str1 = @"This is string A";
    NSString  *search, *replace;
    NSMutableString  *mstr;
    NSRange   substr;

    mstr = [NSMutableString  stringWithString: str1];
    NSLog (@"%@", mstr);

    //          // Insert characters

    [mstr insertString: @" mutable" atIndex: 7];
    NSLog (@"%@", mstr);

    // Effective concatentation if insert at end

    [mstr insertString: @" and string B" atIndex: [mstr length]];
    NSLog (@"%@", mstr);

    //  Or can use appendString directly

    [mstr appendString: @" and string C"];
    NSLog (@"%@", mstr);

    // Delete substring based on range

    [mstr deleteCharactersInRange: NSMakeRange (16, 13)];
    NSLog (@"%@", mstr);

    // Find range first and then use it for deletion

    substr = [mstr  rangeOfString: @"string B and "];

    if (substr.location != NSNotFound) {
        [mstr deleteCharactersInRange: substr];
        NSLog (@"%@", mstr);
    }

    // Set the mutable string directly

    [mstr setString: @"This is string A"];
    NSLog (@"%@", mstr);
    [mstr replaceCharactersInRange: NSMakeRange(8, 8)
                        withString: @"a mutable string"];
    NSLog (@"%@", mstr);
    // Search and replace

    search = @"This is";
    replace = @"An example of";

    substr = [mstr  rangeOfString: search];

    if (substr.location != NSNotFound) {
        [mstr replaceCharactersInRange: substr
                            withString: replace];
        NSLog (@"%@", mstr);
    }
    search = @"a";
    replace = @"X";
    while (substr.location != NSNotFound) {
        [mstr replaceCharactersInRange: substr
                            withString: replace];
        substr = [mstr rangeOfString: search];
        NSLog (@"%@", mstr);
    }
    [pool drain];
    return 0;
}
