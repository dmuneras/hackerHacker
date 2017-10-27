/*
  Insert node inside linked list
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

Node* Insert(Node *head,int data)
{
  Node* current = head;
  if (head == NULL) {

  }
  else {

  }
  while (current->next != NULL) {
    current = current->next;
  }
  Node* newNode = new Node();
  newNode->data = data;
  newNode->next = NULL;
  current->next = newNode;
  return head;
}

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
  Insert(A, 6);
  Print(A);
  return 0;
}

