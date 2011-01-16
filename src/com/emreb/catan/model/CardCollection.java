package com.emreb.catan.model;

import java.util.HashMap;
import java.util.Set;

public class CardCollection {
  HashMap<Integer, Integer> collection = new HashMap<Integer, Integer>(5);
  
  public void add(Card ...cards){
    for (Card c : cards){
      add(c);
    }
  }
  public void add(Card c){
    add(c,1);
  }
  
  public void add(Card c, int count){
    int current = getCount(c);
    collection.put(c.getType(), current + count);
  }
  
  public void add(CardCollection cc) {
    for (int i : cc.getCardTypes()) {
      Card c = new Card(i);
      add(c, cc.getCount(c));
    }
  }
    
  public void remove(CardCollection cc) {
    for (int i : cc.getCardTypes()) {
      Card c = new Card(i);
      remove(c, cc.getCount(c));
    }
  }
  public void remove(Card c){
    remove(c,1);
  }
  public void remove(Card c, int count){
    int current = getCount(c);
    // In case the estimate is wrong due to stealing etc.
    if (current - count >= 0) {
      collection.put(c.getType(), current - count);
    } else {
      collection.put(c.getType(), 0);
    }
  }
  
  public int getCount(Card c){
    int count = 0; 
    if (null != collection.get(c.getType())) {
      count = collection.get(c.getType());
    }
    return count;
  }

  public Set<Integer> getCardTypes(){
    Set<Integer> cardTypes = collection.keySet();
    return cardTypes;
  }
}
