
/* 1- Logical Negation >
   exclamation mark !
       If expression is true, !expression evaluates to false.
       If expression is false, !expression evaluates to true.
   2- and &&
   -true && true = true
    -true && false = false
    -false && true = false 
    -false && false = false
   3- or ||
       -true || true = true
        -true || false = true
        -false || true = true
        -false || false = false

   4- == (equality)
   5- != (inequality
   -------------------------------------------
  short circuiting
   تحسين الأداء: يقلل من العمليات غير الضرورية.
   */

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;
contract web3eg{
   bool public a = (10==10);
   bool public b = (10!=20);
   bool public c = a||b;
   
   
}

  

   
   

   
