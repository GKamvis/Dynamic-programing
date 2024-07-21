/*
                              Dinamik Proqramlama 

Dinamik proqramlama - Təkrarlanan alt problemləri həll etməklə daha böyük problemləri həll etməyimizi hədəfləyir. 
                    - Problemi daha kiçik alt problemlərə bölərək və bu alt problemlərin nəticələrini xatirlayaraq effektivliyi artırır. 

Dinamik proqramlaşdlırmada 2 əsəs yaxınlaşma var 
                                                 1)Memoization
                                                 2)Tabulation

1)Memorization Rekursiv olaraq işləyir və həll olunmuş alt problemlərin nəticəsini yadda saxlayır.
alt problemləri xatirladığı üçün həmin node-ləri yenidən hesablamadan istifadə edə bilir.
-grid_travler faylında daha ətraflı yazilib.

2)Tabulation  bu yaxinlaşma ilə isə dövr ilə hesablama edilir və bir listdə saxlanılır.



*/
// Tabulation ilə Fibonacci Sırasında n-ci ədədi tapmaq.

void main() {
  int n = 544;
  int fibonacci(int n) {
    if (n <= 1) {
      return n;
    }
    List<int> dp = List.filled(n + 1, 0);
    dp[1] = 1;
    for (int i = 2; i <= n; i++) {
      dp[i] = dp[i - 1] + dp[i - 2];
    }
    return dp[n];
  }

  print(fibonacci(n)); //8004996458576119163
}
