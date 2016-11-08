/*

  LAB TEST 1
  C15734155
  GROUP D
  OOP

*/

Table table;

void setup()
{
  size (800,800);
  background(0);
  //Declare a global ArrayList of Star objects.
  ArrayList<Star> data =new ArrayList<Star>();
 
}

 //Write a method called loadData that loads the data from the file and populates the ArrayList.
void loadData()
{
  String[] lines = loadStrings("stars.csv");
    for(String line: lines){
     Star star = new Star(star);
     data.add(star);
   }
}

 



//Write a method called printStars that prints the contents of the ArrayList after it has been loaded.
void printStars()
{

  // Iterating over an ArrayList
 for (int i = 0; i < data.size(); i ++)
 {
   Star e = data.get(i);
   println(e);
 }
 for (Star e : data)
 {
   println(e);
 }
 //reading files

 table = loadTable("star.txt", "header, csv");

 println(table.getRowCount() + " total rows in table"); 
 
 //wipes the array
 data.clear();

 for (TableRow row : table.rows()) {


   Star exp = new Star(row.getInt(0), row.getString(1), row.getFloat(2), row.getFloat(3), row.getFloat(4));
   println(exp);

   //store in array 
   data.add(exp);
   //to check 
   // println(data
  
  
}




void draw()
{
  background(0);

}