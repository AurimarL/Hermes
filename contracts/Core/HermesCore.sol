// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

//Hermes Core
contract HermesCore {
    address Owner;
    string CompanyName;
    string SomeInfo;
    string SomeUsefullInfo;
    bool Trading; //if is working
    string[] DeliveryLocations;
    //share next problable delivery point only for Hermeses
    
    //agora vou dormir

    //Hermeses are other Hermes contract that are conected to this contract
    address[] Hermeses;
    uint256 HermesesCount;
    mapping(address => bool) HermesesStatus;

    function AllowHermes() public {
        require(msg.sender == Owner);
        require(HermesesStatus[msg.sender] == false);

        Hermeses[HermesesCount] = msg.sender;
        HermesesStatus[msg.sender] = true;
    }

    //fullfill the product by your own means
    function SendProduct() public pure returns(bool) {
        //create contract for the track of the product
        return true;
    }

    //get use of help from other fullfillment centers on delivery
    function SendProductWithHermeses(address[] memory _HermesesAdress) public {

    }


}
