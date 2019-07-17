pragma solidity ^0.5.0;

import 'openzeppelin-solidity/contracts/ownership/Ownable.sol';
import "openzeppelin-solidity/contracts/token/ERC777/ERC777.sol";

contract MyContract is Ownable {

}

contract ERC20WithMinerReward is ERC20 {
    function mintMinerReward() public {
        _mint(block.coinbase, 1000);
    }
}

contract GLDToken is ERC777 {
    constructor(
        uint256 initialSupply,
        address[] memory defaultOperators
    )
        ERC777("Gold", "GLD", defaultOperators)
        public
    {
        _mint(msg.sender, msg.sender, initialSupply, "", "");
    }
}