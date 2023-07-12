# Metacrafters Solidity
So this code or assessment will show how you will create token. And how you will burn token, mint token, check the total supply and balances of the token. So the purpose of this code to help and provide an example who will gonna create an NFT Token
# Description
Solidity is an advanced programming language used for implementing Ethereum-based smart contracts. It's an object-oriented language that targets the Ethereum virtual machine (EVM). This language is statically-typed and supports complex programming features such as inheritance and user-defined data types.
#Getting Started
So to try run this program here in https://remix.ethereum.org/. in here you can run this code. Add file then paste this code that I created



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
