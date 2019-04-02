pragma solidity ^0.4.10;

contract Casino is Mortal {
  uint minBet;
  uint houseEdge; // in %

  // true+amount or false+0
  event Won(bool _status, uint _amount);

  function Casino(uint _minBet, uint _houseEdge) payable public {
    require(_minBet > 0);
    require(_houseEdge <= 100);
    minBet = _minBet;
    houseEdge = _houseEdge;
  }

  function() public { //fallback
    revert();
  }
}
