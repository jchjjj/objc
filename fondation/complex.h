/*************************************************************************
	> File Name: complex.h
	> Author: ma6174
	> Mail: ma6174@163.com 
	> Created Time: 2014年05月25日 星期日 16时41分37秒
 ************************************************************************/


#import <Foundation/Foundation.h>

@interface Complex: NSObject
{
       double real;
       double imaginary;

}

@property double real, imaginary;
-(void)   print;
-(void)   setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;
-(NSString *) description;
@end
