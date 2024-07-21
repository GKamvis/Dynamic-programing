/*
  // int? fib(n ){
  //   if(n<=2) return 1;
  //   return fib(n-1)! + fib(n-2)!;
  // }       

bu kodda fib(55) kimi bir dəyər axtarsaq bir neçə saniyə lazim olacaq cavabı tapmaq üçün.
  tutaqki                                  5 (5) // 3+2 = 5   fib(5) ==> 5 

                             3(2)                              4(3)

                          1(1)  2(1)   //1+1 = 2        3 (2)        2(1)   // 1 + 2 = 3

                                                     1(1)      2(1)    

*/

//optimal həll
void main() {
  int? fib(n, Map<int, int?> memo) {
    if (memo.containsKey(n)) return memo[n];
    if (n <= 2) return 1;
    memo[n] = fib(n - 1, memo)! + fib(n - 2, memo)!;
    return memo[n];
  }

  Map<int, int?> memo = {};
  print(fib(50, memo));
}
