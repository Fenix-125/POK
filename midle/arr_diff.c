
#include "arr_diff.h"


// # 13. Отримує два масиви одного розміру та їх розмір,
// повертає вказівник на динамічно виділений масив із їх часткою.
double *arr_diff(const double *arr1, const double *arr2, size_t len) {
    double *res_arr_p = (double *) calloc(len, sizeof(double));
    if (res_arr_p == NULL) {
        return NULL;
    }
    for (size_t i = 0; i < len; ++i) {
        if (fabs(arr2[i]) <= 0.0000001) {
            free(res_arr_p);
            return NULL;
        }
        res_arr_p[i] = arr1[i] / arr2[i];
    }

    return res_arr_p;
}
