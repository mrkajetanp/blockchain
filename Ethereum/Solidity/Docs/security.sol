pragma solidity >=0.4.0 <0.7.0;

contract Fund {
    /// Mapping of Ether shares of the contract
    mapping(address => uint) shares;
    /// Withdraw your share
    function withdraw() public {
        uint share = shares[msg.sender];
        shares[msg.sender] = 0;
        msg.sender.transfer(share);
    }
}
