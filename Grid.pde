
class Grid {
  float probability;
  boolean site;
  boolean full;
  float n;
  
  Grid() {
    site = false;
    full = false;
    n = 0;
  }
  
  void create() {
    for (int y = 0; y < height; y = y+60) { //<>//
      for (int x = 0; x < width; x = x+60) {
        stroke(0);
        fill(0);
        rect(x,y,60,60);
        spot.add(new Site(x,y,site,full));
        keeper[i] = new Site(x,y,site,full);
        i++;
      }
    }
  }

  void openRandomly() {
    int cell = int(random(spot.size() - 1)); //<>//
    Site f = spot.get(cell);
    spot.remove(cell);
    println(cell);
    if (f.site == false) {
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(f.x,f.y,60,60);
    f.site = true;
    //isFull(f, cell);
    }
    
  }
  
  /*void isFull(Site f, int cell) {
    if (f.site && f.y == 0 && f.x >= 0) { //<>//
      stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(f.x,f.y,60,60);
      f.full = true;
}  
    if (f.neighbor_left >= 0) {
     if (f.site && keeper[cell-1].full) {
       stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(f.x,f.y,60,60);
        f.full = true;
     }
}
    if (f.neighbor_right < width && keeper[cell + 1] != null) {
if (f.site && keeper[cell + 1].full) {
  stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(f.x,f.y,60,60);
        f.full = true;
}
}
      if (cell - 10 > 0) {
if (f.site && keeper[cell - 10].full) {
  stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(f.x,f.y,60,60);
        f.full = true;
}
}      
    if (f.neighbor_down < height && keeper[cell + 10] != null) {
if (f.site && keeper[cell + 10].full) {
  stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(f.x,f.y,60,60);
        f.full = true;
}
    }
}

    /*void checkFull() {
     for (int i = 0; i < spot.size(); i++) {
      if (spot.get(i).site) {
       if (spot.get(i).neighbor_left > 0) {
     if (spot.get(i - 1).full) {
       stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
        spot.get(i).full = true;
     }
}
    if (spot.get(i).neighbor_right < width) {
if (spot.get(i + 1).full) {
  stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(spot.get(i).x,spot.get(i).y,60,60);
        spot.get(i).full = true;
}
}
      if (spot.get(i).neighbor_up > 0) {
if (spot.get(i - 10).full) {
  stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(spot.get(i).x,spot.get(i).y,60,60);
        spot.get(i).full = true;
}
}      
    if (spot.get(i).neighbor_down < height) {
if (spot.get(i + 10).full) {
  stroke(0);
      strokeWeight(2);
      fill(0,0,250,110);
      rect(spot.get(i).x,spot.get(i).y,60,60);
        spot.get(i).full = true;
}
    } 
      }
     }
    }*/
}  
