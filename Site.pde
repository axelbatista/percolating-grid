class Site {
  float x;
  float y;
  boolean site;
  boolean full;
  float neighbor_left;
  float neighbor_right;
  float neighbor_up;
  float neighbor_down;
  
  Site(float x_, float y_, boolean site_, boolean full_) {
    x = x_;
    y = y_;
    site = site_;
    full = full_;
    neighbor_right = x + 60;
    neighbor_left = x - 60;
    neighbor_up = y - 60;
    neighbor_down = y + 60;
  }
  
  
}
