// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.8.13 <0.9.0;

import {IAccountKeychain} from "./interfaces/IAccountKeychain.sol";
import {IAddressRegistry} from "./interfaces/IAddressRegistry.sol";
import {IFeeManager} from "./interfaces/IFeeManager.sol";
import {ISignatureVerifier} from "./interfaces/ISignatureVerifier.sol";
import {IMIP403Registry} from "./interfaces/IMIP403Registry.sol";
import {IMIP20Factory} from "./interfaces/IMIP20Factory.sol";
import {IMIP20RewardsRegistry} from "./interfaces/IMIP20RewardsRegistry.sol";
import {IStablecoinDEX} from "./interfaces/IStablecoinDEX.sol";
import {IValidatorConfig} from "./interfaces/IValidatorConfig.sol";
import {IValidatorConfigV2} from "./interfaces/IValidatorConfigV2.sol";
import {INonce} from "./interfaces/INonce.sol";

/// @title Standard Precompiles Library for Magnus
///
/// @notice <https://github.com/magnusxyz/magnus/blob/main/crates/contracts/src/precompiles/mod.rs>
library StdPrecompiles {
    address internal constant MIP_FEE_MANAGER_ADDRESS = 0xfeEC000000000000000000000000000000000000;
    address internal constant MIP403_REGISTRY_ADDRESS = 0x403c000000000000000000000000000000000000;
    address internal constant MIP20_FACTORY_ADDRESS = 0x20Fc000000000000000000000000000000000000;
    address internal constant MIP20_REWARDS_REGISTRY_ADDRESS = 0x2100000000000000000000000000000000000000;
    address internal constant STABLECOIN_DEX_ADDRESS = 0xDEc0000000000000000000000000000000000000;
    address internal constant NONCE_ADDRESS = 0x4e4F4E4345000000000000000000000000000000;
    address internal constant VALIDATOR_CONFIG_ADDRESS = 0xCccCcCCC00000000000000000000000000000000;
    address internal constant ACCOUNT_KEYCHAIN_ADDRESS = 0xaAAAaaAA00000000000000000000000000000000;
    address internal constant VALIDATOR_CONFIG_V2_ADDRESS = 0xCcCCCCcC00000000000000000000000000000001;
    address internal constant ADDRESS_REGISTRY_ADDRESS = 0xfDC0000000000000000000000000000000000000;
    address internal constant SIGNATURE_VERIFIER_ADDRESS = 0x5165300000000000000000000000000000000000;

    IFeeManager internal constant TIP_FEE_MANAGER = IFeeManager(MIP_FEE_MANAGER_ADDRESS);
    IMIP403Registry internal constant MIP403_REGISTRY = IMIP403Registry(MIP403_REGISTRY_ADDRESS);
    IMIP20Factory internal constant MIP20_FACTORY = IMIP20Factory(MIP20_FACTORY_ADDRESS);
    IMIP20RewardsRegistry internal constant MIP20_REWARDS_REGISTRY =
        IMIP20RewardsRegistry(MIP20_REWARDS_REGISTRY_ADDRESS);
    IStablecoinDEX internal constant STABLECOIN_DEX = IStablecoinDEX(STABLECOIN_DEX_ADDRESS);
    INonce internal constant NONCE_PRECOMPILE = INonce(NONCE_ADDRESS);
    IValidatorConfig internal constant VALIDATOR_CONFIG = IValidatorConfig(VALIDATOR_CONFIG_ADDRESS);
    IAccountKeychain internal constant ACCOUNT_KEYCHAIN = IAccountKeychain(ACCOUNT_KEYCHAIN_ADDRESS);
    IValidatorConfigV2 internal constant VALIDATOR_CONFIG_V2 = IValidatorConfigV2(VALIDATOR_CONFIG_V2_ADDRESS);
    IAddressRegistry internal constant ADDRESS_REGISTRY = IAddressRegistry(ADDRESS_REGISTRY_ADDRESS);
    ISignatureVerifier internal constant SIGNATURE_VERIFIER = ISignatureVerifier(SIGNATURE_VERIFIER_ADDRESS);
}
