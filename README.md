# SouthStrategicOps
"Opportunities as Code" (OaC) repository for the South Strategic team

An OaC file defines the current state of a sales opportunity. It tracks:
1. The organization - executives, buyers, champions, technical leaders, managers, trusted practioners and partners
2. The opportunity's qualifying indicators - BANT, MEDDIC, drivers/needs/pain/requirements, advantages and red flags
3. The net promoter status of all individuals in the organization, other than champions and partners
4. The influence scale of all champions and partners in the opportunity
5. All of the influence relationships between individuals in the organization
6. All of the intelligence relationships between individuals in the orgainization and qualifying indicators

The file is in the "dot" format used by Graphviz. To create an "Opportunity Chart", edit your OaC file and execute the following command (example outputs a PNG image) -

  dot -Tpng <OaC_file_name>.dot -o <output_file_name>.png
  

