#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int isPrime(int n){
    if (n <= 1) return 0;
    for(int i=2; i*i<=n; i++)
        if(n%i==0) return 0;
    return 1;
}

int main() {
    int n, i;
    printf("Enter length: ");
    scanf("%d", &n);

    int arr[n];
    pid_t pid = fork();

    if(pid == 0){  
        arr[0] = 0; 
        arr[1] = 1;
        for(i=2;i<n;i++)
            arr[i] = arr[i-1] + arr[i-2];

        // Send values to parent using shared memory via exit? → Instead use pipe/ file.
        FILE *fp = fopen("fib.txt", "w");
        for(i=0;i<n;i++)
            fprintf(fp, "%d ", arr[i]);
        fclose(fp);

        exit(0);
    }
    else {
        wait(NULL); // wait for child
        FILE *fp = fopen("fib.txt", "r");
        for(i=0;i<n;i++)
            fscanf(fp, "%d", &arr[i]);  
        fclose(fp);

        printf("Fibonacci: ");
        for(i=0;i<n;i++)
            printf("%d ", arr[i]);

        printf("\nPrime Fibonacci numbers:\n");
        for(i=0;i<n;i++)
            if(isPrime(arr[i]))
                printf("%d at position %d\n", arr[i], i);
    }
    return 0;
}
