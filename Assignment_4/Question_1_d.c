#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main() {
    pid_t pid;
    pid = fork();
    int status;
    if(pid == 0) {
        printf("Child with pid: %d task starts\n", getpid());
        printf("Child with pid: %d task stops\n", getpid());
        exit(0);
    } else {
        sleep(10);
        printf("Parent with pid: %d starts waiting for child process\n", getpid());
        wait(NULL);
        printf("Parent with pid: %d overtakes control from child\n", getpid());
        sleep(10);
    }
    
    return 0;
}
