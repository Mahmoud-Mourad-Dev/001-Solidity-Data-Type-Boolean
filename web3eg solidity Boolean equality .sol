
/*
  1- == (equality)
  2- != (inequality)

  In Solidity, the equality operator (==) is used to compare two values and determine if they are equal.
   It returns true if the values are not equal and false

  */

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;

contract web3eg{


   bool isActive  = false;
   bool notActive = false ;

   function  equality() public view returns(bool){
    return isActive != notActive;  
   }
    
}