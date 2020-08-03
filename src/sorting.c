#include "ft_ls.h"

void 	sort_switch(t_file **list_file)
{
    if (g_f & LS_R)
        sort_reverse(list_file);
    else if (g_f & LS_T)
        sort_time(list_file);
    else if (g_f & LS_SS)
        sort_size(list_file);
    else
        sort_ascii(list_file);
}

void 	sort_time(t_file **list_file)
{

}

void 	sort_ascii(t_file **list_file)
{
    
}

void 	sort_size(t_file **list_file)
{
    
}

void 	sort_reverse(t_file **list_file)
{
    
}