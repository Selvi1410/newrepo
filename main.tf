resource "aws_instance" "myec2" {
  ami = var.ec2_ami_id
  instance_type = var.instance_type
  tags = {
    Owner       = "user"
    Environment = "dev"
    Name = " var.instance_name"
    Project = "Data Ingestion - Batch 1"
    SecurityZone = "Zone 3B"
    Description = "Snaplogic VM"
    MarketPlaceAMI ="N"
    CostCentre ="DnA"
    Environment = "Workload Production Platform"
    Application = "Data Ingestion - Batch 1"
    Program = "Data Ingestion - Batch 1"
    Shutdown = "None"
    Owner = "var.owner_name"
    Portfolio = "Workday"
    Backup = "Daily1600"
    MonthlyPatching = "Linux_Prod"
    TicketNumber = "SCTASK0428011"
  }
 
}
