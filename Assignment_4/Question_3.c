#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main() {
    pid_t c1, c2, c3;

    // Child 1: copy file1 → file2
    if ((c1 = fork()) == 0) {
        printf("Child1: PID=%d, PPID=%d (Copying file)\n", getpid(), getppid());
        execlp("cp", "cp", "file1", "file2", NULL);
        exit(0);
    }
    sleep(1);

    // Child 2: display file2
    if ((c2 = fork()) == 0) {
        printf("Child2: PID=%d, PPID=%d (Displaying file)\n", getpid(), getppid());
        execlp("cat", "cat", "file2", NULL);
        exit(0);
    }
    sleep(1);

    // Child 3: display sorted + reverse
    if ((c3 = fork()) == 0) {
        printf("Child3: PID=%d, PPID=%d (Sorted reverse)\n", getpid(), getppid());
        execlp("sort", "sort", "-r", "file2", NULL);
        exit(0);
    }

    // Parent waits
    wait(NULL);
    wait(NULL);
    wait(NULL);

    printf("Parent finished: PID=%d\n", getpid());
    return 0;
}
