---
title: Deepfence Community
slug: /
hide_table_of_contents: true
---

import Layout from '@theme/Layout';

import {
  HomepageCard as Card,
  HomepageSection as Section,
  ProductCard as ProductCard
} from '../components/HomepageComponents';

# Deepfence Community

Open-Source is at the core of what we do, trusted by 1,000's of community users. 

<Section title="">
  <Card
    title="100% open source"
    description="Deepfence open source projects are completely open source. No phone-home, no limits, no hidden features."
  />
  <Card
    title="900,000 Docker Pulls"
    description="Deepfence ThreatMapper finds threats hidden in thousands and thousands of production platforms."
  />
  <Card
    title="3,923 GitHub Stars"
    description="Across multiple repos, Deepfence projects are amongst the fastest adopted security solutions for cloud-native apps."
  />
</Section>


<Section title="Deepfence Open Source Projects" id="opensource">
  <ProductCard
    title="Deepfence ThreatMapper"
    description="Deepfence ThreatMapper hunts for vulnerabilities in your production platforms, and ranks these vulnerabilities based on their risk-of-exploit. You can then prioritize the issues that present the greatest risk to the security of your applications."
    icon="/img/products/threatmapper.svg"
    ghstars="<a href='https://github.com/deepfence/ThreatMapper/stargazers'>1,770</a>"
    ghlink="<a href='https://github.com/deepfence/ThreatMapper'>source</a>"
    docs="<a href='/threatmapper'>documentation</a>"
  />
  <ProductCard
    title="Deepfence SecretScanner"
    description="Deepfence SecretScanner can find unprotected secrets in container images or file systems."
    icon="/img/products/secretscanner.svg"
    ghstars="<a href='https://github.com/deepfence/SecretScanner/stargazers'>1,361</a>"
    ghlink="<a href='https://github.com/deepfence/SecretScanner'>source</a>"
    docs="<a href='/secretscanner'>documentation</a>"
  />
  <ProductCard
    title="Deepfence YaRadare"
    description="Deepfence YaRadare scans container images, running Docker containers, and filesystems to find indicators of malware. It uses a YARA ruleset to identify resources that match known malware signatures, and may indicate that the container or filesystem has been compromised."
    icon="/img/products/yaradare.svg"
    ghstars="<a href='https://github.com/deepfence/YaRadare/stargazers'>56</a>"
    ghlink="<a href='https://github.com/deepfence/YaRadare'>source</a>"
    docs="<a href='/yaradare'>documentation</a>"
  />
  <ProductCard
    title="Deepfence PacketStreamer"
    description="Deepfence PacketStreamer is a high-performance remote packet capture and collection tool. It is used to gather network traffic on demand from cloud workloads for forensic analysis."
    icon="/img/products/packetstreamer.svg"
    ghstars="<a href='https://github.com/deepfence/PacketStreamer/stargazers'>653</a>"
    ghlink="<a href='https://github.com/deepfence/PacketStreamer'>source</a>"
    docs="<a href='/packetstreamer'>documentation</a>"
  />
  <ProductCard
    title="Deepfence FlowMeter"
    description="Deepfence FlowMeter is an experimental utility built to analyse and classify packets by looking at packet headers. We use FlowMeter internally to quickly analyse and label packets."
    icon="/img/products/flowmeter.svg"
    ghstars="<a href='https://github.com/deepfence/FlowMeter/stargazers'>28</a>"
    ghlink="<a href='https://github.com/deepfence/FlowMeter'>source</a>"
    docs="<a href='/flowmeter'>documentation</a>"
  />
</Section>
<Section title="Deepfence Enterprise Products" id="enterprise">
  <ProductCard
    title="Deepfence ThreatStryker"
    description="Deepfence ThreatStryker observes, correlates, learns, and acts to protect your cloud-native applications, across clouds and on-prem locations."
    icon="/img/products/threatstryker.svg"
    docs="<a href='/threatstryker'>documentation</a>"
  />
  <ProductCard
    title="Deepfence Cloud"
    description="Deepfence Cloud is a self-service portal from which you can create an organization and invite users to that organization. You can then deploy ThreatStryker console instances in any of the available clouds. Deepfence Cloud users in your organization have access to these consoles and can log in directly without any additional credentials"
    icon="/img/products/cloud.svg"
    docs="<a href='/threatstryker/cloud'>documentation</a>"
  />
</Section>








## Participate in the Community

 * slack link, perhaps using slackin?

## Learn More

 * YouTube
 * Blog
 * Webinars?

## Support Deepfence 
<img src="/img/swag.jpg" width="50%"/>



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