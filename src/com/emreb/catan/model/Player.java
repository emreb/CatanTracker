package com.emreb.catan.model;

import java.util.Iterator;
import java.util.LinkedList;

import com.emreb.catan.model.buildings.Building;
import com.emreb.catan.model.buildings.City;
import com.emreb.catan.model.buildings.DevelopmentCard;
import com.emreb.catan.model.buildings.Road;
import com.emreb.catan.model.buildings.Settlement;

public class Player {
  private String name = "";
  private CardCollection cards = new CardCollection();
  private LinkedList<Building> buildings = new LinkedList<Building>();
  private int placementCount = 0;

  public Player(String name) {
    this.name = name;
  }

  public String getName(){
    return name;
  }
  
  public CardCollection getCards() {
    return cards;
  }
  private void buy(Building b, boolean boardSetup, Tile ...tiles) {
    b.addTiles(tiles);
    buildings.add(b);

    // Reduce the price from my cards
    if (!boardSetup) {
      cards.remove(b.getCost());
    }

    for (int i=0;i<tiles.length;i++) {
      if (tiles[i] != null) {
        tiles[i].addBuilding(b);
      }
    }

  }

  public void buySettlement(Tile ...tiles) {
    Settlement s = new Settlement(this);
    buy(s, false, tiles);
  }
  public void placeSettlement(Tile ...tiles) {
    Settlement s = new Settlement(this);
    buy(s, true, tiles);
    placementCount++;
    if (placementCount == 2) {
      // You get the cards for these tiles for free
      for (Tile t : tiles) {
        Card c = new Card(t.getProduces());
        cards.add(c);
      }
    }
  }
  public void upgradeToCity(Settlement s) {
    City c = new City(this);

    buildings.remove(s);

    Tile[] oldTiles = s.getTiles();
    for (int i = 0; i < oldTiles.length; i++){
      oldTiles[i].removeBuilding(s);
    }
    buy(c,false,oldTiles);

  }
  public void buyRoad() {
    Road r = new Road();
    buy(r, false);
  }
  public void buyDevelopmentCard() {
    DevelopmentCard dc = new DevelopmentCard();
    buy(dc, false);
  }
  public Settlement getSettlement(Tile ...tiles){
    Iterator<Building> i = buildings.iterator();
    while (i.hasNext()) {
      Building b = i.next();
      if (b.getType() == Building.SETTLEMENT){
        Tile[] buildingTiles = b.getTiles();
        int matchCount = 0;
        for (int j=0; j < buildingTiles.length; j++){
          for (int k=0; k < tiles.length; k++){
            if (tiles[k] == buildingTiles[j]) {
              matchCount++;
              if (matchCount == tiles.length) {
                return (Settlement)b;
              }
            }
          }
        }
      }
    }

    return null;
  }
  
  public void trade(CardCollection in, CardCollection out) {
    cards.add(in);
    cards.remove(out);
  }
}
