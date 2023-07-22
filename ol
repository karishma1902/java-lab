class EvenOdd {
    void meth() {
        System.out.println("Enter size of matrix");
        Scanner sc = new Scanner(System.in);
        int x = sc.nextInt();
        int l = 0;
        int k = 0;
        int a[] = new int[x];
        int even[] = new int[x];
        int odd[] = new int[x];
        System.out.println("Enter a 1D matrix ");
        for (int i = 0; i < x; i++) {
            a[i] = sc.nextInt();
        }

        for (int i = 0; i < x; i++) {
            if (a[i] % 2 == 0) {
                even[k] = a[i];
                k++;
            } else {
                odd[l] = a[i];
                l++;
            }
        }
        System.out.println("Even matrix");
        for (int i = 0; i < k; i++) {
            System.out.print(even[i] + "\t");
        }
        System.out.println();
        System.out.println("Odd matrix");
        for (int i = 0; i < l; i++) {
            System.out.print(odd[i] + "\t");
        }
        System.out.println();
    }
}

class Transpose extends EvenOdd {
    void meth() {
        super.meth();
        int m, n;
        System.out.println("Enter rows and cols");
        Scanner track = new Scanner(System.in);
        m = track.nextInt();
        n = track.nextInt();
        int[][] a = new int[m][n];
        int[][] b = new int[m][n];
        System.out.println("Enter a 2D matrix ");
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                a[i][j] = track.nextInt();
            }
        }
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                b[i][j] = a[j][i];
            }
        }

        System.out.println("Transpose of matrix is");
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(b[i][j] + "\t");
            }
            System.out.println();
        }
    }
}

class Override {
    public static void main(String[] args) {
        Transpose obj = new Transpose();
        obj.meth();
    }
}
