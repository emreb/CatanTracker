package com.emreb.catan.model.buildings;

import com.emreb.catan.model.Card;
import com.emreb.catan.model.Player;

public class City extends Building{

  public City(Player owner){
    this.type = Building.CITY;
    this.owner = owner;
    
    Card wheat = new Card(Card.WHEAT);
    Card ore = new Card(Card.ORE);

    cost.add(wheat, 2);
    cost.add(ore, 3);
    
  }
  
  
}
