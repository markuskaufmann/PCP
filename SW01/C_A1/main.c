#include <stdio.h>

void printNumbersGoto(int n) {
    int count = 0;
    check:
    if(count <= n) {
        printf("%i ", count);
        count++;
        goto check;
    }
}

void printNumbersFor(int n) {
    for(int i = 0; i <= n; i++) {
        printf("%i ", i);
    }
}

void printNumbersRecursiveFunction(int n) {
    if(n > 0) {
        printNumbersRecursiveFunction(n-1);
    }
    printf("%i ", n);
}

int main() {
    printNumbersGoto(7);
    printf("= printNumbersGoto(7)\n");
    printNumbersFor(7);
    printf("= printNumbersFor(7)\n");
    printNumbersRecursiveFunction(7);
    printf("= printNumbersRecursiveFunction(7)\n");
    return 0;
}

