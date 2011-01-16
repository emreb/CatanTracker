package com.emreb.catan.model.buildings;

import com.emreb.catan.model.Card;

public class Road extends Building{

  public Road(){
    this.type = Building.ROAD;
    
    Card brick = new Card(Card.BRICK);
    Card wood = new Card(Card.WOOD);
    cost.add(brick, wood);
    
  }
  
  
}
