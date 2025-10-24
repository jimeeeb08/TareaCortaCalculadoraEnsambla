#include <stdio.h>
#include <stdint.h>
#include "operaciones.h"

int main(void) {
    int opcion;
    int64_t a, b, res;

    do {
        printf("\n- - - CALCULADORA 64 BITS - - -\n");
        printf("[1] SUMA\n");
        printf("[2] RESTA\n");
        printf("[3] SALIR\n");
        printf("Seleccione opción: ");
        scanf("%d", &opcion);

        if (opcion == 1 || opcion == 2) {
            printf("Ingrese primer número: ");
            scanf("%ld", &a);
            printf("Ingrese segundo número: ");
            scanf("%ld", &b);

            if (opcion == 1) {
                res = suma64(a, b);
                printf("Resultado (a + b) = %ld\n", res);
            } else {
                res = resta64(a, b);
                printf("Resultado (a - b) = %ld\n", res);
            }
        } else if (opcion != 3) {
            printf("Opción inválida.\n");
        }
    } while (opcion != 3);

    printf("Saliendo...\n");
    return 0;
}
