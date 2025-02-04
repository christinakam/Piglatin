public void setup() 
{
  String[] lines = loadStrings("words.txt");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{

}
public int findFirstVowel(String sWord)

{
  for(int i = 0; i < sWord.length(); i++) {
    String temp = sWord.substring(i,(i+1));
    if (temp.equals("a") || temp.equals("e") || temp.equals("i") || temp.equals("o") || temp.equals("e") || temp.equals("u")) {
      return i;
    }
    
  }
  return -1;
}

public boolean isQFirst(String sWord) {
  if (sWord.substring(0,1).equals("q")) {
    return true;
  }
  else {
    return false;
  }
}

public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0) {
    return sWord + "way";
  }
  else if((findFirstVowel(sWord) == 1) && (isQFirst(sWord) == true)) {
    return sWord.substring(2, sWord.length()) + "quay";
  }
  else if(findFirstVowel(sWord) == 2) {
    return sWord.substring(2, sWord.length()) + sWord.substring(0,2) + "ay";
  }
  else if(findFirstVowel(sWord) == 3) {
    return sWord.substring(3, sWord.length()) + sWord.substring(0,3) + "ay";
  }
  else {
    return sWord.substring(1, sWord.length()) + sWord.substring(0,1) + "ay";
  }
}
