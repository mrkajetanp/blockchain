pragma solidity >=0.4.0 <0.7.0;

contract VendingMachine {
    function buy(uint amount) public payable {
        if (amount > msg.value / 2 ether)
            revert("Not enough Ether provided.");
        // alternative
        require(amount <= msg.value / 2 ether, "Not enough Ether provided.");
    }
}
