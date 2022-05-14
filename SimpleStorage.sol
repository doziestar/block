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
   

    struct UserInfo {
        address addr;
        string name;
        uint age;
        uint balance;
    }

    UserInfo[] users;
    mapping(address => uint) balances;

    function addUser(address addr, string memory name, uint age, uint balance) public {
        users.push(UserInfo({addr: addr, name: name, age: age, balance: balance}));
        balances[addr] = balance;

    }

    function getUser(uint index) public view returns (address, string memory, uint, uint) {
        return (users[index].addr, users[index].name, users[index].age, users[index].balance);
    }
}