package com.emreb.catan.model.buildings;

import com.emreb.catan.model.Card;
import com.emreb.catan.model.Player;

public class Settlement extends Building{

  public Settlement(Player owner){
    this.type = Building.SETTLEMENT;
    this.owner = owner;
    
    Card wood = new Card(Card.WOOD);
    Card brick = new Card(Card.BRICK);
    Card wheat = new Card(Card.WHEAT);
    Card wool = new Card(Card.WOOL);
    cost.add(wood, brick, wheat, wool);
    
  }
  
  
}
