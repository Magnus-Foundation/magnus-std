// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.8.13 <0.9.0;

import {IMIP20} from "./interfaces/IMIP20.sol";

/// @title Standard Tokens Library for Magnus
///
/// @notice <https://github.com/magnusxyz/magnus/blob/main/crates/contracts/src/precompiles/mod.rs>
/// @notice <https://github.com/magnusxyz/magnus/blob/98ad3e3e2c400e9f2adf6da6e8a3523669f7c558/xtask/src/genesis_args.rs#L168-L200>
library StdTokens {
    address internal constant MAGNUS_USD_ADDRESS = 0x20C0000000000000000000000000000000000000;
    address internal constant ALPHA_USD_ADDRESS = 0x20C0000000000000000000000000000000000001;
    address internal constant BETA_USD_ADDRESS = 0x20C0000000000000000000000000000000000002;
    address internal constant THETA_USD_ADDRESS = 0x20C0000000000000000000000000000000000003;

    IMIP20 internal constant MAGNUS_USD = IMIP20(MAGNUS_USD_ADDRESS);
    IMIP20 internal constant ALPHA_USD = IMIP20(ALPHA_USD_ADDRESS);
    IMIP20 internal constant BETA_USD = IMIP20(BETA_USD_ADDRESS);
    IMIP20 internal constant THETA_USD = IMIP20(THETA_USD_ADDRESS);
}
