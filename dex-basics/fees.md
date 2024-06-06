---
layout: default
title: 🪙 Fees
parent: DEX BASICS
nav_order: 2
---

# 🪙 Fees

Solidly introduces a fully adaptive fee structure, where trading fees are dynamically adjusted in response to market volatility with min/max values of 0% and 10%, respectively.

By default all V2 volatile pools are set to 0.2% and stable pools to 0.02%.

Concentrated V3 liquidity pools have the following default values, but have the ability to be changed on the fly:

* 0.01% for ultra-stable pairs (e.g., USDC/USDT) with 1 bps/tickSpacing
* 0.05% for bluechip pools (e.g., WETH/USDC) with 10 bps/tickSpacing
* 0.3% for standard pools (e.g., LINK/WETH) with 50 bps/tickSpacing
* 1% for exotic pools (e.g., SOLID/WETH) with 100 bps/tickSpacing.

The `RewardsDistributor` allocates 80% of trading fees to liquidity providers and 20% to veSOLID voters, distributed pro-rata in the base currencies of the pair.
