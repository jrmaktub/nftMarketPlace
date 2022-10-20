
// pragma solidity ^0.8.4;

// import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

// contract NFT is ERC721URIStorage {
//     //state variables decalred within a contract, but set outside of any functions within that contract
//     //only functions within the contract can modify state variables. 
//     //state variables are stored in the blockchain

//     //tokenCount corresponds to ID of newly minted token
//     uint public tokenCount;

//     constructor() ERC721("DApp NFT", "DAPP"){}

//     function mint(string memory _tokenURI) external returns(uint){
//         tokenCount ++;
//         //safemint inherited from 721 contract
//         //global msg.sender first argument is the address we're minting for
//        //second argument is the id taken from the tokenCount
//         _safeMint(msg.sender, tokenCount);
//         //sets the metadata for the newly minted NFT
//         _setTokenURI(tokenCount, _tokenURI);
//         return(tokenCount);

//     }
// }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint public tokenCount;
    constructor() ERC721("DApp NFT", "DAPP"){}
    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount ++;
        _safeMint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI);
        return(tokenCount);
    }
}