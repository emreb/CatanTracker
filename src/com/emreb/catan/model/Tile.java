package com.emreb.catan.model;

import com.emreb.catan.model.buildings.Building;

public class Tile {

  private int id = -1;
  private int produces = 0;
  private int dieNumber = 0;
  private Building[] buildingsOnIt;
  
  public Tile(int id, int production, int d){
    this.id = id;
    produces = production;
    dieNumber = d;
    buildingsOnIt = new Building[3];
  }
  
  public int getProduces() {
    return produces;
  }
  
  public int getDieNumber() {
    return dieNumber;
  }
  
  public int getId() {
    return id;
  }
  public void addBuilding(Building b){
    for (int i=0; i < buildingsOnIt.length; i++){
      if (buildingsOnIt[i] == null) {
        buildingsOnIt[i] = b;
        break;
      }
    }
  }
  
  public void removeBuilding(Building b){
    for (int i=0; i < buildingsOnIt.length; i++){
      if (buildingsOnIt[i] == b) {
        buildingsOnIt[i] = null;
        break;
      }
    }
  }
  public Building[] getBuildings() {
    return buildingsOnIt;
  }
}
