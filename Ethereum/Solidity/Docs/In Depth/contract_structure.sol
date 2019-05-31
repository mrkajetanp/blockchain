pragma solidity >=0.4.0 <0.7.0;

contract SimpleStorage {
    // State variable
    uint storedData;

    function bid() public payable {
        // function ..
    }
}

contract Purchase {
    address public seller;

    enum State { Created, Locked, Inactive }

    modifier onlySeller() {
        require(msg.sender == seller, "Only seller can call this.");
        _;
    }

    // Modifier usage..
    function abort() public view onlySeller {
        //
    }
}

contract Ballot {
    struct Voter {
        uint weight;
        bool voted;
        address delegate;
        uint vote;
    }
}
