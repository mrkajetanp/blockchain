pragma solidity >=0.4.0 <0.7.0;

library GetCode {
    function at(address _addr) public view returns (bytes memory o_code) {
        assembly {
            // retrieve the size of the code
            let size := extcodesize(_addr)
            // allocate output byte array
            o_code := mload(0x40)
            // new memory end including padding
            mstore(0x40, add(o_code, and(add(add(size, 0x20), 0x1f), not(0x1f))))
            // store length in memory
            mstore(o_code, size)
            // retrieve the code
            extcodecopy(_addr, add(o_code, 0x20), 0, size)
        }
    }
}
