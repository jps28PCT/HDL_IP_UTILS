# HDL IP UTILS
Two VHDL IP utilities I made for other projects.

<details>
  <summary>bin_to_bcd.vhd</summary>
  
  This is a simple utility that converts a 4-binary number to an 8-bit BCD representation.</br>
  It was made to be used with a 3-bit adder, but it is appropriate with any system needing to convert a 4-bit binary number.</br>
  It is solely combinational, and does not use a clock signal.
  </br>
  
  ### Inputs:
  - `bin` : 4-bit std logic vector

  ### Outputs:
  - `bcd` : 8-bit std logic vector
    - Bits 0 through 3 contain the decimal 'ones' place.
    - Bits 4 through 7 contain the decimal 'tens' place. 
  
</details>


<details>
  <summary>prng.vhd</summary>

  This utility acts as a linear shift register pseudo-random number generator.</br>
  It is tapped on bits 0 and 6.</br>
  This program is syncronous and does rely on a clock signal.
  </br>

  ### Inputs:
  - `clock` : std logic clock input

  ### Outputs:
  - `rand_out` : 4-bit std logic vector
  This block outputs a random number between 0 and 15.</br>
  The more number of clock cycles between reads from `rand_out`, the more 'random' the numbers will be.

</details>
