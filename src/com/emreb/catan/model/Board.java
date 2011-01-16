package com.emreb.catan.model;

public class Board {

  private static Board singleton;
  private Tile[] tiles;
  private Player[] players;
  private Robber robber;
  
  protected Board(){
    tiles = new Tile[19];
    players = new Player[4];
    for (int i = 0; i < 4; i++) {
      players[i] = new Player(""+i, this);
    }
  }
  public static Board getInstance(){
    if (singleton == null) {
      singleton = new Board();
    }
    return singleton;
  }
  
  public void createTile(int id, int production, int number) {
    Tile t = new Tile(id, production, number);
    tiles[t.getId()] = t;
  }
  
  public Tile getTile(int id) {
    return tiles[id];
  }
  
  public void addRobber(Tile t) {
    robber = new Robber(t);
  }
  public Robber getRobber() {
    return robber;
  }
  public Player[] getPlayers(){
    return players;
  }
  public Player getPlayer(int i) {
    return players[i];
  }
  public Tile[] getTiles(){
    return tiles;
  }
}
