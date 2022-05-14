// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

/** 
 *  SourceUnit: /Users/user/Documents/Github/learn/block/SimpleStorage.sol
*/

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}

contract Community {
    struct User {
        address addr;
        bytes32 name;
        uint age;
    }

    User[] users;

    function addUser(address addr, bytes32 name, uint age) public {
        users.push(User({addr: addr, name: name, age: age}));
    }

    function getUser(uint index) public view returns (address, bytes32, uint) {
        return (users[index].addr, users[index].name, users[index].age);
    }
}