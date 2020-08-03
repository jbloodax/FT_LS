#include "ft_ls.h"

int main(int argc, char *argv[])
{
    t_file *list_file;
    
    parse_flags(argc, argv);
    parse_name(argc, argv);
    return (0);
}