
int R1 = 50;       //donut internal radius
int R2 = 100;        //donut external radius

float A = 0.001;    //Rotation along x axis
float B = 0.001;    //Rotation along z axis
float th = 0.001;   //Rotation along y axis

//K1 and K2 = tweaks FOV and flattens donut

float K1 = 0.001;
float K2 = 0.001;

float wx = 0.001; //Angular velocity X - axis
float wy = 0.001; //Angular velocity Y - axis

void setup(){  
  size(500, 500, P3D);  // Specify P3D renderer
  
  //noSmooth*m();
}

void draw(){
  
  background(0);
  int m = millis(); //Current time
  float x,y,z, L;  //Declare coords & Light
  
  for (float ph = 0; ph < 2*PI; ph = ph+PI/20) {
    for (float th = 0; th < 2*PI; th = th+PI/20) {
       x = 250 + (R2 + R1*cos(th))*(cos(B*m)*cos(ph)+sin(A*m)*sin(B*m)*sin(ph))-R1*cos(A*m)*sin(B*m)*sin(th);
       y = 250 +(R2 + R1*cos(th))*(cos(ph)*sin(B*m)-cos(B*m)*sin(A*m)*sin(ph))+R1*cos(A*m)*cos(B*m)*sin(th);
       z = -(cos(A*m)*(R2+R1*cos(th))*sin(ph)+R1*sin(A*m)*sin(th));
       
       L = cos(ph)*cos(th)*sin(B*m)-cos(A*m)*cos(th)*sin(ph)-sin(A*m)*sin(th)+cos(B*m)*(cos(A*m)*sin(th)-cos(th)*sin(A*m)*sin(ph));
       if(L>0.5){
       stroke(L*255);
       point(x, y, z);
       }
    }
  }

}
