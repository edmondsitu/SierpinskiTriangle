int length;
int shapeColor;
public void setup()
{
	size(500,500);
	length = 400;
}
public void draw()
{
	background(0);
	sierpinski(50,450,length);
}
public void mouseDragged()//optional
{
	length = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
	if( len <= 20 ){
		shapeColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		fill(shapeColor);
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}