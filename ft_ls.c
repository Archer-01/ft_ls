#include "libft/libft.h"
#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char **argv)
{
	char *path = ".";

	if (argc == 2) {
		path = argv[1];
	}

	DIR *dirp = opendir(path);

	if (dirp == NULL) {
		perror("opendir");
		exit(EXIT_FAILURE);
	}

	struct dirent *entry = readdir(dirp);

	while (entry != NULL) {
		const char *path = entry->d_name;
		const t_bool is_hidden = path[0] == '.';

		if (!is_hidden) {
			ft_printf("%s\n", path);
		}

		entry = readdir(dirp);
	}

	closedir(dirp);
	return 0;
}
