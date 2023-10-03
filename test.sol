// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name; // Token Name
    string public symbol; // Token Abbreviation
    uint256 public totalSupply; // Total Supply

    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _from, uint256 _value) public {
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
