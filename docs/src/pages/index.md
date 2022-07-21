---
title: Deepfence Documentation
slug: /
---

import Layout from '@theme/Layout';

import {
  HomepageCard as Card,
  HomepageSection as Section,
  HomepageNormalCard as NormalCard,
} from '../components/HomepageComponents';
import {
  AngularIcon,
  APIReferenceIcon,
  FlutterIcon,
  HTMLIcon,
  KotlinIcon,
  ReactIcon,
  SwiftIcon,
  TerminalIcon,
  DisconnectedPlugIcon,
  UIKitIcon,
} from '../icons';
import GuidesSection from '../components/GuidesSection';

# Deepfence Documentation

Open-Source is at the core of what we do, trusted by 1,000's of community users. 

<Section title="">
  <NormalCard
    title="100% open source"
    description="Deepfence open source projects are completely open source. No phone-home, no limits on scans, no commercial upsell."
  />
  <NormalCard
    title="900,000 Docker Pulls"
    description="Deepfence ThreatMapper is trusted by 1,000's of community users to find threats hidden in production platforms."
  />
  <NormalCard
    title="4,923 GitHub Stars"
    description="Across multiple repos, Deepfence projects are amongst the fastest adopted security solutions for cloud-native apps."
  />
</Section>


<Section title="Deepfence Open Source Projects">
  <Card
    title="ThreatMapper"
    description="Deepfence ThreatMapper hunts for vulnerabilities in your production platforms, and ranks these vulnerabilities based on their risk-of-exploit. You can then prioritize the issues that present the greatest risk to the security of your applications."
    to="/threatmapper"
    icon={<UIKitIcon />}
  />
  <Card
    title="SecretScanner"
    description="Deepfence SecretScanner can find unprotected secrets in container images or file systems."
    to="/secretscanner"
    icon={<UIKitIcon />}
  />
  <Card
    title="YaRadare"
    description="Deepfence YaRadare scans container images, running Docker containers, and filesystems to find indicators of malware. It uses a YARA ruleset to identify resources that match known malware signatures, and may indicate that the container or filesystem has been compromised."
    to="/yaradare"
    icon={<UIKitIcon />}
  />
  <Card
    title="PacketStreamer"
    description="Deepfence PacketStreamer is a high-performance remote packet capture and collection tool. It is used to gather network traffic on demand from cloud workloads for forensic analysis."
    to="/packetstreamer"
    icon={<UIKitIcon />}
  />
  <Card
    title="FlowMeter"
    description="Deepfence FlowMeter is an experimental utility built to analyse and classify packets by looking at packet headers. We use FlowMeter internally to quickly analyse and label packets."
    to="/flowmeter"
    icon={<UIKitIcon />}
  />
</Section>
<Section title="Deepfence Enterprise Products" id="web-sdks">
  <NormalCard
    title="ThreatStryker"
    description="Deepfence ThreatStryker observes, correlates, learns, and acts to protect your cloud-native applications, across clouds and on-prem locations."
    to="/threatstryker"
    icon={<UIKitIcon />}
  />
  <NormalCard
    title="Deepfence Cloud"
    description="Deepfence Cloud is a self-service portal from which you can create an organization and invite users to that organization. You can then deploy ThreatStryker console instances in any of the available clouds. Deepfence Cloud users in your organization have access to these consoles and can log in directly without any additional credentials"
    to="/threatstryker/cloud"
    icon={<UIKitIcon />}
  />
</Section>










*to include github link, docs link, star count, hero image*

## Participate in the Community

 * slack (using slackin?)

## Learn More

 * [YouTube](https://www.youtube.com/channel/UCklvbuOjnzpmtXy-g97tfWQ)
 * [Blog](https://deepfence.io/blog/)
 * Webinars?

## Swag Raffle!

Details



<hr/>

import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
export function siteConfig() {
  const {siteConfig, siteMetadata} = useDocusaurusContext();
  return siteConfig;
}
export function siteMetadata() {
  const {siteConfig, siteMetadata} = useDocusaurusContext();
  return siteMetadata;
}


<details>
	<summary>Technical Details</summary>

<details>
	<summary><b>Site Config.</b>  Site config comes from <code>docusaurus.config.js</code></summary>
	<pre>{JSON.stringify( siteConfig(), null, 2 )}</pre>
</details>


<details>
  <summary><b>Site MetaData.</b>  Site metadata comes from docusaurus install</summary>
  <pre>{JSON.stringify(siteMetadata(), null, 2) }</pre>
</details>

</details>
