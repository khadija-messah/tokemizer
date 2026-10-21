# Deployment — KH42 Token

## 1. Network and Token Information

- **Blockchain:** Ethereum
- **Network:** Sepolia Testnet
- **Contract name:** `Khadija42`
- **Token name:** `khmessah42`
- **Token symbol:** `KH42`
- **Token standard:** ERC-20
- **Initial supply:** 100,000 KH42
- **Decimals:** 18
- **Solidity compiler version:** 0.8.20

## 2. Deployed Contract

**Contract address:**

`0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB`

- [View contract on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)
- [View KH42 token page](https://sepolia.etherscan.io/token/0x5E17FEa81f24248b7CA4268C3e36DAED4cf63ADB)

## 3. Deployment Tools

The contract was deployed using:

- **Remix IDE:** used to compile, deploy, and interact with the smart contract.
- **MetaMask:** used to connect Remix to the Sepolia network, select the deploying account, and authorize the deployment transaction.
- **Sepolia Testnet:** used as the public test blockchain.
- **Sepolia Etherscan:** used to inspect the deployed contract and token information.

Sepolia ETH was used to pay the test-network transaction fee. No real ETH on Ethereum Mainnet was required.

## 4. Prerequisites

Before deploying the contract, the following are required:

- A web browser with access to Remix IDE.
- MetaMask installed and configured.
- A MetaMask account with Sepolia selected.
- A sufficient balance of Sepolia test ETH to pay the deployment transaction fee.
- Access to the OpenZeppelin Contracts dependency used by the source code.

## 5. Deployment Instructions

### Step 1 — Open Remix IDE

Open [Remix IDE](https://remix.ethereum.org/) in a web browser.

### Step 2 — Load the contract

Open or create the file:

`code/Khadija42.sol`

Copy the contract source code into Remix if it is not already available there.

### Step 3 — Install or resolve the dependency

The contract imports the OpenZeppelin ERC-20 implementation:

`@openzeppelin/contracts/token/ERC20/ERC20.sol`

Make sure the corresponding OpenZeppelin Contracts dependency is available to Remix so that the import can be resolved during compilation.

### Step 4 — Compile the contract

In the Solidity Compiler panel:

1. Select compiler version `0.8.20`, or a compatible version satisfying the source pragma.
2. Compile `Khadija42.sol`.
3. Check that compilation completes without errors.

### Step 5 — Connect MetaMask

In Remix, open the Deploy & Run Transactions panel.

1. Select the injected provider connected to MetaMask.
2. Confirm that MetaMask is connected to the Sepolia Testnet.
3. Check that the selected account is the intended deploying account.

### Step 6 — Deploy the contract

1. Select `Khadija42` as the contract to deploy.
2. Confirm that the constructor does not require any parameters.
3. Click **Deploy**.
4. Review and confirm the transaction in MetaMask.
5. Wait for the transaction to be confirmed on Sepolia.

### Step 7 — Record the new contract address

After deployment, copy the contract address displayed by Remix. Open Sepolia Etherscan and search for this address to inspect the deployed contract.

**Important:** deploying the contract again creates a new contract instance with a different address. The address documented in this file refers to the existing deployment.

## 6. Token Distribution

The constructor initializes the token with the name `khmessah42` and symbol `KH42`.

It creates an initial supply of 100,000 tokens and assigns the entire supply to the deployer's address.

The contract does not include a public mint function for creating additional tokens after deployment.

OpenZeppelin's ERC-20 implementation uses 18 decimal places by default. Therefore, one KH42 token corresponds to \(10^{18}\) smallest token units.

## 7. Verification Status

Remix reported successful verification through Routescan.

Etherscan source-code verification was attempted separately but was not completed during the deployment session.

Deployment and source-code verification are different operations. Deployment creates the contract on the blockchain, while source-code verification publishes the source code for comparison with the deployed bytecode on an explorer.

## 8. Important Notes

- KH42 is deployed on Sepolia Testnet for educational and testing purposes.
- It is not deployed on Ethereum Mainnet.
- Sepolia ETH is test currency and is not intended to have real-world monetary value.
- Never share a wallet seed phrase or private key during deployment.
- A new deployment creates a separate contract with its own address and initial token supply.