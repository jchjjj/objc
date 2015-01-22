#import "man.h"
@implementation man
{
int age;
}
-(void) setAge:(int) a
{
    age = a;
}

-(void) print
{
	NSLog(@"%i\n",age);
}
@end
