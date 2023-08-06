# Soladyfi

An open source tool for converting big gassy babies into sleek fully evolved warrior monks

### Getting started

All you need to do is interact with the `Soladyfi's` `soladyfi()` function.

**This function turns ugly contract bytecode into a more beautiful and perfected form of ones and zeros**

### Example

#### Ugly boy

```
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
```

#### Ugly boy post baptism

```
contract StorageAssembly {

    uint256 number;

    function store(uint x) public {
         assembly {
            sstore(0, x)
        }
    }

    function retrieve() public view returns(uint256 result) {
        assembly {
            result := sload(0)
        }
    }
}
```
