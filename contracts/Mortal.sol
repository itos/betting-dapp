contract Mortal is Ownable {
  // Our access modifier is present, only the contract creator can use this function
  function kill() public Owned {
    selfdestruct(owner); // destoy contract and send back funds to owner
  }
}
