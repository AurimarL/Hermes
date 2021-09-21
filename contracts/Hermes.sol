// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;
import "./IHermes.sol";
import "./Core/HermesCore.sol";
import "./Ecomerce/HermesEcomerce.sol";
import "./Marketplace/HermesMarketplace.sol";

//this contract will use all the types of 'extension' of hermes
abstract contract Hermes is HermesCore, HermesEcomerce, HermesMarketplace {
    
























    //list of some mapping related to the conecoes
    /* mapping(address => bool) HermesesActive;
    mapping(address => bool) EcomercesActive;
    mapping(address => bool) MarketplacesActive;*/



}
