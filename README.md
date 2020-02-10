# SouthStrategicOps

This is the "Opportunities as Code" (OaC) repository for the South Strategic team

An OaC file defines the current state of a sales opportunity. It tracks:
1. The organization - executives, buyers, champions, technical leaders, managers, trusted practioners and partners
2. The opportunity's qualifying indicators - BANT, MEDDIC, drivers/needs/pain/requirements, advantages and red flags
3. The net promoter status of all individuals in the organization, other than champions and partners
4. The influence scale of all champions and partners in the opportunity
5. All of the influence relationships between individuals in the organization
6. All of the intelligence relationships between individuals in the orgainization and qualifying indicators

The file is in the "dot" format used by Graphviz. To create an "Opportunity Map", edit your OaC file and execute the following command (example outputs a PNG image) -

     dot -Tpng <OaC_file_name>.dot -o <output_file_name>.png

Notes:
1. Only one product should be tracked in this file (TFE, Vault, Consul or Nomad).
2. The AE is responsible for discovering and recording all of the information that goes into this file.
3. The SE is responsible for updating this file with that information, managing it in Git, and generating the Opportunity Maps.
4. This must be an acyclic graph, i.e. two people can't influence each other (influence should flow up the org hierarchy).
5. Leverage the company's org chart, although influencers don't need to report to the individual they influence.

To install Graphviz on your Mac, and the dot executable, execute -

     brew install graphviz  

Leverage the example.dot file as a template for your opportunities OaC file. It has all the key information and conventions.
Reference the legend.png file for information about symbols and colors.
 
