try
fclose(instrfind);
end;

s1 = serial('COM5', ... % Change as needed!
'BaudRate', 115200, ...
'Parity', 'none', ...
'DataBits', 8, ...
'StopBits', 1, ...
'FlowControl', 'none');
fopen(s1);
time=1:100;
y=zeros(1,100);

i=1;

try
fprintf('Press CTRL+C to finish\n');

while (i<=100)
	val=fscanf(s1);
    result = sscanf(val, '%f');
	
    % record red ind volt
	k = strfind(val, 'red');
	if(k>0)
        fprintf('red ind volt  = %f\n', result);
        redvolt = result;
    end
  
    % record blue ind volt
	k = strfind(val, 'blue');
    if(k>0)  
        fprintf('blue ind volt = %f\n',result);
        bluevolt = result;
    end
    
    
    % set y to show red inductor voltage
    y(i)=redvolt;
    
    % reset i and y if y is filled up
    %if (i>1000)
    %    y = zeros(1,1000);
    %    i=2;
    %end
    
    i=i+1;
    
    pause(0.01);
end

    plot(x,y);
  
end
fclose(s1);
