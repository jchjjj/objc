#import "Fraction.h"

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}
@synthesize numerator,denominator;
/*
-(void) setNumerator : (int) n
{
numerator = n;
}
-(void) setDenominator : (int) n
{
denominator = n;
}

-(int) numerator
{
return numerator;
}
-(int) denominator
{
return denominator;
}
*/
-(double) convertToNum
{
    if (denominator != 0)
        return (double)numerator/denominator;
    else 
        return NAN;
}
-(void) setNumerator:(int) i andDenominator:(int)j{
	numerator = i;
	denominator = j;
}
-(Fraction *) mul:(Fraction*) f{
	Fraction * m = [[Fraction alloc] init ];
	m.numerator = numerator * f.numerator;
	m.denominator = denominator* f.denominator;
	[m reduce];
}

-(void) reduce{
	int i,j;
	i = numerator;
	j = denominator;
	int tmp;
	while(j !=0){
		tmp = i%j;
		i = j;
		j = tmp;
	}
	numerator /= i;
	denominator /=i;
}
@end
