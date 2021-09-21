// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

interface IHermes {
    //da a lista dos hermes conectado

    //Hermes get
    function GetHermesName() external view returns (string memory _CompanyName);

    function GetSomeUsefullInfo() external view returns (string memory _Infos);

    function GetHermeses()
        external
        view
        returns (string[] memory _HermesConected);

    function GetHermesEcomerces()
        external
        view
        returns (string[] memory _Ecomerces);

    function GetHermesMarketplaces()
        external
        view
        returns (string[] memory _Marketplaces);

    //EComerce Side

    //A separeted SmartContract for the Ecomerce
    function RequestEcomerceConection(address _EcomerceAddressContract)
        external
        returns (bool success);

    function RequestEcomerceSend(
        address _ProductAddress,
        string memory _SomeNecessaryInformation,
        string memory _Destination
    ) external returns (bool success);

    function GetProductSendRequestStatus(address _ProductAddress)
        external
        returns (string memory _ProductStatus);

    //get product information after been send
    function GetProductTransportacionInfo(address _TransportationContract)
        external
        returns (string memory _AllInfo);

    //send the product using others fullfillment centers companys
    function RequestEcomerceSendWithHermeses(
        address _ProductAddress,
        string memory _SomeNecessaryInformation,
        string memory _Destination
    ) external returns (bool success);
}
