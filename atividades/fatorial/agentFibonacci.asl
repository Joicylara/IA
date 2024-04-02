
!fibonacci(10).
+!fibonacci(N)
	<- !fibonacci(N,F);
	.print(N, " numero da serie de Fibonacci is ", F).
+!fibonacci(N,1) : N == 1.
+!fibonacci(N,1) : N == 2.
+!fibonacci(N,1) : N > 2
	<- !fibonacci(N-1, F1);
	!fibonacci(N-2, F2);
	F = F1 + F2.
