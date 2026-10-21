# KH42 Token — Technical Documentation

## 1. Introduction

KH42 is an ERC-20 fungible token implemented in Solidity and deployed on the Ethereum Sepolia Testnet.

The project demonstrates token creation, deployment, and interaction with a smart contract using Remix IDE and MetaMask.

## 2. Token Specifications

| Property | Value |
|---|---|
| Token name | `khmessah42` |
| Symbol | `KH42` |
| Standard | ERC-20 |
| Contract name | `Khadija42` |
| Network | Sepolia Testnet |
| Initial supply | 100,000 KH42 |
| Decimals | 18 |
| Solidity version | `^0.8.20` |
| License | MIT |

## 3. Smart Contract Architecture

The contract is located at `code/Khadija42.sol`.

It inherits from OpenZeppelin's `ERC20` implementation.

The constructor initializes the token name and symbol, then mints the initial supply to the address that deploys the contract:

`_mint(msg.sender, 100_000 * 10 ** decimals());`

The ERC-20 implementation provides standard token functionality, including balance queries, transfers, and allowance-based transfers.

There is no custom public mint function.

## 4. Token Supply and Decimals

The token uses 18 decimal places, as defined by the inherited OpenZeppelin ERC-20 implementation.

The initial supply is 100,000 KH42. Internally, the amount is represented in the smallest token units:

`100000 × 10^18`

All initial tokens are assigned to the deployer's address.

## 5. Deployment

The contract was deployed using Remix IDE with MetaMask connected to Ethereum Sepolia Testnet.

**Contract address:**

`0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB`

- [Contract on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)
- [KH42 token tracker](https://sepolia.etherscan.io/token/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)

Sepolia is a test network. This deployment is not an Ethereum Mainnet deployment.

## 6. Interacting with the Contract

The contract can be accessed through Remix or a compatible Ethereum wallet connected to Sepolia.

Common ERC-20 operations include:

- `name()` — returns the token name.
- `symbol()` — returns the token symbol.
- `decimals()` — returns the number of decimal places.
- `totalSupply()` — returns the total supply in the smallest token units.
- `balanceOf(address)` — returns the balance of an address.
- `transfer(address, amount)` — transfers tokens to another address.
- `approve(address, amount)` — authorizes a spender to use a specified amount.
- `allowance(owner, spender)` — checks the remaining approved amount.
- `transferFrom(owner, recipient, amount)` — transfers tokens using an allowance.

Amounts supplied to contract functions are expressed in the smallest token units. For example, 1 KH42 corresponds to `10^18` units.

## 7. Testing

During local Remix VM testing, the following behaviors were checked:

- Token name and symbol returned the expected values.
- Initial supply and deployer's balance matched 100,000 KH42.
- A transfer of 100 KH42 succeeded.
- A transfer exceeding the sender's balance reverted.
- A `transferFrom` operation without sufficient allowance reverted.

These were local simulated tests, separate from the Sepolia deployment.

## 8. Verification Status

Remix reported successful contract verification through Routescan.

An attempt to verify the source code directly through Etherscan was unsuccessful because the single-file verification form could not resolve the OpenZeppelin import. Etherscan source-code verification remains incomplete.

## 9. Security and Limitations

- The token is deployed on Sepolia for testing and educational purposes.
- Sepolia ETH is test currency, not real-money ETH.
- The contract does not expose a custom public mint function.
- The project has not undergone a professional security audit.
- Users should verify the network and contract address before interacting with the token.

## 10. License

The project uses the MIT License.
