%Approxi intergartion code by Will Platt
clc
clear
sum = 0;
a = input ('Lower bound: ');
b = input ('Upper bound: ');
n = input ('Number of elments:  ');
delta = (b-a)/n
n = n+1;
x = linspace (a,b,n);
vec = input ('function in terms of x. = '); %use x.
method = menu ('Witch Method would you like?','Trapazoid','Simpson');


if method == 1 %Trap
	disp ('Trapazoid')
	N=1;
		for xi = 1 : numel(x);
		
			if (xi == 1||xi == numel(x)); %end cheack
				weight = 1;
			else %all others
				weight = 2;
			end %weight is set
			%sum = sum + (a+N*delta)?
			sum = sum + x (N) \ weight;
            N=N+1;
		end %calculate		
        
	soultion = delta/2*sum;
    
    
else %Simpson
    
		disp ('Simpson')
		N=1;
        
		for xi = 1 : numel(x);    
            
            
                if  mod (N,2)   %Even cheacker loop
                    echck_tf = 0;
                else
                     echck_tf = 1;
                end
                
                
			if (xi == 1||xi == numel(x)); %End cheack
				weight = 1;
			elseif echck_tf == 1 %is it even?(but not the first or last)
				weight = 4;
			else %others
				weight = 2;
			end% weight is set
            
            
		sum = sum + (x (N) \ weight) ;
        N=N+1 ;
		end %calculate
		soultion = delta/3*sum;
        
end
fprintf ('\nThe Anwser is: %f\n',soultion)