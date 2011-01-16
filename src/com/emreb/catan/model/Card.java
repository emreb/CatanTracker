package com.emreb.catan.model;

public class Card {

  public static final int WOOD = 1;
  public static final int BRICK = 2;
  public static final int WOOL = 3;
  public static final int WHEAT = 4;
  public static final int ORE = 5;
  
  private int type = 0;
  
  public Integer getType(){
    return type;
  }
  
  public Card (int type){
    this.type = type;
  }
  
  public String getTypeName(){
    int i = type;
    if (i == WOOD) {
      return "Wood";
    } else if (i == BRICK) {
      return "Brick";
    } else if (i == WOOL) {
      return "Wool";
    } else if (i == WHEAT) {
      return "Wheat";
    } else if (i == ORE) {
      return "Ore";
    } else {
      return "Desert";
    }
  }
  public static String GetTypeName(int i){
    if (i == WOOD) {
      return "Wood";
    } else if (i == BRICK) {
      return "Brick";
    } else if (i == WOOL) {
      return "Wool";
    } else if (i == WHEAT) {
      return "Wheat";
    } else if (i == ORE) {
      return "Ore";
    } else {
      return "Desert";
    }
  }
}
