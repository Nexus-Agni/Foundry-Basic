// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test, console} from "forge-std/Test.sol";

contract FetchBlockTest is Test {
    function TestfetchBlock () public {
        string[] memory command = new string[](2);
        command[0] = "node";
        command[1] = "./script/fetchBlock.js";
        bytes memory blockNumber = vm.ffi(command);

        console.logBytes(blockNumber);
    }
}