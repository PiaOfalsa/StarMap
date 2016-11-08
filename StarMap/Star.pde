/*

Create a class called Star to encapsulate the columns of interest from a single row from the file. The columns of interest are given in the table above. Feel free to add additional fields if you need them later.

*/
class Star
{
  
  int habitability;
  String name;
  float distance;
  float coords;
  float size;

}

/*
Write a constructor that takes a TableRow as a parameter and assigns the fields in the class from the appropriate columns in the TableRow. You might want to look at this page from the Processing reference if you need to know how a TableRow works.

*/


Star(int habitability,String name,float distance,float coords,float size)
{
  
   // String[] fields = line.split(",");
   
   /*
    habitability = fields[0];
    name = fields[1];
    distance = Float.parseFloat(fields[2]);
    coords = Float.parseFloat(fields[3]);
    size = Float.parseFloat(fields[4]);
    */
    
    
    this.habitability = habitability; // this is used to refer to the fields
    this.name = name; // this is used to refer to the fields
    this.distance = distance; // this is used to refer to the fields
    this.coords = coords; // this is used to refer to the fields
    this.size =size;
}


 // Converts the object to a string
  // so it can be printed
  String toString()
  {
    return habitability + "\c" + name + "\c" + distance 
    + "\c" + coords + "\c" + size;
  }