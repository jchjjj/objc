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
@property int numerator,denominator;
-(void) print;
/*-(void) setNumerator;
-(void) setDenominator;
-(int) numerator;
-(int) denominator;
*/
-(Fraction *) mul:(Fraction *)d;
-(void)reduce;
-(double) convertToNum;
-(void) setNumerator:(int) i andDenominator:(int)j;
@end
