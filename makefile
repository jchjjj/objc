helloworld:Hello.m
	gcc -o helloworld Hello.m -I /GNUstep/System/Library/Headers -L /GNUstep/System/Library/Libraries -lobjc -lgnustep-base -fconstant-string-class=NSConstantString
