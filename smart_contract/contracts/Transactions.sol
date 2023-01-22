// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions { //class definition
    uint256 transactionCount; //global variable def


    event Transfer(address from, address receiver,uint amount, string message, uint256 timestamp, string keyword);  // function def
    
    

    struct TransferStruct { //struct def
        address from;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    
    
    TransferStruct[] transactions; //declearing array of transactions
  
 



    function addToBlockChain(address _receiver, uint _amount, string memory _message, string memory _keyword) public { //function def
        transactionCount++; //incrementing transaction counter
        transactions.push(TransferStruct(msg.sender , _receiver, _amount, _message, block.timestamp, _keyword)); //pushing transaction to array, msg.sender is the sender of the transaction.
        emit Transfer(msg.sender,_receiver, _amount, _message, block.timestamp, _keyword); //emitting event
    }

    
    function getAllTransactions() public view returns (TransferStruct[] memory) { //function def
       // return all transactions
       return transactions;
    }

    function getTransactionCount() public view returns (uint256) { //function def
        //return transactionCount

        return transactionCount;
         
    }




}