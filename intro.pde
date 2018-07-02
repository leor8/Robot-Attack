public void intro() { // Stories

  background(introbkImage);

  mouseframes++;
  

  // Checking for mousepress
  if (mousePressed == true && mouseframes >= 5) {
    mouseframes = 0;
    mouseCheck++;
  }
  if(mouseCheck > 19){
    mouseCheck = 19;
  }

  // Texts
  // emergency
  if (mouseCheck == 0) {
    scientist1(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Grace:", 20, 650);
    textFont(text2, 25);
    text("Attentions everyone!!! There's an emergency!!! ", 50, 680);
  }
  // whats going on
  if (mouseCheck == 1) {
    scientist2(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Linda:", 20, 650);
    textFont(text2, 25);
    text("What's going on Grace? Don't panic, explain yourself!", 50, 680);
  }
  // Robots gone bad
  if (mouseCheck == 2) {
    scientist1(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Grace:", 20, 650);
    textFont(text2, 25);
    text("There's something wrong with the program of our newly developed robots... AND THEY ARE OUT OF CONTROL NOW!", 50, 680);
    text("Brian, our head scientist called for a meeting to dicuss possible solutions to the Robot Riot.", 50, 730);
  }
  // Lets go
  if (mouseCheck == 3) {
    scientist2(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Linda:", 20, 650);
    textFont(text2, 25);
    text("Whoa, that sounds bad. Let's head to the laboratory right away!", 50, 680);
  }
  // Meeting1
  if (mouseCheck == 4) {
    scientist1(500, 200, 100);
    scientist2(700, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("Hey girls, do you guys like my plant?", 50, 680);
  }
  // Meeting2
  if (mouseCheck == 5) {
    scientist1(500, 200, 100);
    scientist2(700, 200, 100);
    scientist3(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Grace:", 20, 650);
    textFont(text2, 25);
    text("Brian! This is not the right timing for that, we need to figure out what should we do about those robots!!", 50, 680);
  }
  // Meeting3
  if (mouseCheck == 6) {
    scientist1(500, 200, 100);
    scientist2(700, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("Okay okay don't get mad. I think I have a solution to take them down. But I need someone's help.", 50, 680);
  }
  // Meeting4
  if (mouseCheck == 7) {
    scientist1(500, 200, 255);
    scientist2(700, 200, 100);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Linda:", 20, 650);
    textFont(text2, 25);
    text("What's your solution? And who's the person you need to find? I'll get in touch with that person right now!", 50, 680);
  }
  // Meeting5
  if (mouseCheck == 8) {
    scientist1(500, 200, 100);
    scientist2(700, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("I invented some powerful towers that can effectively destroy the line of robots we made. However...", 50, 680);
  }
  // Meeting6
  if (mouseCheck == 9) {
    scientist1(500, 200, 255);
    scientist2(700, 200, 100);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Linda:", 20, 650);
    textFont(text2, 25);
    text("Oh no the alarm is going off!! What's going on here??", 50, 680);
  }
  // Meeting7
  if (mouseCheck == 10) {
    scientist1(500, 200, 100);
    scientist2(700, 200, 100);
    scientist3(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Grace:", 20, 650);
    textFont(text2, 25);
    text("I'll go take a look.", 50, 680);
  }
  // Meeting8
  if (mouseCheck == 11) {
    scientist2(500, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("Where was I? Oh right, however, the towers can only be built only if we have enough gold, which we don't.", 50, 680);
  }
  // Meeting9
  if (mouseCheck == 12) {
    scientist2(500, 200, 100);
    scientist3(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Linda:", 20, 650);
    textFont(text2, 25);
    text("So what can we do?", 50, 680);
  }
  // Meeting10
  if (mouseCheck == 13) {
    scientist2(500, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("That's the person I was telling you can help. You see...", 50, 680);
  }
  // Meeting11
  if (mouseCheck == 14) {
    scientist1(700, 200, 100);
    scientist2(500, 200, 100);
    scientist3(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Grace:", 20, 650);
    textFont(text2, 25);
    text("Heyyy Brian!! The robots are coming!", 50, 680);
  }
  // Meeting12
  if (mouseCheck == 15) {
    scientist1(700, 200, 100);
    scientist2(500, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("What do you mean by they are coming?!", 50, 680);
  }
  // Meeting13
  if (mouseCheck == 16) {
    scientist1(700, 200, 100);
    scientist2(500, 200, 100);
    scientist3(100, 200, 255);
    textFont(text1, 20);
    fill(0);
    text("Grace:", 20, 650);
    textFont(text2, 25);
    text("The are trying to invade the \"Hometown\". They are now lining up on the other side of the fence. They will try to invade us any minute from now...", 50, 680);
  }
  // Meeting14
  if (mouseCheck == 17) {
    scientist1(700, 200, 255);
    scientist2(500, 200, 100);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Linda:", 20, 650);
    textFont(text2, 25);
    text("Let's go find that person who can help us and defend our place please Brian.", 50, 680);
  }
  // Meeting15
  if (mouseCheck == 18) {
    scientist1(700, 200, 100);
    scientist2(500, 200, 255);
    scientist3(100, 200, 100);
    textFont(text1, 20);
    fill(0);
    text("Brian:", 20, 650);
    textFont(text2, 25);
    text("Let's go. Hopefully he will agree to help us.", 50, 680);
  }
  // Decide
  if(mouseCheck == 19){
    textFont(text2, 35);
    fill(0);
    text("Brian, Grace and Linda approached you and", 500, 400);
    text("asked for your help. Do you want to give them a hand?", 500, 450);
    
    textFont(button, 35);
    fill(0, 100, 0);
    text("YES", 550, 700);
    
    fill(100, 0, 0);
    text("NO", 1200, 700);
    
    if(mousePressed && mouseX >= 550 && mouseX <= 610 && mouseY >= 680 && mouseY <= 710){
      tint(255, 255);
      states = 4;
    }
    if(mousePressed && mouseX >= 1200 && mouseX <= 1240 && mouseY >= 680 && mouseY <= 710){
      exit();
    }
  }
}

void scientist1(int x, int y, int tint1) {
  // The scientist1 image
  pushMatrix();
  translate(x, y);
  scale(0.7);
  image(scientist, 0, 0);
  tint(255, tint1);
  popMatrix();
}

void scientist2(int x, int y, int tint2) {
  // The scientist image
  pushMatrix();
  translate(x, y);
  scale(0.7);
  image(scientist2, 0, 0);
  tint(255, tint2);
  popMatrix();
}

void scientist3(int x, int y, int tint3) {
  pushMatrix();
  translate(x, y);
  scale(0.7);
  image(scientist3, 0, 0);
  tint(255, tint3);
  popMatrix();
}