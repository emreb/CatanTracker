package com.emreb.catan.model.buildings;

import com.emreb.catan.model.CardCollection;
import com.emreb.catan.model.Player;
import com.emreb.catan.model.Tile;

public abstract class Building {

  public static final int SETTLEMENT = 1;
  public static final int CITY = 2;
  public static final int ROAD = 3;
  public static final int DEVELOPMENT_CARD = 4;
  
  protected int type = 0;
  protected CardCollection cost = new CardCollection();
  protected Player owner = null;
  protected Tile[] tiles = null;
  
  public int getType(){
    return type;
  }
  public CardCollection getCost(){
    return cost;
  }
  public Player getOwner(){
    return owner;
  }
  public Tile[] getTiles(){
    return tiles;
  }
  public void addTile(Tile t){
    for (int i=0; i < tiles.length; i++){
      if (tiles[i] == null) {
       tiles[i] = t;
        break;
      }
    }
  }
  public void addTiles(Tile[] tiles){
    this.tiles = tiles;
  }
 
}
