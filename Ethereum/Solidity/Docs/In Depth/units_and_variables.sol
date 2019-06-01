pragma solidity >=0.4.0 <0.7.0;

contract UnitsAndVariables {

    function etherUnits() {
        assert(1 wei == 1);
        assert(1 szabo == 1e12);
        assert(1 finney == 1e15);
        assert(1 ether == 1e18);
    }

    function timeUnits() {
        assert(1 == 1 seconds);
        assert(1 minutes == 60 seconds);
        assert(1 hours == 60 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
    }

    function f(uint start, uint daysAfter) public {
        if (now >= start + daysAfter * 1 days) {
            // ...
        }
    }

    function blockTransactionProperties() {
        block.coinbase;
        block.difficulty;
        block.number;
        gasleft();
        tx.gasprice;
        tx.origin;
    }

    function mathAndCrypto() {
        addmod(10, 15, 3); // (10 + 15) % 3
        mulmod(10, 15, 3); // (10 * 15) % 3
        keccak256("abc");
        sha256("abc");
        ripemd160("abc");
    }

}
