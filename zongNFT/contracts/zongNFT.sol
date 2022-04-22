// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ERC721Connector.sol';

contract zongNFT is ERC721Connector {

    // array to store our nfts
    string [] public _zongNFTArray;

    mapping(string => bool) _zongNFTExists;

    function mint(string memory _zongNFT) public {

        require(!_zongNFTExists[_zongNFT],
        'Error - zongNFT already exists');
        // this is deprecated - uint _id = zongNFT.push(_zongNFT);
        _zongNFTArray.push(_zongNFT);
        uint _id = _zongNFTArray.length - 1;

        // .push no longer returns the length but a ref to the added element
        _mint(msg.sender, _id);

        _zongNFTExists[_zongNFT] = true;

    }

    constructor() ERC721Connector('zongNFT','ZONG')
 {}

}


