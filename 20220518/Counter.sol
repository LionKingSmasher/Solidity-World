pragma solidity ^0.8.13;

contract Counter {
	uint public count;

	constructor() {
		count = 0;
	}

	function inc() public {
		count += 1;
	}

	function dec() public {
		count -= 1;
	}

	function getValue() public view returns (uint) {
		return count;
	}
}