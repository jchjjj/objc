#import <Foundation/Foundation.h>
@interface man:NSObject
-(void) setAge:(int) a;
  -(void)print:(NSString*) s;
@end
@implementation man
-(void) setAge:(int)a{
   int  age =a;
   NSLog(@"a is %d\n",a);
}
-(void)print:(NSString*) s;
{
	//NSLog(@"age is n%s\n",s);
	NSLog(s);
}
@end

int main(){
	 NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	 man * m = [[man alloc] init];
   //  [man setAge:34];
     [m print:@"hi objc"];
     [m setAge:23];
	 [pool drain];
     
	 return 0;
}

