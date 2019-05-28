pragma solidity > 0.4.22 < 0.7.0;

contract ReceiverPays {
    address owner = msg.sender;

    mapping(uint256 => bool) usedNonces;

    constructor() public payable {}

    function claimPayment(uint256 amount, uint256 nonce, bytes memory signature) public {
        require(!usedNonces[nonce]);
        usedNonces[nonce] = true;

        // recreate the message signed by the client
        bytes32 message = prefixed(keccak256(abi.encodePacked(msg.sender, amount, nonce, this)));

        require(recoverSigner(message, signature) == owner);
        msg.sender.transfer(amount);
    }
}
