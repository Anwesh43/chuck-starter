SinOsc oscarray[20];
while(true) {
  for(0=>int i;i<5;i++) {
      oscarray[i] => dac;
      120*(i%5+1) => oscarray[i].freq;
      0.5::second => now;
      oscarray[i] =< dac;
  }
  for(5=>int i;i<10;i++) {
      oscarray[i] => dac;
      100*(i%5+1) => oscarray[i].freq;
      0.5::second => now;
      oscarray[i] =< dac;
  }
  for(10=>int i;i<15;i++) {
      oscarray[i] => dac;
      110*(i%5+1) => oscarray[i].freq;
      0.5::second => now;
      oscarray[i] =< dac;
  }
  for(15=>int i;i<20;i++) {
      oscarray[i] => dac;
      90*(i%5+1) => oscarray[i].freq;
      0.5::second => now;
      oscarray[i] =< dac;
  }
}
