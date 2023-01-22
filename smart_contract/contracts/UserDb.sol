
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract UserDb {
event createUser(string email, string password, string apt); // function def
event createAptAdmin(string email, string password, string apt); // function def
event updateUser(string email, uint256 option, string data); // function def

uint256 userCount; //global variable def
// uint256 aptAdminCount; //global variable def

// kullanıcı e-mail, şifre, kayıtlı apt.
    struct UserStruct { //struct def
        string email;
        string password;
        string apt;
    }

    // // Apt yöntecisi e-mail, şifre, apt.
    // struct AptAdminStruct { //struct def
    //     string email;
    //     string password;
    //     string apt;
    // }
    // nested mapping for different types of accounts
    mapping(uint256=>mapping(address=>UserStruct)) public membership; //mapping def

    // mapping(address => UserStruct) public userMapId; //mapping def
    // mapping(address => AptAdminStruct) public aptAdminMapId; //mapping def
    // //https://www.youtube.com/watch?v=4VV68ICAH0Q

    function addNewUserToBlockChain(address wallet,uint256 membershipId, string memory _email, string memory _password, string memory _apt) public { //function def
        userCount++; //incrementing user counter
        membership[membershipId][wallet].email = _email; //pushing user to array
        membership[membershipId][wallet].password = _password; //pushing user to array
        membership[membershipId][wallet].apt = _apt; //pushing user to array
        emit createUser(_email, _password, _apt); //emitting event
    }

    function updateUserToBlockChain(address wallet,uint256 membershipId,uint256 option, string memory data) public { //function def
        if (option == 1) {
            membership[membershipId][wallet].email = data; //pushing user to array
        } else if (option == 2) {
            membership[membershipId][wallet].password = data; //pushing user to array
        } else if (option == 3) {
           membership[membershipId][wallet].apt = data; //pushing user to array
        }
        emit updateUser(membership[membershipId][wallet].email, option, data); //emitting event
    }

    function removeUserFromBlockChain(address wallet,uint256 membershipId) public { //function def
        delete membership[membershipId][wallet]; //deleting user from array
    }




    // function addNewAptAdminToBlockChain(address userId, string memory _email, string memory _password, string memory _apt) public { //function def
    //     aptAdminCount++; //incrementing aptAdmin counter
    //     aptAdminMapId[userId].email = _email; //pushing aptAdmin to array
    //     aptAdminMapId[userId].password = _password; //pushing aptAdmin to array
    //     aptAdminMapId[userId].apt = _apt; //pushing aptAdmin to array
    //     emit createAptAdmin(_email, _password, _apt); //emitting event
    // }

    // function updateAptAdminToBlockChain(address userId,uint256 option, string memory data) public { //function def
    //     if (option == 1) {
    //         aptAdminMapId[userId].email = data; //pushing aptAdmin to array
    //     } else if (option == 2) {
    //         aptAdminMapId[userId].password = data; //pushing aptAdmin to array
    //     } else if (option == 3) {
    //         aptAdminMapId[userId].apt = data; //pushing aptAdmin to array
    //     }
    //     emit updateUser(aptAdminMapId[userId].email, option, data); //emitting event

    // }

    // // remove user from blockchain
    // function removeUserFromBlockChain(address userId) public { //function def
    //     delete userMapId[userId]; //deleting user from array
    // }

    // // remove aptAdmin from blockchain
    // function removeAptAdminFromBlockChain(address userId) public { //function def
    //     delete aptAdminMapId[userId]; //deleting aptAdmin from array
    // }

    // remove user nested

    

}