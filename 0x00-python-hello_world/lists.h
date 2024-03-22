#ifndef LISTS_H
#define LISTS_H

#include <stdlib.h>

/**
 * struct listint_s - singly linked list
 * @n: interger
 * @next: it points to the next node
 *
 * Description: singly linked list structure node
 * for Holberton school project
 */
typedef struct listint_s
{
	int n;
}
listint_t;
size_t print_listint(const listint_t *h);
listint_t *add_nodeint(listint_t **head, const int n);
void free_listint(listint_t *head);
int check_cycle(listint_t *list);

#endif
