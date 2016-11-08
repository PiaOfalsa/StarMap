/*
 LAB TEST1
 OOP
 C15734155
*/



Table table;


Star strs;
int xLines = 10;
int yLines = 10;

//Declare a global ArrayList of Star objects.
ArrayList<Star> Stars = new ArrayList<Star>(); 
void setup()
{
  //Start with a blank sketch. Set the drawing window size to be 800 x 800.
  size(800, 800);
  background(0);
  
  strs = new Star();
  loadData();
  printStars();
}

//Write a method called loadData that loads the data from the file and populates the ArrayList
void loadData()
{
  
  clear();
  table = loadTable("stars.csv", "header");
  println(table.getRowCount() + " total rows in table"); 
  
  
}

/*
Write a method called printStars that prints the contents
of the ArrayList after it has been loaded. You should make 
a toString method on the Star class to help you do this. Call this from setup after you load the data to make sure it gets loaded correctly.
*/
void printStars()
{
   for (TableRow row : table.rows()) 
 {
   Star strs = new Star(row.getInt(2), row.getString(3), row.getFloat(12), row.getFloat(13), row.getFloat(14)
   ,row.getFloat(15), row.getFloat(16));
   
   println(strs);
   
   Stars.add(strs);
 }
}

void draw()
{
 /* 
  Write code to draw the purple gridlines with labels.
  You should leave a 50 pixel border around the outside
  of the drawing window. These gridlines go from -5 parsecs
  to 5 parsecs on the x and y axis.
  */
  background (0);
  stroke(148,0,211);

  float distance_x = (float)height/xLines;
  float distance_y = (float)width/yLines;

  for(int i = 0; i < xLines; i++)
  {
    line(0, i*distance_x, width, i*distance_x);

  }

  for(int i = 0; i < yLines; i++)
  {
    line (i*distance_y,0,i*distance_y, height);
  }
}