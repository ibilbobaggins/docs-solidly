---
layout: default
title: ⛽ Gas Savings
parent: V3
nav_order: 2
---

# ⛽ Gas Savings

One of the main pitfalls for Solidly V2 (Legacy) was the substantial gas cost associated with transactions. For Solidly V3 we have gone into the complete opposite direction, producing the world's most gas efficient CLAMM DEX. Solidly V3 prides itself on offering up to 50% gas savings for traders and as much as 60% for liquidity providers in comparison to Uniswap V3.

We'll let the numbers speak for themselves. Our approach was quite straightforward, we either removed or significantly scaled back the following elements from the original Uniswap V3 implementation:

* Oracles
* External Callbacks
* Fee Accounting => [RewardsDistributor.sol](rewards-distributor.md)

The full gas snapshots for Solidly V3 vs Uniswap V3 can be found [here](https://pastebin.com/7wq3HjQT).

<figure><img src="../.gitbook/assets/image (11).png" alt=""><figcaption></figcaption></figure>
