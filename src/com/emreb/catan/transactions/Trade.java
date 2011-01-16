package com.emreb.catan.transactions;

import com.emreb.catan.model.CardCollection;
import com.emreb.catan.model.Player;

public class Trade {

  public static void execute(Player p1, CardCollection p1Cards, 
      Player p2, CardCollection p2Cards){
    p1.trade(p2Cards, p1Cards);
    p2.trade(p1Cards, p2Cards);
  }
  public static void withBank(Player p, CardCollection p1Cards, 
      CardCollection bankCards) {
    p.trade(bankCards, p1Cards);
  }
}
