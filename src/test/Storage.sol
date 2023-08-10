// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }

}
contract SStorage {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        assembly {
            sstore(0,num)
        }
    }

    /**
     * @dev Return value
     * @return num value of 'number'
     */
    function retrieve() public view returns (uint256 num){
       assembly {
        num := sload(0)
       }
    }

}
