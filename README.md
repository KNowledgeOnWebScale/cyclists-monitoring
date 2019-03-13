# Personalized real-time feedback for amateur cyclists on low-end devices

This repository contains code and data related to the research on how to give personalized real-time feedback to amateur cyclists on low-end devices, using Semantic Web technologies. This research is executed at the [IDLab](http://idlab.technology) research group, by people from [Ghent University](https://www.ugent.be/en) – [imec](https://www.imec-int.com/en/home).

## Contents

The contents of this repository are related to two research publications.

### Personalized real-time monitoring of amateur cyclists on low-end devices: proof-of-concept & performance evaluation (2018)

This paper has been presented in April 2018 at the [Web Stream Processing workshop](http://www.webstreams.eu/wsp/2018/) at [The Web Conference 2018](https://www2018.thewebconf.org/) and is available via [this link](https://doi.org/10.1145/3184558.3191648). The paper presents a first proof-of-concept (PoC) of a system providing real-time personalized feedback to amateur cyclists using a Raspberry Pi. In this PoC, real-time feedback about the user's heart rate and heart rate training zones is given through a web application. The performance & scalability of this platform are evaluated on the Raspberry Pi.

The code and data related to the proof-of-concept and performance evaluation, are available in the [`poc-&-performance-evaluation`](poc-&-performance-evaluation) folder.

### Personalized real-time cycling feedback during amateur training: a virtual training demo (2019)

This paper has been submitted to the demo track of the [Extended Semantic Web Conference (ESWC) 2019](https://2019.eswc-conferences.org/) and is currently under review. This paper specifically focuses on the use case of an individual amateur cyclist that executes a training. The paper presents an architecture of a solution providing feedback to such a cyclists (based on the PoC presented in the previous publication), and demonstrates this solution with a tablet demo that allows a user to execute a virtual amateur cycling training.

The online demo page is available on [this link](https://ibcnservices.github.io/cyclists-monitoring/). The demo data (cycling ontology, context data, C-SPARQL queries) is available in the [`virtual-training-app-demo`](virtual-training-app-demo) folder.

## CONAMO project

This research is largely conducted as a part of the imec ICON project [CONAMO](https://www.imec-int.com/en/what-we-offer/research-portfolio/conamo) (CONtinuous Athlete MOnitoring). CONAMO is funded by imec, VLAIO, Rombit, Energy Lab and VRT.

## Contact
 
The main contact person directly involved with this research is [Mathias De Brouwer](https://www.linkedin.com/in/mathiasdebrouwer/). In case of any remarks or questions, you can send an email to mrdbrouw.DeBrouwer@UGent.be or [create a GitHub issue](../../issues/new).
