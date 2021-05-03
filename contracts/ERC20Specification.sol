// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

// Abstract contract for the full ERC 20 Token standard
// https://github.com/ethereum/EIPs/issues/20

abstract contract ERC20Specification {

    /// returns balance of the _owner
    /// @param _owner The address from which the balance will be retrieved
    /// @return balance The balance
   function balanceOf(address _owner) public view virtual returns (uint256 balance);

    /// transfers specified number of tokens from=msg.sender to=_to
    /// @notice send `_value` token to `_to` from `msg.sender`
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return success Whether the transfer was successful or not
    function transfer(address _to, uint256 _value) public virtual returns (bool success);

    /// this requires implementation of the allowance & approve
    /// @notice send `_value` token to `_to` from `_from` on the condition it is approved by `_from`
    /// @param _from The address of the sender
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return success Whether the transfer was successful or not
    function transferFrom(address _from, address _to, uint256 _value) public virtual returns (bool success);

    /// msg.sender approves _spender for spending _value of his tokens
    /// @notice `msg.sender` approves `_spender` to spend `_value` tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @param _value The amount of tokens to be approved for transfer
    /// @return success Whether the approval was successful or not
    function approve(address _spender, uint256 _value) public virtual returns (bool success);

    /// checks the max _spender can spend _owner tokens
    /// @param _owner The address of the account owning tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @return remaining of remaining tokens allowed to spent
    function allowance(address _owner, address _spender) public virtual view returns (uint256 remaining);
}