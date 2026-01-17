---
layout: post
title: >
    It's always personal: Using Early Exits for Efficient On-Device CNN Personalisation
description: >
    On-device machine learning is becoming a reality thanks to the availability of powerful  hardware
    and model compression techniques. Typically, these models are pretrained on large GPU clusters and have enough parameters to generalise across a wide variety of inputs.
    In this work, we observe that a much smaller, personalised model can be employed to fit a specific scenario, resulting in both higher accuracy and faster execution.
    Nevertheless, on-device training is extremely challenging, imposing excessive computational and memory requirements even for flagship smartphones. At the same time, on-device data availability might be limited and samples are most frequently unlabelled.

    To this end, we introduce PersEPhonEE, a framework that attaches early exits on the model and personalises them on-device. These allow the model to progressively bypass a larger part of the computation as more personalised data become available. Moreover, we introduce an efficient on-device algorithm that trains the early exits in a semi-supervised manner at a fraction of the whole network's personalisation time.
    Results show that PersEPhonEE boosts accuracy by up to 15.9% while dropping the training cost by up to 2.2x
    and inference latency by 2.2-3.2x on average for the same accuracy, depending on the availability of labels on-device.
accent_image:
  background: url('/assets/img/blog/research.jpg') top/cover
  overlay: true
invert_sidebar: false
sitemap: false
hide_last_modified: true
---

**Authors:** I. Leontiadis\*, **S. Laskaridis**\*, S. I. Venieris\*, N. D. Lane

**Published at:** International Workshop on Mobile Computing Systems and Applications (HotMobile'21)_

## Overview

![persephonee](/assets/img/blog/persephonee/persephonee-overview.png)

With PersEPhonEE, we explored how early exits can accelerate on-device personalization. We attached exits to a shared CNN backbone and personalized them locally, allowing inference to terminate earlier as the model becomes better adapted to an individual user.

We also introduced an efficient semi-supervised training strategy to reduce labeling and compute costs. The result is higher accuracy with substantially lower training and inference overhead during personalization.


## Links

* [paper](https://dl.acm.org/doi/abs/10.1145/3446382.3448359)
* [preprint](https://arxiv.org/abs/2102.01393)

