// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Owner} from "../src/Owner.sol";
import {Test, console} from "forge-std/Test.sol";

contract OwnerTest is Test {
    Owner public instance;

    function setUp() public {
        instance = new Owner();
    }

    function test_modifyOwner() public {
        console.log("Old Owner : ", instance.owner());
        instance.modifyOwner(address(1));
        assertEq(instance.owner(), address(1));
        console.log("New Owner : ", instance.owner());
    }

    function test_revert_modifyOwner() public {
        vm.prank(address(2)); // Simulate a call from address(2)
        vm.expectRevert("your are not owner"); // Expect the revert with the specific error message
        instance.modifyOwner(address(1)); // This call should revert
    }   
}