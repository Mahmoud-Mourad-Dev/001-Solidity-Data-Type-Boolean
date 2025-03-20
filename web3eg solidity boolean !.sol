
/* 1- Logical Negation > exclamation mark !
       Toggling State
       If expression is true, !expression evaluates to false.
       If expression is false, !expression evaluates to true.

*/
   

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;

contract web3eg{
   bool public  isActive = true;

   function changeMode() public returns(bool){
      return isActive = !isActive ;
   }

   
   

   
}