// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {StudentData} from "../src/StudentData.sol";
contract StudentDataScript is Script {
    StudentData public studentData;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        studentData = new StudentData("Daniel",25);
        
        vm.stopBroadcast();

        console.log("StudentData deployed at:", address(studentData));

    }
}
