---
layout: default
title: Crosschain Voting
parent: MULTICHAIN
nav_order: 2
---

# Crosschain Voting

Crosschain Voting is an advanced governance feature of the Solidly protocol that empowers veSOLID NFT holders to participate in decision-making processes across multiple blockchain networks. By leveraging state-of-the-art bridging technology—including CCIP and other interoperable protocols—users can cast votes on alternative chains while maintaining the security and integrity of their locked assets.

---

## Overview

Solidly’s crosschain (multichain) voting solution was designed to overcome the limitations of single-chain governance. This system allows users to bridge their veSOLID NFTs to different networks, enabling participation in governance decisions regardless of the chain where their tokens are originally locked. The implementation builds on our previously audited crosschain voting and bridging infrastructure, with additional refinements introduced as part of the multichain upgrade.

---

## How It Works

### Bridging Your veSOLID NFT

- **Initiation:** Users initiate the process by selecting the target blockchain where they wish to vote.
- **Bridging Process:** Utilizing secure and audited protocols such as CCIP, your veSOLID NFT is bridged from its native chain to the target chain. This ensures that the NFT retains its vote-escrowed properties and associated voting power.
- **Verification:** Once bridged, the NFT is verified on the target network, making it eligible for governance participation on that chain.

### Casting Your Vote

- **Accessing the Voting Interface:** After successfully bridging your NFT, navigate to the voting interface on the target chain.
- **Voting Process:** The voting mechanism remains consistent with the native chain process. Users select pools or proposals and cast their votes. The crosschain voting engine aggregates these votes and ensures that the results are accurately reflected across all chains.
- **Reward Distribution:** Voter rewards, such as bribes and trading fees, are allocated based on your participation. These rewards are claimable on the chain where the vote was cast, maintaining a near-zero cost profile due to optimized gas usage.

---

## Technical Implementation

- **Underlying Protocols:** The multichain voting mechanism integrates CCIP technology with complementary bridging solutions (e.g., LayerZero, Axelar) to achieve secure interoperability between networks.
- **Audit and Security:** The crosschain voting and bridging components were implemented and audited as part of our earlier crosschain solutions. Subsequent updates under the multichain initiative involve minor optimizations that do not compromise the security guarantees provided by our original audits. For further details, please refer to our [Security & Audits](../appendix/security-and-audits.md) documentation.
- **Multichain Enhancements:** Recent enhancements ensure that once bridged, the NFT’s governance functionality operates seamlessly on the target chain. These improvements are designed to minimize user friction while maintaining the robustness of our vote-escrow model.

---

## User Flow

1. **Prepare:** Ensure you hold a veSOLID NFT locked on the native chain.
2. **Bridge:** Initiate the NFT bridging process via the designated crosschain interface.
3. **Verify:** Confirm that your veSOLID NFT has been successfully bridged and registered on the target chain.
4. **Vote:** Access the voting dashboard on the target chain and cast your vote on preferred pools or proposals.
5. **Claim Rewards:** Monitor and claim any voter rewards or bribes directly on the target chain as they accrue.

---

## Security Considerations

Solidly’s multichain voting system adheres to the highest security standards:
- **Rigorous Audits:** All crosschain functionalities have undergone third-party audits, ensuring that bridging, vote casting, and reward mechanisms are secure.
- **Bridging Protocols:** The use of CCIP and other proven bridging protocols provides end-to-end security for NFT transfers.
- **Decentralized Oversight:** Security buffers and multi-signature controls are in place to mitigate any risks associated with crosschain operations.

---

## Future Enhancements

While the current system enables robust multichain governance through NFT bridging, further refinements are underway to streamline the user experience. Planned updates include:
- **Native Multichain Integration:** Reducing the number of steps required to vote across chains.
- **User Interface Improvements:** Enhanced dashboards and notifications for a more intuitive voting process.
- **Additional Security Layers:** Ongoing enhancements based on community feedback and emerging industry standards.

---
