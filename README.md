# HDL IP UTILS
Two VHDL IP utilities I made for other projects.

<details>
  <summary>bin_to_bcd.vhd</summary>
  
  This is a simple utility that converts a 4-binary number to an 8-bit BCD number with two decimal places.</br>
  It was made to be used with a 3-bit adder, but it is appropriate with any system needing to convert a 4-bit binary number.</br>
  </br>
  ### Inputs:
  - `bin` : 4-bit std logic vector

  ### Outputs:
  - `bcd` : 8-bit std logic vector

  If needed, the output can be sliced to be a 4-bit-with-carry output.</br>
  To accomplish this, slice the vector to contain only bits 0 through 4.</br>
  Bits 0-3 will contain the decimal number, and bit 4 will contain the carry.
  
</details>
