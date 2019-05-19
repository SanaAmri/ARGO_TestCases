// Sana AMRI - 01/04/2019
// Structured coarse Mesh: Half cylinder
//=>  Unrefined_Mesh_233_elements.msh 

///////////////////////////////////////////////////////////////////////
// REMINDER: 
// Line(id number) = {start point, end point}

// Circle(id number) = {start point, center of the circle, end point}
// trigonometric direction
//http://www.manpagez.com/info/gmsh/gmsh-2.4.0/gmsh_33.php#SEC33
///////////////////////////////////////////////////////////////////////


cl = 5e-1; // caracteristic length


Point(1) = {0,0,0,cl};
Point(2) = {3,0,0,cl};
Point(3) = {3.85,0,0,cl};
Point(4) = {4.70,0,0,cl};
Point(5) = {7.70,0,0,cl};
Point(6) = {3.85,-3,0,cl};
Point(7) = {3, -0.2, 0, cl};
Point(9) = {1.9, 0, 0, cl};
Point(10) = {5.8, 0, 0, cl};
Point(11) = {3.85, -0.8, 0, cl};
Point(12) = {3.8, 1.3, 0, cl};

Line(1) = {1,9};
Circle(2) = {4,3,2};
Line(3) = {10,5};
Circle(4) = {5,6,1};
Line(5) = {9,2};
Line(6) = {4,10};
Circle(8) = {10,11,9};


Line Loop(1) = {1,-8,3,4};
Line Loop(2) = {5,-2,6,8};
Plane Surface(1) = {1};
Plane Surface(2) = {2};

Transfinite Line{8,4} = 15;//bl
Transfinite Line{-1,3} = 13;
Transfinite Surface {1};
Recombine Surface{1};

Transfinite Line{2,8} = 15;//bl
Transfinite Line{-5,6} = 7 Using Progression 1.3;
Transfinite Surface {2};
Recombine Surface{2};

