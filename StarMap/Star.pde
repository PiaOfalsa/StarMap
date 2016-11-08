/*


Create a class called Star to encapsulate the columns of interest
from a single row from the file. The columns of interest are given in the 
table above. Feel free to add additional fields if you need them later.

*/

class Star
{
  int Habitability;  //hab? Habitability flag 1 = star has a high probability of hosting a human habitable planet
  String DisplayName; //The name of the star
  Float Distance; //Distance from the sun in parsecs
  Float Xg; //xyz galactic cartesian co-ordinates in parsecs (used to draw the star map)
  Float Yg; //xyz galactic cartesian co-ordinates in parsecs (used to draw the star map)
  Float Zg; //xyz galactic cartesian co-ordinates in parsecs (used to draw the star map)
  Float AbsMag;//Star's size
  


/*

Write a constructor that takes a TableRow as a parameter and assigns the fields in
the class from the appropriate columns in the TableRow.

*/
 Star(String line)
  {
    String[] fields = line.split(",");
    Habitability = Integer.parseInt(fields[2]);                
    DisplayName = fields[3];                       
    Distance = Float.parseFloat(fields[12]);           
    Xg = Float.parseFloat(fields[13]);              
    Yg = Float.parseFloat(fields[14]);            
    Zg = Float.parseFloat(fields[15]);               
    AbsMag = Float.parseFloat(fields[16]);            
    
  }//end of String
  
  Star()
  {
    DisplayName = "";
  }
  
  //Constructor, put each column to a particular feild 
  Star(int Habitability, String DisplayName, Float Distance, Float Xg,
  Float Yg, Float Zg, Float AbsMag)
  {
    this.Habitability = Habitability;
    this.DisplayName = DisplayName;
    this.Distance = Distance;
    this.Xg = Xg;
    this.Yg = Yg;
    this.Zg = Zg;
    this.AbsMag = AbsMag;
  }
    
  // Converts the object to a string
  // so it can be printed
  
  
  /*
  Write a method called printStars that prints
  the contents of the ArrayList after it has been loaded.
  You should make a toString method on the Star class to help you do this
  
  */
  String toString()
  {
    return Habitability + "\t" + DisplayName + "\t" + Distance 
    + "\t" + Xg + Yg + Zg + "\t" + AbsMag;
  }
  
}