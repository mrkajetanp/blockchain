// Version pragma
pragma solidity >=0.4.25 <0.6.0;

// Import
import * as symbolName from "filename";

contract ShapeCalculator {
    /** @dev Calculates a rectangle's surface and perimeter
      * @param w Width of the rectangle
      * @param h Height of the rectangle
      * @returns s The calculated surface
      * @returns p The calculated perimeter
      */
    function rectangle(uint w, uint h) public pure returns (uint s, uint p) {
        s = w * h;
        p = 2 * (w + h);
    }
}
