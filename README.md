# Tokenizer — KH42

## Overview

KH42 is a custom ERC-20 token developed as part of the Tokenizer project at 1337.

The project demonstrates how to create, deploy, and document a fungible token on an Ethereum-compatible blockchain using Solidity and Remix IDE.

## Token Information

| Property | Value |
|---|---|
| Token name | `khmessah42` |
| Symbol | `KH42` |
| Standard | ERC-20 |
| Blockchain | Ethereum |
| Network | Sepolia Testnet |
| Smart contract | `Khadija42` |
| Initial supply | 100,000 KH42 |
| Decimals | 18 |
| Compiler | Solidity 0.8.20 |
| License | MIT |

## Smart Contract

The smart contract is located in:

`code/Khadija42.sol`

It uses the OpenZeppelin ERC-20 implementation.

During deployment, the constructor creates a fixed initial supply of 100,000 KH42 and assigns all tokens to the deployer's address. The contract does not provide a public mint function.

## Deployment

The token was deployed to the **Sepolia Testnet** using Remix IDE and MetaMask.

**Contract address:**

`0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB`

- [View contract on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)
- [View KH42 token page](https://sepolia.etherscan.io/token/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)

The token page reports a maximum total supply of 100,000 KH42 and 18 decimal places.

### Verification

Remix reported successful verification through Routescan. Source-code verification on Etherscan was attempted separately but was not completed.

## Project Structure

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

## Tools and Technologies

- Solidity
- ERC-20
- OpenZeppelin Contracts
- Remix IDE
- MetaMask
- Ethereum Sepolia Testnet
- Etherscan

## Documentation

- `documentation/README.md` — explains the token, its behavior, and how to interact with it.
- `deployment/README.md` — records the deployment network, contract address, and deployment details.
- `code/Khadija42.sol` — contains the smart contract source code.

## Security and Limitations

KH42 is deployed on Sepolia for educational and testing purposes. Sepolia ETH is test currency and has no intended real-world monetary value.

This project is not deployed on Ethereum Mainnet and has not undergone a professional security audit.

## License

This project is released under the MIT License.
