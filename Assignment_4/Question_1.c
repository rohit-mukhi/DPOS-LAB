#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
int main(void)
{
    pid_t childpid;
    childpid = fork();
    if (childpid == 0) /*child*/
        printf("Child with process id: %d\n", getpid());

    else
    {
        wait(NULL);
        printf("Parent with process id: %d\n", getpid());
    }
    return 0;
}
