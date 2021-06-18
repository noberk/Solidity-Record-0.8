
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.5;

interface GlobalInterface {
/** hash of the given block when blocknumber is one of the 256 most recent blocks; otherwise returns zero */
blockhash(uint blockNumber) returns (bytes32);
/**current chain id */
block.chainid (uint); 
/**current block miner’s address */
block.coinbase (address payable);
/** current block difficulty */
block.difficulty (uint);
/**current block gaslimit */
block.gaslimit (uint);
/**current block number */
block.number (uint);
/** current block timestamp as seconds since unix epoch */
block.timestamp (uint);
/** remaining gas */
gasleft() returns (uint256)；
/**complete calldata */
msg.data (bytes calldata)；
/** sender of the message (current call) */
msg.sender (address)；
/**first four bytes of the calldata (i.e. function identifier) */
msg.sig (bytes4)；
/** number of wei sent with the message */
msg.value (uint)；
/**gas price of the transaction */
tx.gasprice (uint)； 
/**sender of the transaction (full call chain) */
tx.origin (address)；
}

