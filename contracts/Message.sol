pragma solidity >=0.4.22 <0.9.0;

contract Message {
 
    string lemessage;
 
    constructor(string memory _messageoriginal) public {
        lemessage = _messageoriginal;
    }
 
   function definirMessage(string memory _nouveaumessage) public{
       lemessage = _nouveaumessage;
   }
 
    function voirMessage() public view returns (string memory){  
        return lemessage;
    }
 
}
