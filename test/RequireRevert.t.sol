// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {RequireRevert} from "../src/RequireRevert.sol";

contract RequireRevertTest is Test {
    RequireRevert public instance; 

    function setUp () public {
        instance = new RequireRevert();
    }

    function testRevert_setValue () public {
        vm.expectRevert("Value must be greater than 10");
        instance.setValue(12);
    }
}