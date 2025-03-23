
/* 1- Logical Negation >
   exclamation mark !
       If expression is true, !expression evaluates to false.
       If expression is false, !expression evaluates to true.
   2- and &&
   -true && true = true
    -true && false = false
    -false && true = false 
    -false && false = false

*/
   

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;
contract web3eg{
   bool public a = false;
   bool public b = !a;
   bool public c = a&&b;

   
}

  

   
   

   
