// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {MultiCaller} from "../src/MultiCaller.sol";
import {Test, console} from "forge-std/Test.sol";

contract MultiCallerTest is Test {
    MultiCaller public instance;

    function setUp () public {
        instance = new MultiCaller();
    }

    function test_recordCall () public {
        instance.recordCall();
        console.log("Last Caller : ", instance.lastCaller());

        // vm.prank(address(1));
        // instance.recordCall();
        // console.log("Last Caller : ", instance.lastCaller());

        vm.startPrank(address(1));
        instance.recordCall();
        console.log("Last Caller : ", instance.lastCaller());
        instance.recordCall();
        console.log("Last Caller : ", instance.lastCaller());
        instance.recordCall();
        console.log("Last Caller : ", instance.lastCaller());
        vm.stopPrank();
    }
}