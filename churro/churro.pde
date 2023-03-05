int r1 = 30;       //donut internal radius
int r2 = 15;        //donut external radius
int p = 5;          //CANVIAR

float A = 0.001;    //Rotation along x axis
float B = 0.001;    //Rotation along z axis
float th = 0.001;   //Rotation along y axis

//K1 and K2 = tweaks FOV and flattens donut

float K1 = 0.001;
float K2 = 0.001;

float wx = 0.001; //Angular velocity X - axis
float wy = 0.001; //Angular velocity Y - axis

float a = asin(sin(2*r2));

void setup(){  
  size(500, 500, P3D);  // Specify P3D renderer
  
  noSmooth();
}

void draw(){
  stroke(255);
  background(0);
  int m = millis(); //Current time
  float x,y,z, L;  //Declare coords & Light
  float R1 = 0, R2 = 130;
  for(float ph = 0; ph<PI*2; ph = ph+PI/200){
    for (float tmp = 0; tmp < p; tmp = tmp+0.1) {     
      
         R1 = r1 + r2/PI*asin(sin(2*PI*tmp));
         float th = tmp/p*2*PI;
         x = 250 + (R2 + R1*cos(th))*(cos(B*m)*cos(ph)+sin(A*m)*sin(B*m)*sin(ph))-R1*cos(A*m)*sin(B*m)*sin(th); //R2*2 needed for elongation
         y = 250 +(R2 + R1*cos(th))*(cos(ph)*sin(B*m)-cos(B*m)*sin(A*m)*sin(ph))+R1*cos(A*m)*cos(B*m)*sin(th);
         z = -(cos(A*m)*(R2+R1*cos(th))*sin(ph)+R1*sin(A*m)*sin(th));
         
         th=(tmp%1-0.5)*PI/4+int(tmp)*2*PI/p ;
         //println(tmp,int(tmp));       
         
         L = cos(ph)*cos(th)*sin(B*m)-cos(A*m)*cos(th)*sin(ph)-sin(A*m)*sin(th)+cos(B*m)*(cos(A*m)*sin(th)-cos(th)*sin(A*m)*sin(ph));
        //L = cos(B*m)*(cos(A*m)*cos(a - th) - sin(A*m)*sin(ph)*sin(a - th)) - sin(A*m)*cos(a - th) - cos(A*m)*sin(ph)*sin(a - th) + sin(B*m)*cos(ph)*sin(a - th);         
         //if(L>0.5){
         stroke(L*255);
         point(x, y, z);
         //}
    }
  }
}
