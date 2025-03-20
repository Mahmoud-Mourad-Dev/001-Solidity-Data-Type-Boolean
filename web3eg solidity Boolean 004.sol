/*
solidity data type
1- value type
 The following are called value types because their variables will always be passed by value
   -Boolean
    * bool: The possible values are constants true and false.

2- reference type

*/

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;
contract web3eg{
  bool isActive;
  
    function Active() public{
      isActive = true;
  }

     function notAvtive() public{
       isActive = false;
  }
    function check() public view returns(bool){
      return isActive;

    }

}

