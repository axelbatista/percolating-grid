ArrayList<Site> spot = new ArrayList<Site>();
Site[] keeper = new Site[100];
Grid grid;
int i = 0;

void setup() {
  frameRate(10);
  size(600, 600);
  grid = new Grid();
  grid.create();
}

void draw() {
  if (spot.size() > 0) {
  grid.openRandomly();
  } 
  //grid.checkFull();
}
