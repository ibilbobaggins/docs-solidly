# 🌊 Providing Liquidity

### General Info

Solidly has a unique security feature for LPs, namely that liquidity providers on Solidly can earn rewards while remaining in **full custody of their assets**.

Liquidity providers earn:

* 80% of swap fees generated
* 100% of SOLID emissions
* 100% of LP bribes

The amount of SOLID emissions depends on how many voters a given pool managed to garner from veSOLID holders.

By earning SOLID emissions on a weekly basis, LPs can hedge market volatility and earn a deterministic amount.

Besides the above mentioned security feature, Solidly V3 introduces financial protection as well in the forms of:

* [JIT Protection](providing-liquidity.md#jit-liquidity-protection)
* [IL Protection](providing-liquidity.md#il-protection)

### Providing Liquidity on Solidly V3

In order to provide liquidity on Solidly V3, select a token pair and specify your price range by setting the upper and lower ticks, placing your capital within those specified bounds. Your liquidity is utilized only when the trading price is within the set bounds, maximizing capital efficiency and potential fee, emission and bribe earnings. The more concentrated the liquidity, the more relative `liquiditySeconds` your position accrues, meaning your capital efficiency could increase by a dramatic factor.

Example: Someone places $100,000 in `WETH/USDC` liquidity across the full range, someone else could place only $5000 in that same pair but in a much more concentrated range and earn far more than the bigger position - capital efficiency increases by factors of hundreds or even thousands are possible with Solidly's concentrated liquidity solution.

Fees are accrued in real-time and can be claimed every 24h after the reward calculations have been processed on-chain in form on a merkle tree. This design makes it extremely cheap to claim rewards in terms of gas cost.

### JIT Liquidity Protection

Liquidity Providers on Solidly enjoy 100% JIT liquidity protection - a form of MEV targeting LPs - read more about JIT liquidity, it's negative effects and Solidly's protective mechanism here [solidly-v3.md](../v3/solidly-v3.md "mention")

### IL Protection

Solidly employs a proprietary algorithm that front-runs big volatility in crypto markets. The way it works is that it increases trading fees on pools during certain trigger events. Essentially it's a MEV taxing mechanism, which heavily taxes the toxic flow arbitrageurs introduce during times of heightened volatility. Read about it in more detail here [solidly-v3.md](../v3/solidly-v3.md "mention")
