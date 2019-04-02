pragma solidity ^0.4.10;

contract Ownable {
  address owner;
  function Ownable() public {
    // Set owner to who creates the contract
    owner = msg.sender;
  }

  // Access modifier
  modifier Owned {
    require (msg.sender == owner);
    _;
  }
}
