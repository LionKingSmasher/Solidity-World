pragma solidity ^0.8.13;

// This module is only use on Hardhat
import "hardhat/console.sol";

contract HelloWorld {
	function hello() external {
		console.log("Hello Solidity!");
	}
}