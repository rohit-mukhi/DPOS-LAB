#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main() {
    printf("Parent started...\n");
    if(fork() == 0) {
        printf("Hello I am the child\n");
        exit(1);
    } else {
        printf("Now parent is going to sleep..\n");
        sleep(10);
        printf("Now the parent awakens!\n");
        printf("Killing the parent\n");
    }
    return 0;
}
