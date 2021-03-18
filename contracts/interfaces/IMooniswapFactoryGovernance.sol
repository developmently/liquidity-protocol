// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;


interface IMooniswapFactoryGovernance {
    function shareParameters() external view returns(uint256 referralShare, uint256 governanceShare, address governanceWallet, address referralFeeReceiver);
    function defaults() external view returns(uint256 defaultFee, uint256 defaultSlippageFee);

    function defaultFee() external view returns(uint256);
    function defaultSlippageFee() external view returns(uint256);

    function virtualDefaultFee() external view returns(uint104, uint104, uint48);
    function virtualDefaultSlippageFee() external view returns(uint104, uint104, uint48);

    function referralShare() external view returns(uint256);
    function governanceShare() external view returns(uint256);
    function governanceWallet() external view returns(address);
    function feeCollector() external view returns(address);

    function isFeeCollector(address) external view returns(bool);
    function isActive() external view returns (bool);
}
