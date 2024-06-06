---
layout: default
title: 🤖 JIT Protection
parent: V3
nav_order: 3
---

# 🤖 JIT Protection

The topic of just-in-time ("JIT") liquidity has gained more [public awareness](https://blog.kaiko.com/beneath-the-surface-of-uniswap-pools-just-in-time-liquidity-4fad61a2e60d) this year, as far as the official team at [Uniswap retracting](https://twitter.com/danrobinson/status/1697438923918844054) their previously positive opinion on it. The team at Solidly Labs has done extensive research into the topic with pending publications.

### What is JIT Liquidity and Why is it Harmful?

JIT liquidity is the process of sandwiching a swap, injecting a massive amount of liquidity into the smallest possible tick range within the runtime of a block. The trader gets a better price execuction while the JIT bot vamps virtually all of the trading fees from other liquidity providers.

This practice can be described as parasitic, as it relies on the presence of consistent liquidity providers. Without these long-term providers, the initial swap would not have been quoted, rendering the JIT strategy infeasible. Steady liquidity providers play a pivotal role in establishing market conditions and facilitating price convergence, assuming capital risk in the process. However, the JIT strategy essentially capitalizes on the groundwork laid by these providers, swooping in at the last moment to reap the benefits enabled by their initial efforts.

### Example

To emphasize the gravity of the situation, consider the following case randomly selected from Etherscan at the time of writing this paragraph, which exemplifies how common the phenomenon has become:

[JIT Transaction 1](https://etherscan.io/tx/0x6ea8d0849281d4f9af8aeea625bd1c5c40a53afd20d6ae773d9e076f7f04f4ab)\
[Swap Transaction](https://etherscan.io/tx/0xe3bd0b6f25599c1ddb0133de672296a23fef974a09b4564f1aea839ba4c99c36)\
[JIT Transaction 2](https://etherscan.io/tx/0x1b2ee95d05c80df822ec02971dae1da5e9154ea478ad6926eb515de80b6bd315)

While this may initially appear to resemble a typical sandwich attack, it is important to note that in this scenario, it does not negatively impact the trader; quite the contrary, it enhances their price execution.

So who's the victim here? The collective of dedicated and longstanding retail liquidity providers (or the "suckers" in this scenario).

What happened exactly?

The JIT provider minted a \~$20m position at the smallest tick range for this pair, which has a tickSpacing of 60 and a fee of 0.3%. The lower boundary was set at 202260 and upper at 202320. The liquidity before minting the JIT position was 4.43×10¹⁸, the liquidity after the in-block JIT mint was 1.71×10²⁰ , increasing the active liquidity by a factor of 40 and the JIT representing 97.5% of the liquidity. You can see where this is heading; the swap size was a moderate $20,000, creating $60 in fees. The JIT provider earned $58.44 of those with a net profit of $50.5 after gas fees and builder bribe, while the rest, **$65m in total liquidity providers, had to share $1.56.**

Liquidity provision on Uniswap V3 is completely broken and in a silent crisis that is still largely ignored, Solidly V3 is here to fix it.

### How does Solidly V3 Solve the JIT Problem?

Liquidity providers on Solidly start earning immediately after minting but they have a 10 minute "ramp-up" time. When a swap happens the fee is distributed pro-rata among all liquiditySeconds of the past 10 minutes. A position that is minted and burned in the same block accrues zero liquiditySeconds meaning that 1-block JITs would donate their fees to the providers of the previous 10 minutes. A multi-block JIT would also earn nothing, because at the point of minting the position into the fee block, it will also be at zero liquiditySeconds, the first block where they earn fees would be the subsequent block, and they would get massively diluted by the aggregate liquiditySeconds of all loyal LPs of the past 10 minutes. Even if the subsequent block had a swap in it, JIT liquidity would get massively diluted in our model, but  most importantly there's no guarantee that the subsequent block would have any fees, so JIT liquidity provision would become inherently speculative and thus infeasible.

### How Does this Affect LP Yields?

All the fees that would go to would-be JITs go directly to liquidity providers on Solidly. The APR you typically see on yield information pages is not accurate for Uniswap V3, as they do not discount the amount of fees earned by JIT liquidity. As in the example above, the APR would be reduced by 97.5%, but of course not every swap get sandwiched by a JIT bot. Solidly Labs is working on a dashboard that accurately reflects real yield rates between liquidity providers on Solidly V3 vs. Uniswap V3.
