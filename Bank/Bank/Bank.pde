MoneySelectors tenMoney = new MoneySelectors(50,30,200,150, "10 DKK", 0, 10);
MoneySelectors hundredMoney = new MoneySelectors(300,30,200,150, "100 DKK", 0, 100);
MoneySelectors thousandMoney = new MoneySelectors(550,30,200,150, "1000 DKK", 0,1000);

MoneySelectors[] selectors = new MoneySelectors[]{tenMoney, hundredMoney, thousandMoney};

Transfer transferButton = new Transfer(50,300,200,150, "Overfør", 0, 0);
Balance balance = new Balance(50,550,200,150,"Balance",0, 0);
//TextField textfield = new TextField(300,300);

void setup(){
  size(800,800);
  strokeWeight(2);
  textAlign(CENTER, CENTER);
  
}

void draw(){
  background(220);
  for(MoneySelectors c: selectors){
    c.display();
  }
  
  transferButton.display();
  balance.display();

}

void mousePressed(){
  tenMoney.registerPress();
  hundredMoney.registerPress();
  thousandMoney.registerPress();
  transferButton.registerPress();
  
  
}

void transferTrigger(){
  for(MoneySelectors c: selectors){
    if(c.isActive){
      balance.money += c.value;
    }
  }
}


void mouseReleased(){
  
}
