package pretest;

public class Palindrome {

    static boolean isPalindrome(String str){

        char[] cs = str.toCharArray();
        int leftIdx = 0;
        int rightIdx = cs.length-1;
        boolean isGet = false;
        while(leftIdx <= rightIdx){

            char tempLeft = cs[leftIdx];
            if(!Character.isAlphabetic(tempLeft)){
                leftIdx++;
                continue;
            }
            while(leftIdx <= rightIdx){

                char tempRight = cs[rightIdx];
                if(!Character.isAlphabetic(tempRight)){
                    rightIdx--;
                    continue;
                }

                if(Character.toLowerCase(tempLeft) != Character.toLowerCase(tempRight)) {
                    return false;
                } else {
                    rightIdx--;
                    isGet = true;
                    break;
                }
            }
            leftIdx++;
        }
        return isGet;
    }
}
