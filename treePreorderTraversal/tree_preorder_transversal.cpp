/* you only have to complete the function given below.
Node is defined as

struct node
{
    int data;
    node* left;
    node* right;
};

*/

#include <queue>
#include <iostream>
#include <string>
#include <sstream>
#include <array>

using namespace std;

struct node
{
  int data;
  node* left;
  node* right;
};

node createNode(int data) {
  node newNode;
  newNode.data = data;
  newNode.left = NULL;
  newNode.right = NULL;
  return newNode;
}

void preOrder(node *root) {
  if (root == NULL) {
    return;
  }
  cout << root->data << ' ';
  preOrder(root->left);
  preOrder(root->right);
}

int main() {
  node n1 = createNode(1);
  node n5 = createNode(5);
  node n2 = createNode(2);
  node n3 = createNode(3);
  node n6 = createNode(6);
  node n4 = createNode(4);

  n1.right = &n2;
  n2.right = &n5;
  n5.right = &n6;
  n5.left = &n3;
  n3.right = &n4;


  node *root = &n1;
  //cout << root->left->data;
  preOrder(root);
  return 0;
}
