// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Transactions {
    uint256 transactionCounter;
    TransferStruct[] transactions;

    event Transfer(
        address from,
        address to,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    constructor() {}

    function addToBlockchain(
        address payable _to,
        uint256 _amount,
        string memory _message,
        string memory _keyword
    ) public {
        transactionCounter += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                _to,
                _amount,
                _message,
                block.timestamp,
                _keyword
            )
        );

        emit Transfer(
            msg.sender,
            _to,
            _amount,
            _message,
            block.timestamp,
            _keyword
        );
    }

    function getTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionsCount() public view returns (uint256) {
        return transactionCounter;
    }
}
