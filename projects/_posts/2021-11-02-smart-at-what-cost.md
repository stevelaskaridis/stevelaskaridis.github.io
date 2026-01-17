---
layout: post
title: >
    Smart at what cost? Characterising Mobile Deep Neural Networks in the wild
description: >
    With smartphones' omnipresence in people's pockets, Machine Learning (ML) on mobile is gaining traction as devices become more powerful.

    With applications ranging from visual filters to voice assistants, intelligence on mobile comes in many forms and facets.
    However, Deep Neural Network (DNN) inference remains a compute intensive workload, with devices struggling to support intelligence at the cost of responsiveness.
    On the one hand, there is significant research on reducing model runtime requirements and supporting deployment on embedded devices. On the other hand, the strive to maximise the accuracy of a task is supported by deeper and wider neural networks, making mobile deployment of state-of-the-art DNNs a moving target.

    n this paper, we perform the first holistic study of DNN usage in the wild in an attempt to track deployed models and match how these run on widely deployed devices. To this end, we analyse over 16k of the most popular apps in the Google Play Store to characterise their DNN usage and performance across devices of different capabilities, both across tiers and generations.
    Simultaneously, we measure the models' energy footprint, as a core cost dimension of any mobile deployment.
    To streamline the process, we have developed gaugeNN, a tool that automates the deployment, measurement and analysis of DNNs on devices, with support for different frameworks and platforms.
    Results from our experience study paint the landscape of deep learning deployments on smartphones and indicate their popularity across app developers. Furthermore, our study shows the gap between bespoke techniques and real-world deployments and the need for optimised deployment of deep learning models in a highly dynamic and heterogeneous ecosystem.
accent_image:
  background: url('/assets/img/blog/research.jpg') top/cover
  overlay: true
invert_sidebar: false
sitemap: false
hide_last_modified: true
---

**Authors:** M. Almeida\*, **S. Laskaridis**\*, A. Mehrotra, L. Dudziak, I. Leontiadis, N. D. Lane

**Published at:** _ACM Internet Measurement Conference (IMC'21)_

## Overview

![gaugenn](/assets/img/blog/gaugenn/gaugenn-illustration.png)

We conducted a large-scale measurement study of real-world mobile DNN usage, analyzing over 16,000 popular Android apps. To enable this, we built gaugeNN, a toolchain for deploying and measuring neural networks across devices, frameworks, and OS versions, with energy as a first-class metric.

Our analysis revealed a significant gap between research-driven optimizations and how models are actually deployed in production apps. This work highlights the need for system-level evaluation grounded in real deployment practices.


## Links

* [paper](https://dl.acm.org/doi/abs/10.1145/3487552.3487863)
* [preprint](https://arxiv.org/abs/2109.13963)
* [video](https://www.youtube.com/watch?v=6iNXymLu7Ic)

