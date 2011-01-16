package com.emreb.catan.model;

public class Robber {

  private Tile tile;
  
  public Robber(Tile t) {
    tile = t;
  }
  
  public void moveRobber(Tile t) {
    tile = t;
  }
  
  public Tile getLocation() {
    return tile;
  }
  
}
