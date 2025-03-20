
// 1- && (logical conjunction, “and”)

    /* 
    -true && true = true
    -true && false = false
    -false && true = false 
    -false && false = false


    */

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;

contract web3eg{

   bool  active  = true;
   bool  notActive = true;

   function And() public view returns (bool){
    return active && !notActive ; // true and true
   }

    
    
}