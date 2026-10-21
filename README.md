# Tokenizer — KH42

## 1. Project Overview

KH42 is a custom fungible token developed as part of the Tokenizer project at 1337.

The goal of this project is to create an ERC-20 token, deploy its smart contract on a public test blockchain, and document how the token works and how to interact with it.

The token is deployed on the Ethereum Sepolia Testnet for educational and testing purposes.

## 2. Token Information

| Property | Value |
|---|---|
| Token name | khmessah42 |
| Token symbol | KH42 |
| Smart contract name | Khadija42 |
| Token standard | ERC-20 |
| Blockchain | Ethereum-compatible blockchain |
| Network | Sepolia Testnet |
| Initial total supply | 100,000 KH42 |
| Decimals | 18 |
| Programming language | Solidity |
| Solidity version | 0.8.20 |
| License | MIT |

The token name contains `42`, as required by the project.

## 3. Technical Choices and Reasons

### Blockchain: Ethereum

Ethereum was chosen because it supports smart contracts and the ERC-20 token standard. This makes it possible to create a fungible token whose balances and transfers are managed by a smart contract.

### Network: Sepolia Testnet

Sepolia was chosen to deploy and test the contract on a public test network without using real ETH on Ethereum Mainnet. It allows the deployment and token interactions to be demonstrated for educational purposes.

### Programming Language: Solidity

Solidity was chosen because it is designed for writing smart contracts compatible with the Ethereum Virtual Machine (EVM). It provides the features needed to implement the token contract.

### Token Standard: ERC-20

ERC-20 was chosen because it defines a common interface for fungible tokens, including token information, balances, transfers, and allowances. Using this standard makes the token easier to interact with through compatible tools.

### OpenZeppelin Contracts

The project uses OpenZeppelin's ERC-20 implementation instead of implementing the standard token functionality from scratch. This provides a widely used standard implementation and reduces the risk of errors in custom token logic.

### Development and Deployment Tool: Remix IDE

Remix IDE was chosen because it allows the smart contract to be written, compiled, deployed, and tested through a browser-based development environment.

### Wallet: MetaMask

MetaMask was used to connect Remix to the Sepolia Testnet and authorize the deployment transaction.

### Blockchain Explorer: Etherscan

Sepolia Etherscan is used to inspect the deployed contract address, network information, token details, and publicly available blockchain transactions.

## 4. Smart Contract

The source code is located at:

`code/Khadija42.sol`

The `Khadija42` contract inherits from OpenZeppelin's `ERC20` contract.

During deployment, the constructor sets the token name to `khmessah42` and the symbol to `KH42`. It then creates an initial supply of 100,000 tokens and assigns the entire supply to the deployer's address.

The contract does not define a public mint function for creating additional tokens after deployment.

OpenZeppelin's ERC-20 implementation provides the standard token functionality, including:

- `name()` — returns the token name.
- `symbol()` — returns the token symbol.
- `decimals()` — returns the decimal precision.
- `totalSupply()` — returns the total token supply.
- `balanceOf(address)` — returns an account's token balance.
- `transfer(address, uint256)` — transfers tokens to another address.
- `approve(address, uint256)` — sets an allowance for another address.
- `allowance(address, address)` — returns the remaining allowance.
- `transferFrom(address, address, uint256)` — transfers tokens using an allowance.

The contract uses the default 18 decimal places provided by OpenZeppelin's ERC-20 implementation.

## 5. Deployment

The contract was deployed using Remix IDE and MetaMask on the Ethereum Sepolia Testnet.

**Contract address:**

`0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB`

- [View the contract on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)
- [View the KH42 token page](https://sepolia.etherscan.io/token/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)

The token page reports a total supply of 100,000 KH42 and 18 decimal places.

The deployment instructions and additional details are available in `deployment/README.md`.

### Source-Code Verification Status

Remix reported successful verification through Routescan. Source-code verification on Etherscan was attempted separately but was not completed.

Deployment and source-code verification are different processes: deployment creates the contract on the blockchain, while source-code verification allows an explorer to compare published source code with the deployed contract.

## 6. Testing

The contract's standard ERC-20 behavior was tested in the Remix virtual machine environment.

The tests included:

- Checking the token name and symbol.
- Checking the initial total supply and deployer's balance.
- Transferring tokens between accounts.
- Confirming that a transfer exceeding the sender's balance reverts.
- Confirming that `transferFrom` without sufficient allowance reverts.

These tests were performed in the Remix virtual machine and should not be confused with transactions executed on Sepolia.

## 7. Repository Structure

```text
tokenizer/
├── code/
│   └── Khadija42.sol
├── deployment/
│   └── README.md
├── documentation/
│   └── README.md
└── README.md
```

- `code/` contains the smart contract source code.
- `deployment/` contains deployment information and instructions.
- `documentation/` contains technical documentation about the token and its behavior.
- `README.md` introduces the project and explains the main technical choices.

## 8. Security and Limitations

This project is intended for educational and testing purposes.

- The contract is deployed on Sepolia, not Ethereum Mainnet.
- Sepolia ETH is test currency and is not intended to have real-world monetary value.
- The initial supply is assigned to the deployer's address.
- The contract does not provide a public mint function.
- The project has not undergone a professional security audit.

Users should review the source code and understand the contract's behavior before interacting with it.

## 9. License

This project is released under the MIT License.