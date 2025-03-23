// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";


contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        console.log("Setup");
        helloWorld = new HelloWorld();
    }

    function test_str() public view {
        console.log("Test STR called");
        assertEq(helloWorld.str(),"Hello World");
    }

    function test_RevertWhen_DivByZero() public {
        console.log("Test divByZero called");
        vm.expectRevert(); // Expect a revert due to division by zero
        helloWorld.divByZero();
    }

}
