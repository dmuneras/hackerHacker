/*
  Print elements of a linked list on console
  head pointer input could be NULL as well for empty list
  Node is defined as
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
#include <iostream>
using namespace std;

struct Node {
  int data;
  struct Node *next;
};

void Print(Node *head)
{
  Node* current = head;
  if (head == NULL) {
    return;
  }
  while (current->next != NULL) {
    cout << current->data << endl;
    current = current->next;
  }
  cout << current->data << endl;
}

int main()
{

  Node* A = NULL;
  Node* temp = new Node();
  temp->data = 2;
  A = temp;
  Node* temp2 = new Node();
  temp2->data = 4;
  temp2->next = NULL;
  temp->next = temp2;
  Node* temp3 = new Node();
  temp3->data = 6;
  temp3->next = NULL;
  temp2->next = temp3;
  Print(A);
  return 0;
}

