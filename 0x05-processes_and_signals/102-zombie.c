#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

/**
* infinite_while - this function is an infinite loop.
* Return: 0 on success
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}

	return (0);
}


/**
* main - this is the main function that creates a zombie process.
* Return: 0 ons success.
*/

int main(void)
{
	pid_t child_pid;

	pid_t fork_value;

	int i;

	child_pid = getpid();

	for (i = 0; i < 5; i++)
	{
		fork_value = fork();

		if (fork_value == -1)
		{
			perror("Fork Process Failed.");
			exit(EXIT_FAILURE);
		}

		if (fork_value == 0) /*this indicates the child process*/
		{
			printf("Zombie process created, PID: %u\n", child_pid);
			exit(EXIT_SUCCESS);
		}
	}

	infinite_while();

	return (0);
}
