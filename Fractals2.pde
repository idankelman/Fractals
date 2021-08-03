
int length_ver=150;
float angle=0.2;
float grow=150.0;
float value=1.0;
float Width = 0;

void setup()
{
  size(1000, 1000);
  Width = width;
}

void draw()
{
background(51);
  
  SorpynskyTringle();
  //FractalTree();
  
   //angle+=0.0001;
   grow+=0.01;
}

public void FractalTree()
{
   translate(width/2,height);
  branch(length_ver,angle);
}

public void SorpynskyTringle()
{
  ellipse(Width/2, height/2, grow,grow);
  Circ(Width/2, height/2, grow);
  
  
}
public void Circ(int x, int y, float rad)
{
  if (rad>value)
  {
    noFill();
    stroke(255);

    ellipse(x-grow, y, rad*angle,rad*angle);
    ellipse(x+grow, y, rad*angle,rad*angle);


    Circ(int(x-rad/2), y, rad*angle);

    Circ(int(x+rad/2), y, rad*angle);

    Circ(x, int(y+rad/2), rad*angle);


    //Circ(x/2, y, rad*0.8);
  }
}




//branch is a line that has 2 smaller lines attached
//function-->branch(me):branch(smaller);
public void branch(int l, float angle)
{
  if (l>1)
  {
    stroke(255);
    line(0, 0, 0, -l);
    translate(0, -l);

    pushMatrix();

    rotate(PI/angle);
    branch(int(l*0.75), angle);

    popMatrix();

    pushMatrix();

    rotate(-(PI/angle));
    branch(int(l*0.75), angle);

    popMatrix();
    //push();

    //rotate((PI/angle));
    //branch(int(l*0.57),angle);

    //pop();

    //branch((y-l)-2,x+2,y-2);
  }
}


void mousePressed()
{
  angle+=0.01;
  value+=0.03;
  //length_ver-=2;
}


void keyPressed()
{
 if(keyCode==' ')
  {
  PImage saver=get();
  save(saver);
   saveFrame("tranpiskyTriangle_###.png");
  }
  
}
