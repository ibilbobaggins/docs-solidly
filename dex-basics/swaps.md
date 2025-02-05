---
layout: default
title: 🔃 Swaps
parent: DEX BASICS
nav_order: 1
---


# 🔃 Swaps

## V2 Swaps

Solidly enables trading between different ERC-20 tokens on the Ethereum and other EVM-compatible blockchains. Solidly specializes in providing tailored trading solutions between correlated and uncorrelated assets.

In its initial iteration Solidly supports the following 2 liquidity pool types:

* Volatile Pools

Volatile pools are defined as assets that have no direct correlation in price, examples are Chainlink (LINK) and Ethereum (ETH). The price of ETH has no relation to the price of LINK.

Volatiles pairs use the following formula to determine the price:

`x × y ≥ k`

* Stable Pools

Stable pools are defined as assets that have a direct correlation to each other. Examples are USDC/USDT, wBTC/multiBTC, frxETH/wETH etc. The price of the 2 assets will trade very close to each other and thus a different approach can be taken to allow for much higher volume at low slippage.

Stable pairs use the following formula to determine the price:

`x³y + y³x ≥ k`

#### Graphics Representation

<figure><img src="../.gitbook/assets/image (24).png" alt=""><figcaption><p>The blue curve visualizes the stable formula while the red curve shows the volatile formula</p></figcaption></figure>

## V3 Swaps

Solidly V3 introduced a cutting edge concentrated liquidity AMM, forked from Uniswap V3 but with some distinct differences and enormous gas savings of up to 50%, which are further explained in [solidly-v3.md](../v3/solidly-v3.md "mention")

Like in the V2 constant product AMM, the concentrated liquidity AMM ("CLAMM") goes from 0 to infinity. However, unlike in V2, liquidity providers can choose to provide liquidity in specific price ranges across the 0 to infinity curve. Concentrating liquidity in specific ranges leads to more capital being available to traders with less slippage.

A simple way to demonstrate this concept is the following 2 graphs:

<figure><img src="../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

Concentrated liquidity takes on a similar shape of liquidity which can be found on more efficient forms of trading venues like centralized exchanges, or stock and forex markets.
