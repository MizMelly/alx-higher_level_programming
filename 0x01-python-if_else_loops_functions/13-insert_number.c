#include <stdio.h>
#include <stdlib.h>
#include "lists.h"
#include <unistd.h>
/**
 * insert_node - insert a number into a sorted list
 *
 * @head: a linked list
 *
 * @number: number to be inserted
 *
 * Return: pointer to the new head
 */
listint_t *insert_node(listint_t **head, int number)
{
	listint_t *current = *head;
	listint_t *new_node = NULL;
	listint_t *temp = NULL;
	if (!head)
		return (NULL);
	new_node = malloc(sizeof(listint_t));
	if (!new_node)
		return (NULL);
	
	new_node->n = number;
	new_node->next = NULL;
	if (!*head || (*head)->n >= number)
	{
		new_node->next = *head;
		return (*head = new_node);
	}
	else
	{
		while (current && current->n < number)
		{
			temp = current;
			current = current->next;
		}
		temp->next = new_node;
		new_node->next = current;
	}
	return (new_node);
}
