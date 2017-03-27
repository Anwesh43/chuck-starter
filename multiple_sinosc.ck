SinOsc oscarray[20];
[120,100,110,90] @=> int freqs[];

while(true) {
  0 => int k;
  while(k<4) {
    for(k*5=>int i;i<(k+1)*5;i++) {
        oscarray[i] => dac;
        freqs[k]*(i%5+1) => oscarray[i].freq;
        <<<freqs[k]*(i%5+1)>>>;
        0.5::second => now;
        oscarray[i] =< dac;
    }
    k++;
  }
}
