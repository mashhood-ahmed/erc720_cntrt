// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract OkbaNFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenID;


    constructor() ERC721("Okba Bin Nafe Image NFT", "OkbaToken") {

    }

    function awardItem(address _player, string memory _tokenURI) public returns(uint256) {
        _tokenID.increment();
        uint256 tokenID = _tokenID.current();
        _mint(_player, tokenID);
        _setTokenURI(tokenID, _tokenURI);
        return tokenID;
    }

}