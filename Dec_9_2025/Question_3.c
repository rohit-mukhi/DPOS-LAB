#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main() {
    printf("Parent started\n");
    if(fork() == 0) {
        printf("Orphan child says hello!\n");
        exit(1);
    } else {
        printf("terminating parent...\n");
        exit(0);
    }
    return 0;
}
