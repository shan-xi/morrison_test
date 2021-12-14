package pretest;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class PalindromeTest {
    @Test
    public void testCase() {
        Assertions.assertAll(
                ()->assertEquals(Palindrome.isPalindrome("A man, a plan, a canal: Panama"), true),
                ()->assertEquals(Palindrome.isPalindrome("race a car"), false),
                ()->assertEquals(Palindrome.isPalindrome("a"), true),
                ()->assertEquals(Palindrome.isPalindrome("aa"), true),
                ()->assertEquals(Palindrome.isPalindrome("aaa"), true),
                ()->assertEquals(Palindrome.isPalindrome(" "), false),
                ()->assertEquals(Palindrome.isPalindrome("  "), false),
                ()->assertEquals(Palindrome.isPalindrome("   "), false),
                ()->assertEquals(Palindrome.isPalindrome("   aa"), true),
                ()->assertEquals(Palindrome.isPalindrome("      a"), true)
        );
    }
}
