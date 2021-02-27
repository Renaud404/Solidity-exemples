// SPDX-License-Identifier: GPL-3.
pragma solidity >=0.4.22 <0.9.0;

contract Message {
 
    string lemessage;
 
    constructor(string memory _messageoriginal) {
        lemessage = _messageoriginal;
    }
 
   function DefinirMessage(string memory _nouveaumessage) public{
       lemessage = _nouveaumessage;
   }
 
    function VoirMessage() public view returns (string memory){  
        return lemessage;
    }
    
    function Detruire() public{  
        selfdestruct(msg.sender);
    }
    
}
