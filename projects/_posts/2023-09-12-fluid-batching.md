---
layout: post
title: >
    Fluid Batching: Exit-Aware Preemptive Serving of Early-Exit Neural Networks on Edge NPUs
description: >
  With deep neural networks (DNNs) emerging as the backbone in a multitude of computer vision tasks, their adoption in real-world applications broadens continuously. Given the abundance and omnipresence of smart devices in the consumer landscape, "smart ecosystems'' are being formed where sensing happens concurrently rather than standalone. This is shifting the on-device inference paradigm towards deploying centralised neural processing units (NPUs) at the edge, where multiple devices (e.g. in smart homes or autonomous vehicles) can stream their data for processing with dynamic rates. While this provides enhanced potential for input batching, naive solutions can lead to subpar performance and quality of experience, especially under spiking loads. At the same time, the deployment of dynamic DNNs, comprising stochastic computation graphs (e.g. early-exit (EE) models), introduces a new dimension of dynamic behaviour in such systems. In this work, we propose a novel early-exit-aware scheduling algorithm that allows sample preemption at run time, to account for the dynamicity introduced both by the arrival and early-exiting processes. At the same time, we introduce two novel dimensions to the design space of the NPU hardware architecture, namely Fluid Batching and Stackable Processing Elements, that enable run-time adaptability to different batch sizes and significantly improve the NPU utilisation even at small batches. Our evaluation shows that the proposed system achieves an average 1.97x and 6.7x improvement over state-of-the-art DNN streaming systems in terms of average latency and tail latency service-level objective (SLO) satisfaction, respectively.
accent_image:
  background: url('/assets/img/blog/research.jpg') top/cover
  overlay: true
invert_sidebar: false
sitemap: false
hide_last_modified: true
---

**Authors:** Alexandros Kouris, Stylianos I. Venieris, **Stefanos Laskaridis**, Nicholas D. Lane


**Published at:** _International Conference on Computer-Aided Design (ICCAD'22)_

## Overview

![FluidBatching System](/assets/img/blog/fluid-batching/fluid_batching_system_diagram.png)

![NPU Architecture](/assets/img/blog/fluid-batching/npu.png)

![Microarchitecture](/assets/img/blog/fluid-batching/fbe_arch.png)

We designed Fluid Batching to address the challenges of serving early-exit neural networks on edge NPUs under bursty workloads. Traditional batching breaks down when inference paths vary dynamically due to early exits, so we introduced exit-aware, preemptive scheduling that adapts execution at runtime.

We also explored hardware-level implications, proposing stackable processing elements to better support dynamic batching. Our approach significantly improves both average latency and tail latency, achieving close to 2x speedups and dramatically higher SLO satisfaction compared to prior DNN serving systems.


## Links

* [preprint](https://arxiv.org/abs/2209.13443)

## Reference

```
@article{kouris2022fluid,
  title={Fluid batching: Exit-aware preemptive serving of early-exit neural networks on edge npus},
  author={Kouris, Alexandros and Venieris, Stylianos I and Laskaridis, Stefanos and Lane, Nicholas D},
  journal={International Conference on Computer-Aided Design (ICCAD)},
  year={2022}
}
```