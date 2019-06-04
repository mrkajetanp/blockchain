pragma solidity >=0.4.0 <0.7.0;

/// @title A simulator for trees
/// @author Larry A. Gardner
/// @notice You can use this only for the most basic simulation
/// @dev All function calls have no side effects
contract Tree {
    /// @author Mary A. Botanist
    /// @notice Calculate tree age in years, rounded up, for live trees
    /// @dev Tetearing algorithm could increase precision
    /// @param rings The number of rings from a sample
    /// @returns Age in years, rounded up
    function age(uint256 rings) external pure returns (uint256) {
        return rings + 1;
    }
}
