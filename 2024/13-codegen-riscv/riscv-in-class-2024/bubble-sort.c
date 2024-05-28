#include <stdio.h>

int numbers[] = {20, 3, 56, 8, 90};
int size = 5;

void Sort(int v[], int n);
void Swap(int v[], int k);
void Print(int v[], int n);

int main() {
    Sort(numbers, size);
}

void Sort(int v[], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = i - 1; j >= 0 && v[j] > v[j + 1]; j--) {
            Swap(v, j);
        }
    }
}

void Swap(int v[], int k) {
    int temp;
    temp = v[k];
    v[k] = v[k + 1];
    v[k + 1] = temp;
}

void Print(int v[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d\n", v[i]);
    }
}