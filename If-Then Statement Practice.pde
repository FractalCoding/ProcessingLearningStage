// From my assignment, I had to choose another student's conditional statement
// and turn it into code. I don't think I needed to make it viable, but
// I am an overachiever so I did so anyway. The student's English
// conditional statement was
// If today is Saturday and it is before 11 am and you woke up go back
// to sleep or if you are busy today wake up.

int IsItSat = 0;
int early = 0;
int circadian = 0;
int busy = -4;

int pressA = 0;
int pressB = 0;
int pressC = 0;
int pressD = 0;

void setup() {
  println("Is it Saturday? y/n for yes/no");
  println("Did you wake up? w/s for woke/slept");
  println("Are you busy? b/l for busy/lazy");
  println("Is it earlier than 11AM? e/f for earlier/after.");
}

void draw () {  

}

void keyTyped() {
  if (key == 'y') {
    IsItSat = 1;
    println("It is Saturday, you say.");
    pressA = 1;
  }
  if (key == 'n') {
    IsItSat = 0;
    println("It isn't Saturday, you say.");
    pressA = 1;
  }
  if (key == 'w') {
    circadian = 1;
    println("You woke up, you say.");
    pressB = 1;
  }
  if (key == 's') {
    circadian = 0;
    println("You are sleeping, you say.");
    pressB = 1;
  }
  if (key == 'b') {
    busy = -4;
    println("You are busy today, you say.");
    pressC = 1;
  }
  if (key == 'l') {
    busy = 0;
    println("You are not busy today, you say.");
    pressC = 1;
  }
  if (key == 'e'){
    early = 1;
    println("It's earlier than 11, you say.");
    pressD = 1;
  }
  if (key == 'f'){
    early = 0;
    println("It's later than 11, you say.");
    pressD = 1;
  }
  
int press = (pressA + pressB + pressC + pressD);
int day = (IsItSat + early + circadian + busy);
  
  if (press == 4){
    if ((day) >= 3){
      println("Go back to sleep. It's a Saturday and there's nothing to do.");
    }
    if ((day) < 0){
      println("Get out of bed. You have stuff to do.");
    }
    else if ((day >= 0) && (day < 3)) {
      println("Continue sleeping because you can.");
    }
  }
  if (press < 4) {
    println("Please answer all questions.");
  }

}
