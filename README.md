# AWS VPC Peering with Terraform

This Terraform project creates two VPCs in AWS and establishes a peering connection between them, enabling secure communication across the VPCs.

## Architecture

- **VPC A**: 10.0.0.0/16 with subnet 10.0.1.0/24
- **VPC B**: 10.1.0.0/16 with subnet 10.1.1.0/24
- **VPC Peering**: Bidirectional connection with routing

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform >= 1.3.0 installed
- AWS provider >= 5.0

## Quick Start

1. Clone and navigate to the project:
```bash
cd vpc-peering-terraform
```

2. Copy and customize variables:
```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values
```

3. Initialize and apply:
```bash
terraform init
terraform plan
terraform apply
```

## Configuration

### Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `region` | AWS region | `us-east-1` |
| `vpc_a_cidr` | VPC A CIDR block | `10.0.0.0/16` |
| `vpc_b_cidr` | VPC B CIDR block | `10.1.0.0/16` |
| `subnet_a_cidr` | Subnet A CIDR | `10.0.1.0/24` |
| `subnet_b_cidr` | Subnet B CIDR | `10.1.1.0/24` |

### Outputs

- `vpc_a_id`: VPC A identifier
- `vpc_b_id`: VPC B identifier  
- `vpc_peering_connection_id`: Peering connection ID

## Testing

Deploy test EC2 instances in each VPC to verify connectivity:

```bash
# Test ping between instances
ping <private-ip-of-instance-in-other-vpc>
```

## Cleanup

```bash
terraform destroy
```

## Files Structure

```
vpc-peering-terraform/
├── main.tf              # Main configuration
├── vpc_a.tf            # VPC A resources
├── vpc_b.tf            # VPC B resources  
├── vpc_peering.tf      # Peering connection
├── variables.tf        # Input variables
├── output.tf          # Output values
├── versions.tf        # Provider versions
├── terraform.tfvars.example  # Example variables
└── README.md          # This file
```