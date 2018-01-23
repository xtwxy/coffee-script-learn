public class Hello {
    public static void main(String[] args) {
        final int LIGHTS = 100;
        
        int[] no = new int[LIGHTS];
        int[] li = new int[LIGHTS];

        for(int i = 0; i < LIGHTS; ++i) {
            no[i] = 1 + i;
            li[i] = 0;
        }

        for(int i = 0; i < LIGHTS; ++i) {
            for(int j = i; j < LIGHTS; ++j) {
                if((no[j] % no[i]) == 0) {
                    li[j] += 1;
                    if(no[j] == 100) System.out.printf("(%d, %d)\n", no[i], no[j]);
                }
            }
        }
        
        for(int i = 0; i < LIGHTS; ++i) {
            //if((li[i] % 2) == 1) {
                System.out.printf("(%d, %d) ", no[i], li[i]);
            //}
        }
    }
}
