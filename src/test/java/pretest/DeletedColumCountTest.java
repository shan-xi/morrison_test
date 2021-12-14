package pretest;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class DeletedColumCountTest {
    @Test
    public void testCase() {
        Assertions.assertAll(
                ()->assertEquals(DeletedColumCount.deletedCount(new String[]{"cba","daf","ghi"}), 1),
                ()->assertEquals(DeletedColumCount.deletedCount(new String[]{"a","b"}), 0),
                ()->assertEquals(DeletedColumCount.deletedCount(new String[]{"zyx","wvu","tsr"}), 3),
                ()->assertEquals(DeletedColumCount.deletedCount(new String[]{"abc", "bce", "cae"}), 1),
                ()->assertEquals(DeletedColumCount.deletedCount(new String[]{"a"}), 0)
        );
    }
}
