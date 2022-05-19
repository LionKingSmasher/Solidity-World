pragma solidity ^0.8.13;

contract MyMap {
	mapping(address => uint) public map;

	constructor() {
		map[msg.sender] = 100000;
	}

	function sendTo(address _to, uint _amount) public {
		if (map[msg.sender] <= _amount) {
			revert("Low amount gas :(");
		}

		map[msg.sender] -= _amount;
		map[_to] += _amount;
	}
}