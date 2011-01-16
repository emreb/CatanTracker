package com.emreb.catan.model.buildings;

import com.emreb.catan.model.Card;

public class DevelopmentCard extends Building{

  public DevelopmentCard(){
    this.type = Building.DEVELOPMENT_CARD;
  
    Card wool = new Card(Card.WOOL);
    Card wheat = new Card(Card.WHEAT);
    Card ore = new Card(Card.ORE);
   
    cost.add(wool, wheat, ore);
    
  }
  
  
}
