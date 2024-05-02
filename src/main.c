#include <unistd.h>
#include <threads.h>
#include <stdio.h>
#include <stdint.h>
#include <errno.h>

#include <osm/bind.h>

#include <sys/socket.h>

volatile double temperature = 0;
volatile double humidity = 0;

int _sock_connect(void *data)
{
	int fd = (uintptr_t)data;

	double temp = temperature;
	write(fd, &temp, sizeof(temp));
	close(fd);
	
	return 0;
}

int _temp_poll(void *data)
{
	// struct timespec sleeper = {.tv_sec = 1};
	while(1)
	{
		temperature = 0.1;
		// humidity += 0.1;
		//printf("Hello");
		
		// while(thrd_sleep(&sleeper, NULL))
		// {}
	}
	thrd_exit(0);
}

int main(int argc, char **argv)
{
	int fd = osm_open_onboard(NULL);

	if (fd == -1)
	{
		perror("Error opening socket for osm-thermald");
		return 1;
	}

	thrd_t poll;
	thrd_create(&poll, (thrd_start_t) &_temp_poll, 0);
	thrd_detach(poll);
	
	Vector threads = osm_listen_and_accept(fd, _sock_connect);
	close(fd);

	// Close all threads
	for(unsigned int i = 0; i < threads.count; i++)
	{
		thrd_t *thread = vect_get(&threads, i);
		thrd_join(*thread, NULL);
	}
	
	// Cleanup
	vect_end(&threads);
	thrd_join(poll, NULL);

	return 0;
}