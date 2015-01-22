/*************************************************************************
	> File Name: Fraction.h
	> Author: ma6174
	> Mail: ma6174@163.com 
	> Created Time: 2014年05月24日 星期六 14时37分47秒
 ************************************************************************/

#include<Foundation/Foundation.h>
@interface Fraction:NSObject
{
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator:(int)i;
-(void) setDenominator:(int)i;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end
