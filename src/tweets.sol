// SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract tweets {
    address public owner;
    uint256 private counter;

    // runs when smart contract is deployed
    constructor(){
        counter=0;
        // msg - get with every interation with smart contact
        owner=msg.sender;
    }

    struct tweet {
        address tweeter;
        uint256 id;
        string tweetTxt;
        string tweetImg;
    }

    // whenever a need tweet is created, sends msg to blockchain that a new tweet is created
    event tweetCreated (
        address tweeter,
        uint256 id,
        string tweetTxt,
        string tweetImg
    );

    // to store created tweets - mapping counter & tweet
    mapping(uint256 => tweet) Tweets;

    // function to add tweet
    function addTweet (
        string memory tweetTxt,
        string memory tweetImg
    ) public payable {
        // if these conditions aren't meet, function won't run
        require(msg.value == (1 ether), "Please Submit 1 Matic");
        tweet storage newTweet = Tweets[counter];
        newTweet.tweetTxt = tweetTxt;
        newTweet.tweetImg = tweetImg;
        newTweet.tweeter = msg.sender;
        newTweet.id = counter;
        // emit event

        emit tweetCreated(
            msg.sender,
            counter,
            tweetTxt,
            tweetImg
        );
        counter++;

        // send ether to owner of smart contract
        payable(owner).transfer(msg.value);     
    }

    // allows anyone to go through the log of all tweets on the smart contact
    function getTweet(uint256 id) public view returns(
        string memory,
        string memory,
        address   // of person who made this tweet
    ){
        require(id < counter, "No such tweet");
        tweet storage t = Tweets[id];
        return(
            t.tweetTxt,
            t.tweetImg,
            t.tweeter
        );
    }

}