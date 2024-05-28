#include <stdio.h>

struct tree_node {
    struct tree_node *left;
    struct tree_node *right;
    long value;
};

long tree_sum(const struct tree_node *node) {
    long result = 0;

    while (node) {
        result += tree_sum(node->left);
        result += node->value;
        node = node->right;
    }

    return result;
}

int main(void) {
    struct tree_node t = { 0, 0, 3};
    long sum = tree_sum(&t);
    printf("sum = %ld", sum);

    return 0;
}