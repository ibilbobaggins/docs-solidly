---
layout: default
title: 💹 IL Protection
parent: V3
nav_order: 4
---

# 💹 IL Protection

One of the biggest - and valid - factors holding people back from providing liquidity to earn yield is impermanent loss. Most retail liquidity providers are _losing money_. We attribute this to 2 main factors:

* JIT Liquidity
* Toxic Flow

Both of these are circumstances where liquidity providers are currently not earning their fair share, providing lucrative opportunities to advanced actors (MEVs / VCs / Hedge Funds etc.). At Solidly Labs our goal is to make liquidity providing profitable and simple. As such we have implemented dynamic fees into the Solidly V3 stack, as we already did for Solidly V2, where we had enormous success with it.

The principle is simple: our pools get protected from toxic flow during volatile market moves. For example, if there's a large drop in an asset price, say WETH/USDC, arbitrageurs quickly jump into action to equalize the price across different market venues, which is a good thing. However, liquidity providers in classic AMMs are completely caught with their pants down in those moments. In more established market venues, market makers usually thin out their liquidity to reduce risk but there's no such thing for LPs on AMMs, their risk exposure stays constant and they essentially give out free profits to MEV bots, which they should rightfully claim as their own.

How would they do this though? It's not like the AMM can go to Binance to quickly buy cheap WETH to dump it on itself and distribute the profits to all LPs. There's a much simpler and more elegant way: JIT fees.



### JIT Wars

We're turning JIT on its head, that's right. Instead of getting milked by JIT liquidity bots we turn our AMM into a JIT fee extractor. Our proprietary algorithm senses incoming volatility and in some cases detects it as it happens and adjusts the pool fees just-in-time in a perfectly measured way, so that the arbitrage trades on our pool still happen, leaving just a small enough bounty for any MEV to take the trade. So instead of giving 99% of the profit to arbitrageurs, liquidity providers take them and provide arbitrageurs with a 1% bounty in return for the service of balancing the pool, figuratively speaking. The fees are always calculated in such a manner as to maximize the profit for liquidity providers.

In essence this can be simplified into:

* High fees during high volatility periods (higher risk of toxic flow)
* Low fees during low volatility periods (lower risk of toxic flow)
