package com.emreb.catan.transactions;

import com.emreb.catan.model.Board;
import com.emreb.catan.model.Card;
import com.emreb.catan.model.Player;
import com.emreb.catan.model.Robber;
import com.emreb.catan.model.Tile;
import com.emreb.catan.model.buildings.Building;

public class Dice {

  public static void roll(int sum) {
    Tile[] tiles = Board.getInstance().getTiles();
    Robber robber = Board.getInstance().getRobber();

    for (Tile t : tiles) {
      if (t.getDieNumber() == sum && robber.getLocation() != t) {
        // Find the buildings on it
        Building[] buildings = t.getBuildings();
        // Find who it belongs to
        for (Building b : buildings) { 
          if (b != null) {
            Player p = b.getOwner();
            Card c = new Card(t.getProduces());
            // Give that person this tile's products based on building type
            int amount = 1;
            if (b.getType() == Building.CITY) {
              amount = 2;
            }
            p.getCards().add(c, amount);
          }
        }
      }
    }
//  for (Player p : Board.getInstance().getPlayers()) {
//    p.printCards();
//  }
  }
}
