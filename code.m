% This script allows the user to input a coordinate in either
% rectangular, cylindrical, or spherical coordinates and
% retrieve the answer in the other coordinate systems
clear

% prompt the user for the coordinate system
disp('Enter the coordinate system of the input coordinate');
coord_sys = input ( ' ( r, c, or s) --> ', 's' ) ;

% if user entered something other than "r" "c" or "s"
% set default as "r"

if isempty(coord_sys); 
  coord sys = 'r'; 
end

if coord_sys == 'r';
  % prompt the user for the coordinate
  disp('Enter the rectangular coordinate in the ');
  crd = input('format [x y z] --> ');
  
  % check input to see if empty and set to 0 if so
  if isempty(crd); 
    crd = [0 0 0]; 
  end
  
  disp('Cylindrical coordinates [rho phi(rad) z]:')
  disp([sqrt(crd(1)^2+crd(2)^2) atan2(crd(2),crd(1)) crd(3)])
  
  
  disp('Spherical coordinates [r phi(rad) theta(rad]:')
  disp([norm(crd) atan2(crd(2),crd(1)) acos(crd(3)/norm(crd) ) ] )

elseif coord_sys == 'c'; % if cylindrical coordinates execute this block

  disp('Enter the cylindrical coordinate in the format');
  crd =input(' [\rho \phi z] --> ');
  
  % check input to see if empty and set to 0 if so
  if isempty(crd);
    crd = [O O O]; 
  end
  
  disp('Rectangular coordinates [x y z]:')
  disp([crd(1)*cos(crd(2)) crd(1)*sin(crd(2)) crd(3)])
  
  disp('Spherical coordinates [r phi(rad) theta(rad]:')
  disp([sqrt(crd(1)^2+crd(3)^2) crd(2) crd(3)*cos(crd(3))])
  
else coord_sys == 's'; % if spherical coordinates execute this block
  
  disp('Enter the spherical coordinate in the');
  crd = input('format [\rho \phi \theta] ---> ');
  
  if isempty(crd); 
    crd = [O 0 O];
  end
  
  disp('Rectangular coordinates [x y z]:')
  disp( [crd( 1)*cos(crd(2) )*sin(crd(3))  crd(1)*sin(crd(2))*sin(crd(3)) crd(1)*cos(crd(3))])
  
  disp('Cylindrical coordinates [r phi(rad) theta(rad]:')
  disp([crd(1)*sin(crd(3)) crd(2) crd(1)*cos(crd(3))])

end