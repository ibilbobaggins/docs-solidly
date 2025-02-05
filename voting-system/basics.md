---
layout: default
title: 👓 Basics
parent: VOTING SYSTEM
nav_order: 1
---

---
description: The Key to SOLID Emissions
---

# 👓 Basics

## Liquidity Acquisition

The primary purpose of a protocol's emissions is to attract users & liquidity. As outlined in the introductory remarks, liquidity can be more or less valuable. Solidly solves this problem by incentivizing emissions for pools that generate the highest fees for voters. The DEX self-optimizes week-over-week by constantly having voters go after the best voting APRs. Voters' interests are automatically aligned because they exclusively receive fees and bribes from pools they vote on.

## Voting NFT (veSOLID)

Similarly to Curve, Solidly deploys the same approach by having users lock SOLID into veSOLID ("ve" = vote-escrowed), except for the difference that Solidly doesn't bind the ve position to a specific account but makes it transferable by tokenizing the ve position into a NFT (ERC-721), thereby addressing the general capital inefficiency of ve assets, making them tradable.

## Voting Power

The voting power of the entire protocol is defined by the total amount of SOLID token locked into all veSOLID NFTs, multiplied by the aggregate linear time decay of the vests.

**Example:**

1 SOLID locked for 4 years translates into a voting weight of 1, decreasing linearly with time, meaning that 1 SOLID locked for 2 years would have a voting weight of 0.5.
If 60,000,000 SOLID were locked into veSOLID locks for 3 years, the total voting power of the entire protocol would be:

`3/4 * 60,000,000 = Voting weight of 45,000,000`

## Rewards Distribution

In [Solidly V3](../v3/solidly-v3.md "mention") a new mechanism has been introduced to help users save on gas cost. All types of rewards (bribes and fees) are aggregated through the `RewardDistributor.sol` contract. Bribes are deposited directly into it with a given distribution period and trading fees are collected by it from the pools. An off-chain process does all the accounting, which is then pushed to the `RewardsDistributor.sol` in the form of a merkle root. Users can then claim their reward by providing the merkle proof to the contract. In our initial configuration roots are pushed every 24 hours. The merkle root has a security feature, namely a publicly called `pauseClaims` function, which enables any user to stop the claiming process against a collateral, prompting the team to investigate the potential error. All data used to calculate the data are periodically published by the Solidly Labs team, so anyone can verify that the data pushed via the merkle roots are 100% valid.
