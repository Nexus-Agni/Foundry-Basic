// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract HelloWorld {
   string public str="Hello World";

   function divByZero () pure public returns(uint) {
        uint a = 8;
        uint b = 0;
        return a / b;
   }
}
