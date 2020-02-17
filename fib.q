10 {x,sum -2#x}/1 1
1 2 3.$1 2 3.          / dot product
M:(0 1.;1 1.)          / assignment
M$M                    / matrix squared (optimized): rows dot cols
10$[M]/M               / matrix to the power of 10, also fibonacci
10$[M]\M
(10$[M]\M)[;0;1]
10 (M mmu)\1 1f                          / first 10 Fibonacci numbers