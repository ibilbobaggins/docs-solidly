---
layout: default
title: 📞 LayerZero, Axelar & CCIP
parent: MULTICHAIN
nav_order: 1
---

# 📞 LayerZero, Axelar & CCIP


---

## Protocol Overviews

### LayerZero
- **Function:** Facilitates cross-chain messaging and asset transfers.
- **Bridging Use:** Can be used for single lane NFT bridging or as part of dual lane bridging for liquid SOLID.
- **Operational Note:** Recent updates have resolved previous gas estimation issues. In rare cases, manual gas top-up may be necessary.

### Axelar
- **Function:** Provides a low-cost, reliable bridging lane.
- **Bridging Use:** Recommended for NFT bridging from childchains to Ethereum.
- **Operational Note:** After an Axelar bridge, allow a 20–25 minute finality period before reconfiguring via CCIP on Ethereum.

### CCIP (Chainlink Cross-Chain Interoperability Protocol)
- **Function:** Enables programmable token transfers and messaging between EVM chains.
- **Bridging Use:** Preferred option for single lane veSOLID NFT bridging and used in tandem with LayerZero for liquid SOLID transfers.
- **Operational Note:** Offers lower transaction costs and stable gas estimation.

---

## Bridging Operations

### Liquid SOLID Bridging
- **Configuration:** Dual lane bridging is required using both LayerZero and CCIP.
- **Purpose:** Ensures redundancy and reliable asset transfer for liquid SOLID.

### veSOLID NFT Bridging
- **Configuration:** Single lane bridging is sufficient.
- **Options:** Operators may select either LayerZero or CCIP; however, CCIP is recommended for its lower cost and stable gas estimation.
- **Additional Guidance:**  
  - For childchain-to-Ethereum transfers, Axelar offers a low-cost alternative. After bridging via Axelar, wait 20–25 minutes and use the Reconfigure tab (via CCIP) on Ethereum to complete the process.
  - All lanes are now operational. The UI filters out unsupported providers (e.g., CCIP is unavailable on Fantom, Axelar on Sonic).

---


## Best Practices for Operators

- **Single Lane Bridging (veSOLID NFTs):**  
  - Use CCIP as the primary option.  
  - LayerZero remains an acceptable alternative if needed.
  
- **Dual Lane Bridging (Liquid SOLID):**  
  - Combine LayerZero and CCIP to meet the dual lane requirement.
  
- **Chain Compatibility:**  
  - Confirm provider availability via the UI. Unsupported lanes (e.g., CCIP on Fantom, Axelar on Sonic) are automatically filtered.
  
- **Gas Management:**  
  - In cases where LZ gas estimation issues occur (especially for Ethereum-to-childchain transfers), manually top up the gas or opt for CCIP.


