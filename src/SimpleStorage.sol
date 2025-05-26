// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0; //stating our version

contract SimpleStorage {
    uint256 public myfavouriteNumber;
    //  uint256[] listOfFavouriteNumbers;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person public pat = Person(67, "pat");

    Person[] public listOfPeople;

    function store(uint256 _favouriteNumber) public {
        myfavouriteNumber = _favouriteNumber;
    }
    // view (dont actually have to run or send a transaction only call them , we are just going to read the state of a ablockchain, adding view disallows any change to the state but allow reading from state )
    //pure (disallow updating state and disallow reading from state and storage )
    // if  a function marked view or pure is called by another function where state is being updated then a gas fees is charged to call the particular marked funtion

    function retreive() public view returns (uint256) {
        return myfavouriteNumber;
    }
    // calldata , memory , storGE
    // calldata are temporary variable that cant be modified , memory are temporary variable that can be modified , storage are permanent variable that can be modified
    // myFavouriteNumber was converted to storage variable as it was declared outside an function and in the contract

    mapping(string => uint256) public nameToFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
