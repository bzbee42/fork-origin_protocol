// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface ICurveLiquidityGaugeV6 {
    event ApplyOwnership(address admin);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );
    event CommitOwnership(address admin);
    event Deposit(address indexed provider, uint256 value);
    event SetGaugeManager(address _gauge_manager);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event UpdateLiquidityLimit(
        address indexed user,
        uint256 original_balance,
        uint256 original_supply,
        uint256 working_balance,
        uint256 working_supply
    );
    event Withdraw(address indexed provider, uint256 value);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function add_reward(address _reward_token, address _distributor) external;

    function allowance(address arg0, address arg1)
        external
        view
        returns (uint256);

    function approve(address _spender, uint256 _value) external returns (bool);

    function balanceOf(address arg0) external view returns (uint256);

    function claim_rewards() external;

    function claim_rewards(address _addr) external;

    function claim_rewards(address _addr, address _receiver) external;

    function claimable_reward(address _user, address _reward_token)
        external
        view
        returns (uint256);

    function claimable_tokens(address addr) external returns (uint256);

    function claimed_reward(address _addr, address _token)
        external
        view
        returns (uint256);

    function decimals() external view returns (uint256);

    function decreaseAllowance(address _spender, uint256 _subtracted_value)
        external
        returns (bool);

    function deposit(uint256 _value) external;

    function deposit(uint256 _value, address _addr) external;

    function deposit(
        uint256 _value,
        address _addr,
        bool _claim_rewards
    ) external;

    function deposit_reward_token(address _reward_token, uint256 _amount)
        external;

    function deposit_reward_token(
        address _reward_token,
        uint256 _amount,
        uint256 _epoch
    ) external;

    function factory() external view returns (address);

    function future_epoch_time() external view returns (uint256);

    function increaseAllowance(address _spender, uint256 _added_value)
        external
        returns (bool);

    function inflation_rate() external view returns (uint256);

    function integrate_checkpoint() external view returns (uint256);

    function integrate_checkpoint_of(address arg0)
        external
        view
        returns (uint256);

    function integrate_fraction(address arg0) external view returns (uint256);

    function integrate_inv_supply(uint256 arg0) external view returns (uint256);

    function integrate_inv_supply_of(address arg0)
        external
        view
        returns (uint256);

    function is_killed() external view returns (bool);

    function kick(address addr) external;

    function lp_token() external view returns (address);

    function manager() external view returns (address);

    function name() external view returns (string memory);

    function nonces(address arg0) external view returns (uint256);

    function period() external view returns (int128);

    function period_timestamp(uint256 arg0) external view returns (uint256);

    function permit(
        address _owner,
        address _spender,
        uint256 _value,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external returns (bool);

    function reward_count() external view returns (uint256);

    function reward_integral_for(address arg0, address arg1)
        external
        view
        returns (uint256);

    function reward_tokens(uint256 arg0) external view returns (address);

    function rewards_receiver(address arg0) external view returns (address);

    function salt() external view returns (bytes32);

    function set_gauge_manager(address _gauge_manager) external;

    function set_killed(bool _is_killed) external;

    function set_reward_distributor(address _reward_token, address _distributor)
        external;

    function set_rewards_receiver(address _receiver) external;

    function symbol() external view returns (string memory);

    function totalSupply() external view returns (uint256);

    function transfer(address _to, uint256 _value) external returns (bool);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool);

    function user_checkpoint(address addr) external returns (bool);

    function version() external view returns (string memory);

    function withdraw(uint256 _value) external;

    function withdraw(uint256 _value, bool _claim_rewards) external;

    function working_balances(address arg0) external view returns (uint256);

    function working_supply() external view returns (uint256);
}
