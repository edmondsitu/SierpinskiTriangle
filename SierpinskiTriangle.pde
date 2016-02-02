int length;
int xPos;
int shapeColor;
public void setup()
{
	size(620,620);
	length = 600;
	xPos = 10;
}
public void draw()
{
	background(0);
	sierpinski(xPos,610,length);
}
public void mouseDragged()//optional
{
	//length = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
	if( len <= 20 ){
		fill(shapeColor);
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else{
		shapeColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}