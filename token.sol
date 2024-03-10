
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    uint256 killPoints;
    uint256 coins;
    uint256 bullets;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender){
        _mint(msg.sender, 10);
        coins = 10;
        killPoints = 0;
        bullets = 4;
    }

    function redeemKillPoint() public {
        require(killPoints > 0, "No kill points to redeem");
        coins += killPoints;
        _mint(msg.sender, killPoints);
        killPoints = 0;
    }

    function buyAmmo(uint256 amt) public {
        require(coins >= amt, "Amount should be less than coins");
        coins -= amt;
        _burn(msg.sender, amt);
        bullets += amt;
    }

    function shootEnemy() public {
        require(bullets > 0, "At least one bullet required to kill enemy");
        bullets--;
        killPoints += 2;
    }
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function values() public view returns (uint256, uint256, uint256) {
        return (killPoints, coins, bullets);
    }
}
