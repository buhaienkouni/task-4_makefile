#include "calculator.h"

int Calculator::OlehSuperCalculation (double a, double b)
{
    return Mul(Add(a, b), Sub(a, b));
}
