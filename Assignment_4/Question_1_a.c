#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid;
    pid = fork();
    int status;
    if(pid == 0) {
        printf("Child with pid: %d\n", getpid());
        while(1);
    } else {
        sleep(1);
        printf("Parent with pid: %d\n", getpid());
        while(1);
    }
    
    return 0;
}
