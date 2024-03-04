# DegenToken (Degen)

DegenToken is an ERC20-compatible token deployed on the Ethereum blockchain. It is specifically designed for a gaming context inspired by PlayerUnknown's Battlegrounds (Degen), featuring functionalities such as earning kill points, redeeming points for tokens, purchasing ammunition, and shooting enemies.

## Features

- **ERC20 Compatibility**: DegenToken adheres to the ERC20 standard, allowing seamless integration with existing Ethereum wallets, exchanges, and smart contracts.
- **In-Game Mechanics**: The token introduces gaming elements such as earning kill points, redeeming points for tokens, purchasing ammunition, and shooting enemies.
- **Ownership Controls**: The contract inherits from OpenZeppelin's Ownable, allowing the contract owner to execute certain privileged functions.

## Deployment

The DegenToken contract is deployed on the Ethereum mainnet with the following parameters:

- **Token Name**: Degen
- **Token Symbol**: DGN
- **Initial Supply**: 10 tokens
- **Decimals**: 18

## Usage

### Initial Deployment

Upon deployment, the contract creator receives an initial supply of 10 Degen tokens, along with in-game resources such as coins and bullets.

### Earning Kill Points

Players can earn kill points by shooting enemies using the `shootEnemy` function. Each successful shot awards 2 kill points.

### Redeeming Kill Points

Players can redeem their accumulated kill points for tokens using the `redeemKillPoint` function. This function converts kill points into tokens, adding them to the player's balance.

### Purchasing Ammunition

Players can purchase ammunition using their coins by calling the `buyAmmo` function. This function deducts the specified amount of coins from the player's balance and provides them with the corresponding amount of bullets.

### Viewing Current Values

Players can take count of their killPoints, coins, and bullets by calling `values` function. This function returns the current statistical figures of total killPoints accumulated, coins, and bullets left.

## Security

- Ensure that only trusted addresses have ownership of the contract to prevent unauthorized modifications.
- Validate user inputs to prevent unintended behavior or exploits.
- Thoroughly test the contract logic before deploying it to a production environment.

## License

DegenToken is licensed under the [MIT License](LICENSE).
