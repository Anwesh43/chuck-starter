SinOsc s => dac;
0 => int n;
1 => int k;
while(true) {
    n => s.freq;
    100::ms=>now;
    n+k*10=>n;
    if(n>500) {
       -1 => k;
    }
    else if(n <= 100){
        1 => k;
    }
}
