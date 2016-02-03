public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{ String nyes = new String();
  for(int i = 0; i<word.length(); i++)
  {
    if(word.charAt(i) == ' ')  
    {
    word = word.substring(0,i) + word.substring(i+1);
    }
  }
  for(int i = 0; i<word.length();i++)
  {
  char x = word.charAt(i);
  if(Character.isLetter(x) == false)
  {
    word = word.substring(0,i) + word.substring(i+1);
  }
  word = word.toLowerCase();
  }
  for (int i=word.length()-1; i > -1; i--) 
  {
    nyes = nyes + word.substring(i,i+1);
  }
  if(word.equals(nyes))
  {
    return true;
  }
  else
  {
  return false;
}
}
   
  

public String reverse(String str)
{
    String sNew = new String();
    
     int nLast = str.length()-1;

    for(int nI=nLast; nI>=0; nI--)

        sNew = sNew + str.charAt(nI);
    return sNew;
}


