#' Rozklad czasu gry w SuperFarmera strategii dostepnych w pakiecie
#'
#' Funkcja porownaj_strategie_w_pakiecie przedstawia na wykresie skrzypcowym rozklad czasu gry strategii dostepnych
#' w pakiecie, przy powtorzeniu gry 10000 razy
#' 
#' @return funkcja zwraca wykres skrzypcowy z rozkladem czasu gry
#'
#' @export
#'
#'


porownaj_strategie_w_pakiecie=function(){
 
  a1<-badaj_gre2(strategy1)
  a2<-badaj_gre2(strategy2)
  a3<-badaj_gre2(strategy3)
  
  astrategy1 <- data.frame(rep("strategy1", length(a1)), a1)
  colnames(astrategy1) <- c("strategia", "Czas_gry")
  astrategy2 <- data.frame(rep("strategy2", length(a2)), a2)
  colnames(astrategy2) <- c("strategia", "Czas_gry")
  astrategy3 <- data.frame(rep("strategy3", length(a3)), a3)
  colnames(astrategy3) <- c("strategia", "Czas_gry")
  strat <- rbind(astrategy1,astrategy2,astrategy3)
  
 ggplot2:: ggplot(strat, ggplot2::aes(x = strat$strategia, y = strat$Czas_gry, fill = strat$strategia)) + ggplot2:: geom_violin() + ggplot2:: guides(fill = FALSE) +
   ggplot2:: ggtitle("Rozklad czasu gry dla strategii w pakiecie") + ggplot2:: stat_summary(fun.y = "mean", geom = "point", size = 4) 
}

