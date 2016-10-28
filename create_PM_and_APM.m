%create_PM_and_APM

global x,y,a,fs,fsp,p;
%------------------------------------------------------------
case fs=10; %square frame
%---------------------
case fsp=0; 
	x1=min(x,y);
	p=x1*x1;
	PM=zeros(p,2);
	If x>y
		for yi=1:x1
			for pi=(yi-1)*x1+1:yi*x1
				PM(pi,1)=pi-(yi-1)*x1-.5+floor((x-y)/2);
				PM(pi,2)=yi-.5;
			end
		end
	else
		for yi=1:x1
			for pi=(yi-1)*x1+1:yi*x1
				PM(pi,1)=pi-(yi-1)*x1-.5;
				PM(pi,2)=yi-.5+floor((y-x)/2);
			end
		end
	if a==0
		a=4*x1;
	end 
	APM=zeros(a,2);
	if x>y
		for ai=1:x1
			APM(ai,1)=ai-.5+floor((x-y)/2); 
			APM(ai,2)=-.5;
		end
		for ai=x1+1:2*xi
			APM(ai,1)=x1+.5+floor((x-y)/2);
			APM(ai,2)=ai-x1-.5;
		end
		for ai=2*x1+1:3*x1
			APM(ai,1)=3*x1-ai+.5+floor((x-y)/2);
			APM(ai,2)=x1+.5;
		end
		for ai=3*xi+1:4*x1
			APM(ai,1)=-.5+floor((x-y)/2);
			APM(ai,2)=4*xi-ai+.5;
		end
	else
		for ai=1:x1
			APM(ai,1)=ai-.5; 
			APM(ai,2)=-.5+floor((x-y)/2);
		end
		for ai=x1+1:2*x1
			APM(ai,1)=x1+.5;
			APM(ai,2)=ai-x1-.5+floor((x-y)/2);
		end
		for ai=2*x1+1:3*x1
			APM(ai,1)=3*x1-ai+.5;
			APM(ai,2)=x1+.5+floor((x-y)/2);
		end
		for ai=3*x1+1:4*x1
			APM(ai,1)=-.5;
			APM(ai,2)=4*x1-ai+.5+floor((x-y)/2);
		end
	end
%----------------------
case fsp=1; %will modify later

	x1=min(x,y)/2;
	p=x1*x1;
	PM=zeros(p,2);
	If x>y
	for yi=1:x1
		for pi=(yi-1)*x1+1:yi*x1
			PM(pi,1)=pi-(yi-1)*x1-.5+floor((x-y)/2)-fsp;
			PM(pi,2)=yi-.5;
		end
	end
	else
	for yi=1:x1
		for pi=(yi-1)*x1+1:yi*x1
			PM(pi,1)=pi-(yi-1)*x1-.5-2-fsp;
			PM(pi,2)=yi-.5+floor((y-x)/2);
		end
	end
%---------------------
else 
	fprintf('Invalid fsp,fs value \n');
    break;

end %end case fsp for fs=10

%---------------------------------------------------------------
case fs=20; %rectangular frame
%------------------
case fsp=0;
	p=x*y;
	PM=zeros(p,2);
	for yi=1:x1
		for pi=(yi-1)*x1+1:yi*x1
			PM(pi,1)=pi-(yi-1)*x1-.5;
			PM(pi,2)=yi-.5;
		end
	end
	a=2*(x+y);
	APM=zeros(a,2);

	for ai=1:x
		APM(ai,1)=ai-.5; 
		APM(ai,2)=-.5;
	end
	for ai=x+1:x+y
		APM(ai,1)=x+.5;
		APM(ai,2)=ai-x-.5;
	end
	for ai=x+y+1:2*x+y
		APM(ai,1)=2*x+y-ai+.5;
		APM(ai,2)=y+.5;
	end
	for ai=2*x+y+1:2*x+2*y
		APM(ai,1)=-.5;
		APM(ai,2)=2*x+2*y-ai+.5;
	end
	





%-----------------
else
	fprintf('Invalid fsp,fs value \n');
    break;

end %end case fsp for fs=20

%-----------------------------------------------------------------
case fs=30;  %circular
%------------------
case fsp=0;

	r=min(floor(x/2),floor(y/2));

	pi=x*y/4;
	PMI=zeros(pi,2);


	i=0;
	for yi=1:r
		for xi=1:r
			if (xi-.5)^2+(yi-.5)^2<=(r)^2
				i=i+1;
				PMI(i,1)=xi-.5;
				PMI(i,2)=yi-.5;
			end
		end
	end
	p=4*i;
	PM=zeros(p,2);

	for i=1:p/4
		PM(i,1)=PMI(i,1)+floor(x/2);
		PM(i,2)=PMI(i,2)+floor(y/2);
	end
	for i=p/4+1:p/2
		PM(i,1)=-PMI(i-p/4,1)+floor(x/2);
		PM(i,2)=PMI(i-p/4,2)+floor(y/2);
	end
	for i=p/2+1:3*p/4
		PM(i,1)=-PMI(i-p/2,1)+floor(x/2);
		PM(i,2)=-PMI(i-p/2,2)+floor(y/2);
	end
	for i=3*p/4+1:p
		PM(i,1)=PMI(i-3*p/4,1)+floor(x/2);
		PM(i,2)=-PMI(i-3*p/4,2)+floor(y/2);
	end
	clear PMI;
	for ni=1:n
		APM(ni,1)=(r+.5)*cos((ni-1)*2*pi/a); 
		APM(ni,2)=(r+.5)*sin((ni-1)*2*pi/a);
	end

%---------------
else
	fprintf('Invalid fsp,fs value \n');
    break;

end %end case fsp for fs=30



%-----------------------------------------------------------------
else
	fprintf('Invalid fs value \n');
    break;

end %case end fs
