package pretest;

public class DeletedColumCount {
    static int deletedCount (String[] strs){
        var n = strs.length;
        var m = strs[0].length();

        int count = 0;
        for(int i=0;i<n;i++){
            if(i==0){
                continue;
            }
            char[] tempA = strs[i-1].toCharArray();
            char[] tempB = strs[i].toCharArray();
            for(int j=0;j<m && count<m;j++){
                if(tempB[j] < tempA[j]){
                    count++;
                }
            }
        }
        return count;
    }
}
