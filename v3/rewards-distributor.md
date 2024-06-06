---
layout: default
title: 💲 Rewards Distributor
parent: V3
nav_order: 5
---

---
description: An Efficient Piece of Machinery
---

# 💲 Rewards Distributor

Solidly V3 introduces a new and much better way to distribute rewards. Previously bribes, fees and emissions have been handled by gauges, fee and bribe contracts respectively, only allowing very static distribution designs and coming in at a big price tag in terms of transaction costs.

### Basic Funcionalities

All mentioned processes have been rolled up in one simplified contract, the `RewardsDistributor.sol` ("RD"). It does the following:

* Fetches fees from pools
* Stores and tabulates:
  * LP Bribes
  * Voter Bribes
  * Weekly Emissions
  * Trading fees
* Stores merkle roots
* Verifies user claims

The counter-part to the RD is the off-chain rewards processor.

### Off-chain Processor

In order to accurately reflect the on-chain movements, Solidly Labs has created a proprietary solution to track and simulate the on-chain flow of Solidly V3 pools and related contracts.

* Fetches all user actions (swaps, mints, burns, votes, bribes)
* Simulates on-chain states at an given point in time
* Creates merkle trees and proofs
* Pushes the resulting merkle root on-chain onto the RD

### How Does it Work?

The off-chain processor and RD work in tandem to produce merkle trees, which represent all on-chain reward earnings. A root is generated from that tree and pushed on-chain, which serves as a source of truth. Users then submit merkle proofs to the RD, which verifies that the claim is legitimate, if it is, it then distributes the rewards in a cost-effective way, even allowing for multiple claims of a large array of assets at once.

In the initial phase, the merkle roots are pushed on-chain every 24 hours, and following a one-hour security buffer period, the rewards become eligible for claiming, ensuring a structured and secure reward distribution framework.

Another noteworthy benefit of this setup is that Solidly allows liquidity providers to retain full custody of their capital, with rewards being earned "over the air", enhancing their security.

### Advanced Use-cases

Offloading heavy computation is a trend we're starting to see more in DeFi and it's a direction that will greatly enhance on-chain experiences. Our RD and off-chain processor work hand in hand to enables things such as:

* Customized incentivization ranges for CL
* Detection and filtering of malicious JIT liquidity
* Big gas savings

### Security Considerations and Decentralization

While this is a step in the right direction, it has to be done carefully, as any centralized entities could get compromised, stop working or otherwise hinder smooth operations. In light of that we have committed to best practices:

* Security time buffer after each merkle push, allowing any third-party to stop the RD against a collateral deposit
* Multi-signatures and time-locks
* Multi-verification setup
* Steadfast decentralization efforts

We are exploring options to potentially run the off-chain processor on EigenLayer or rolling it up into an Ethereum L2 solution.

Lastly but not least, in an effort of ongoing transparency, we are continuously publishing all data that's used to calculate rewards, so users can verify themselves that the merkle trees are correct - a testament to the inherent integrity of modern cryptography.
