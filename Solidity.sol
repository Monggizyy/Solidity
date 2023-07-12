// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "SolanaMonkeyBusiness";
    string public tokenAbbrv = "SMB";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    // mint function
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn(address _address, uint256 _value) public returns (bool) {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
        return true;
    }
}