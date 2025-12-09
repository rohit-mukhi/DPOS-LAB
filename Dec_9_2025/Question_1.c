#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    printf("Starting parent...\n");
    if(fork() == 0) {
        printf("Starting child 1...\n");
        if(fork() == 0) {
            printf("Starting child 2...\n");
            printf("Ending child 2...\n");
        } else {
            sleep(1);
            printf("Ending child 1...\n");
        }
    } else {
        sleep(2);
        printf("Ending Parent...\n");
    }
    return 0;
}
