// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract memoryPoint
{
    int value;      //Global variable

    struct Memory{
        int value;    
        string name;           //Structure named Memory
    }

    Memory[] public arr;  //Array arr declared of type struct Memory

    mapping (string => int)public map;    //string is same as string but bounded

    function setMemory(int a)public {
        value = a;              //value is set
    }

    function getMemory() public view returns (int){
        return value;           //value is returned
    }

    function addMemory(string memory s, int a)public {
        arr.push(Memory(a,s));
        map[s] = a;              //Array elements are pushed in the form of dictionary
    }
}
