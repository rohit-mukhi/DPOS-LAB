#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    printf("Starting parent...\n");
    if(fork() == 0) {   
        printf("Child printing the date...\n");
        execlp("date", "date", NULL);
    } else {
        printf("Now parent is waiting for the child...\n");
        sleep(3);
        printf("Killing child...\n");
        printf("Killing parent...\n");
    }
    return 0;
}
