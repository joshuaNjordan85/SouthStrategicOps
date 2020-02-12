# SouthStrategicOps

This is the "Opportunities as Code" (OaC) repository for the South Strategic team

An OaC file defines the current state of a sales opportunity. It tracks:
1. The organization - executives, buyers, champions, technical leaders, managers, trusted practioners and partners
2. The opportunity's qualifying indicators - BANT, MEDDPICC, drivers/needs/pain/requirements, force multipliers and red flags
3. The Net Promoter status of all individuals in the organization, other than champions and partners
4. The amount of influence for all champions and partners in the opportunity
5. All of the influence relationships between individuals and partners
6. All of the intelligence relationships between individuals and indicators

You need Graphviz. To install it on your Mac, and the dot executable, execute:

```
brew install graphviz  
```

Leverage the example.dot file as a template for your opportunities OaC file. It has all the key information and conventions.

Reference the legend.png file for information about symbols and colors.

To generate the opp maps for all the dot files available, run the following command from the root of the directory:
```
. ./generatePNG.sh
```

The file is in the "dot" format used by Graphviz. To create an "Opportunity Map" for a single file you've created, edit your OaC file and execute the following command (example outputs a PNG image):

```
dot -Tpng <OaC_file_name>.dot -o <account>_<op_name>[_renewal<X>].png
```

Notes:
1. Only one product should be tracked in this file (TFE, Vault, Consul or Nomad).
2. The AE is responsible for discovering and recording/remembering all of the information that goes into this file, much of which is documented in the Account Plan, although the SE may also provide input.
3. The SE is responsible for updating this file with the info from step 2, managing this file in Git, and generating the Opportunity Maps periodically for internal use and management reviews.
4. Step 3 requires combining the info in step 2 with the "sources of intelligence" (who told us the information we used to fillout the Account Plan) and the subjective information regarding Net Promoter status and influence ratings.
4. This must be an acyclic graph, i.e. two people can't influence each other (influence should flow up the org hierarchy).
5. Leverage the company's org chart to describe the influence tree, but remember that influencers don't need to report to the individual they influence (you can have "dotted" line reporting).
