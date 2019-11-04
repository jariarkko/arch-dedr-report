---
title: Report from the IAB workshop on Design Expectations vs. Deployment Reality in Protocol Development 
abbrev: DEDR Report 
docname: draft-arkko-arch-dedr-report-00
date:
category: info

ipr: trust200902
keyword: Internet-Draft

stand_alone: yes
pi: [toc, sortrefs, symrefs]

author:
  -
    ins: J. Arkko, Ed.
    name: Jari Arkko
    org: Ericsson
    email: jari.arkko@piuha.net

informative:
  RFC5218:
  RFC8170:
  Arkko2019:
   title: "Changes in the Internet Threat Model"
   date: June 2019
   author:
    - ins: J. Arkko
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Bertola2019:
   title: "How the Internet Was Won and Where It Got Us"
   date: June 2019
   author:
    - ins: V. Bertola
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Bormann2019:
   title: "WiFi authentication: Some deployment observations from eduroam"
   date: June 2019
   author:
    - ins: C. Bormann
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Bortzmeyer2019:
   title: "Encouraging better deployments"
   date: June 2019
   author:
    - ins: S. Bortzmeyer
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Carpenter2019:
   title: "Limited Domains and Internet Protocols"
   date: June 2019
   author:
    - ins: B. Carpenter
    - ins: B. Liu
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Cooper2019:
   title: "Don’t Forget the Access Network"
   date: June 2019
   author:
    - ins: A. Cooper
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Farrell2019:
   title: "We’re gonna need a bigger threat model"
   date: June 2019
   author:
    - ins: S. Farrell
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  HallamBaker2019:
   title: "The Devil is in the Deployment"
   date: June 2019
   author:
    - ins: P. Hallam-Baker
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Hardie2019:
   title: "Instant Messaging and Presence: A Cautionary Tale"
   date: June 2019
   author:
    - ins: T. Hardie
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Hoffman2019:
   title: "Realities in DNSSEC Depployment"
   date: June 2019
   author:
    - ins: P. Hoffman
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Huitema2019:
   title: "Concentration is a business model"
   date: June 2019
   author:
    - ins: C. Huitema
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Huston2019:
   title: "The Border Gateway Protocol, 25 years on"
   date: June 2019
   author:
   - ins: G. Huston
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Kutscher2019:
   title: "Great Expectations: Protocol Design and Socioeconomic Realities"
   date: June 2019
   author:
   - ins: D. Kutscher
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Maisonneuve2019:
   title: "DNS, side effects and concentration"
   date: June 2019
   author:
    - ins: J. Maisonneuve
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Mattsson2019:
   title: "Privacy, Jurisdiction, and the Health of the Internet"
   date: June 2019
   author:
    - ins: J. Mattsson
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Muller2019:
   title: "Rolling Forward: An Outlook on Future Root Rollovers"
   date: June 2019
   author:
    - ins: M. Muller
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Ott2019:
   title: "Protocol Design Assumptions and PEPs"
   date: June 2019
   author:
    - ins: J. Ott
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Pardue2019:
   title: "Some challenges with IP multicast deployment"
   date: June 2019
   author:
    - ins: L. Pardue
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Reid2019:
   title: "Where/Why has DNS gone wrong?"
   date: June 2019
   author:
    - ins: J. Reid
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Sethi2019:
   title: "IoT Security and the role of Manufacturers: A Story of Unrealistic Design Expectations"
   date: June 2019
   author:
    - ins: M. Sethi
    - ins: T. Aura
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  Sullivan2019:
   title: "Three kinds of concentration in open protocols"
   date: June 2019
   author:
    - ins: A. Sullivan
   seriesinfo: Position paper submitted for the IAB DEDR workshop
  CFP:
   title: Design Expectations vs. Deployment Reality in Protocol Development Workshop 2019
   author:
    - ins: IAB
   seriesinfo: https://www.iab.org/activities/workshops/dedr-workshop/
  POS:
   title: "Position Papers: DEDR Workshop"
   author:
    - ins: IAB
   seriesinfo: https://www.iab.org/activities/workshops/dedr-workshop/position-papers/

--- abstract

The Design Expectations vs. Deployment Reality in Protocol Development  Workshop was convened by the Internet Architecture Board (IAB) in June 2019. This report summarizes its significant points of discussion and identifies topics that may warrant further consideration.

--- middle

# Introduction {#introduction}
 
The Design Expectations vs. Deployment Reality in Protocol Development  Workshop was convened by the Internet Architecture Board (IAB) in June 2019. This report summarizes its significant points of discussion and identifies topics that may warrant further consideration.

The background for the workshop was that a number of protocols have presumed specific deployment models during the development or early elaboration of the protocol. Actual deployments have, however, often run contrary to these early expectations when economies of scale, DDoS resilience, market consolidation, or other factors have come into play. These factors can result in the deployed reality being highly concentrated.

This is a serious issue for the Internet, as concentrated, centralized deployment models present risks to user choice, privacy, and future protocol evolution.

On occasion, the differences to expectations were almost immediate, but they also occur after a significant time has passed from the protocol’s initial development.

Examples include:

Email standards, which presumed many providers running in a largely uncoordinated fashion, but which has seen both significant market consolidation and a need for coordination to defend against spam and other attacks. The coordination and centralized defense mechanisms scale better for large entities, which has fueled additional consolidation.

The DNS, which presumed deep hierarchies but has often been deployed in large, flat zones, leading to the nameservers for those zones becoming critical infrastructure. Future developments in DNS may see concentration through the use of globally available common resolver services, which evolve rapidly and can offer better security. Paradoxically, concentration of these queries into few services creates new security and privacy concerns.

The Web, which is built on a fundamentally decentralized design, but which is now often delivered with the aid of Content Delivery Networks. Their services provide scaling, distribution, and Denial of Service prevention in ways that new entrants and smaller systems operators would find difficult to replicate. While truly small services and truly large ones may operate using only their own infrastructure, many others are left with the only practical choice being the use of a globally available commercial service.

Similar developments may happen with future technologies and services. For instance, the growing use of Machine Learning technology presents challenges for distributing effective implementation of a service throughout a pool of many different providers.

In {{RFC5218}} the IAB tackled what made for a successful protocol. In {{RFC8170}}, the IAB described how to handle protocol transitions. This purpose of the workshop was to explore cases where the initial system design assumptions turned out to be wrong, looking for patterns in what caused those assumptions to fail (e.g., concentration due to DDoS resilience) and in how those failures impact the security, privacy, and manageability of the resulting deployments.

While the eventual goals might include proposing common remediations for specific cases of confounded protocol expectations.

The workshop call for papers invited the submission of position papers which would:

* Describe specific cases where systems assumptions during protocol development were confounded by later deployment conditions.
* Survey a set of cases to identify common factors in these confounded expectations.
* Explore remediations which foster user privacy, security and provider diversity in the face of these changes.

A total of 21 position papers were received, listed in {{positionpapers}}.

# Workshop Agenda

After opening and discussion of goals for the workshop, the discussion focused on five main topics:

* Past experiences. What have we learned?
* Principles. What forces apply to deployment? What principles to take into account in design?
* Centralised deployment models. The good and the bad of centralisation. Can centralisation be avoided? How?
* Security. Are we addressing the right threats? What should we prepare ourselves for?
* Future. What can we do? Should we get better at predicting, or should we do different things? 

# Discussions

## Past experiences

To be filled...

## Principles

To be filled...

## Centralised deployment models

To be filled...

## Security

To be filled...

## Future

To be filled...

# Conclusions

## Summary of discussions

The workshop met in sunny Finnish countryside and made the non-suprising observation that technologies sometimes get deployed in surprising ways. But the consequences of deployment choices can have an impact on security, privacy, centralised vs. distributed models, competition, surveillance, and the IETF community cares deeply about these aspects.

The workshop also observed that technology is moving up the stack, e.g., in the areas of services, transport protocol functionality, security, naming, and so on.

The workshop also advised that the prime factor driving deployments is perceived needs; expecting people to recognise obvious virtues and therefore deploy is not likely to work.

It was also noted that interoperability continues to be important, and we need to explore what new interfaces need standardisation — this will enable different deployment models & competition. Prime factor driving deployments is actual needs; we cannot force anything to others but can provide solutions for those that need them. Needs and actions may fall on different parties.

The workshop observed that the ecosystem is complex, including for instance many players, regulators, and so on. While the workshop discussed actions and advice, there is a critical question of who these are targeted towards. There is need to construct a map of what parties need to perform what actions.

Some technical advice was also considered: balance user non-involvement and transparency and choice, to consider relevant threats such as communicating with malicious endpoints, to increase the ability of browsers in defending the users’ privacy, and avoid requiring centralised control or data storage points

The workshop also discussed specific issues around routing, denial-of-service attacks, IOT systems, role of device manufacturers, the DNS, and regulatory reactions and their possible consequences.

## Actions

The workshop then turned into a discussion of what actions we can take:

* Documenting our experiences?
* Providing advice (to IETF, to others)
* Waiting for the catastrophe that will make people agree to changes? (hopefully not this)
* Work at the IETF?
* Technical solutions/choices?

The documents/outputs and actions described in the following were deemed relevant by the participants.

### Potential architecture actions and outputs

* Develop and document a modern threat model
* Continue discussion of consolidation/centralisation issues
* Document architectural principles, e.g., (re-)application of the end-to-end principle

The first receiver of these thoughts is the IETF and protocol community, but combined with some evangelising & validation elsewhere

### Potential other actions

* Pursue specific IETF topics, e.g., work on taking into account reputation systems in IETF work, working to ensuring certificate scoping can be appropriately limited, building end-to-end encryption tools for applications, etc.
* General deployment experiences/advice, and documenting deployment assumptions possibly already in WG charters
* A report, and a short summary article will be produced from the workshop.

## Feedback

Feedback regarding the workshop is appreciated, and can be sent to the program committee, the IAB, or the architecture-discuss list.

# Position Papers {#positionpapers}

The following position papers were submitted to the workshop:

* Jari Arkko. "Changes in the Internet Threat Model" {{Arkko2019}}
* Vittorio Bertola. "How the Internet Was Won and Where It Got Us" {{Bertola2019}}
* Carsten Bormann. "WiFi authentication: Some deployment observations from eduroam" {{Bormann2019}}
* Stéphane Bortzmeyer. "Encouraging better deployments" {{Bortzmeyer2019}}
* Brian Carpenter and Bing Liu. "Limited Domains and Internet Protocols" {{Carpenter2019}}
* Alissa Cooper. "Don’t Forget the Access Network" {{Cooper2019}}
* Stephen Farrell. "We’re gonna need a bigger threat model" {{Farrell2019}}
* Phillip Hallam-Baker. "The Devil is in the Deployment" {{HallamBaker2019}}
* Ted Hardie. "Instant Messaging and Presence: A Cautionary Tale" {{Hardie2019}}
* Paul Hoffman. "Realities in DNSSEC Depployment" {{Hoffman2019}}
* Christian Huitema. "Concentration is a business model" {{Huitema2019}}
* Geoff Huston. "The Border Gateway Protocol, 25 years on" {{Huston2019}}
* Dirk Kutscher. "Great Expectations: Protocol Design and Socioeconomic Realities" {{Kutscher2019}}
* Julien Maisonneuve. "DNS, side effects and concentration" {{Maisonneuve2019}}
* John Mattsson. "Privacy, Jurisdiction, and the Health of the Internet" {{Mattsson2019}}
* Moritz Muller. "Rolling Forward: An Outlook on Future Root Rollovers" {{Muller2019}}
* Jörg Ott. "Protocol Design Assumptions and PEPs" {{Ott2019}}
* Lucas Pardue. "Some challenges with IP multicast deployment" {{Pardue2019}}
* Jim Reid. "Where/Why has DNS gone wrong?" {{Reid2019}}
* Mohit Sethi and Tuomas Aura. "IoT Security and the role of Manufacturers: A Story of Unrealistic Design Expectations" {{Sethi2019}}
* Andrew Sullivan. "Three kinds of concentration in open protocols" {{Sullivan2019}}

These papers are available from the IAB website {{CFP}} {{POS}}.

--- back

# Acknowledgements {#ack}

The author would like to thank the workshop participants, the members of the IAB, and the participants in the architecture discussion list for interesting discussions.
