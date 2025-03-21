
//   || (logical disjunction, “or”)

   /* 
  If a is true, b is false, the result is true.

  If a is false, b is true, the result is true.

  If both a and b are true, the result is true.

  If both a and b are false, the result is false.

  */

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;

contract web3eg{


   bool isActive  = false;
   bool notActive = false ;

   function or () public view returns(bool){
    return isActive || notActive;  
   }
    
}