# Terraform Setup for Wasabi S3-Compatible Buckets and IAM Policies

This repository provides a Terraform configuration to create and manage S3-compatible buckets, IAM policies, and user permissions on Wasabi (or any other S3-compatible service). 

## Overview

The configuration defines:
- **Five S3 Buckets**:
  - `sales-data-bucket`
  - `marketing-data-bucket`
  - `engineering-data-bucket`
  - `finance-data-bucket`
  - `operations-data-bucket`

- **IAM Policies**:
  - Read-write (RW) and read-only (RO) policies are created for each bucket, ensuring controlled access levels as required.
  
- **User Access**:
  - Users `alice`, `bob`, `charlie`, and `backup` are created, each with customized permissions:
    - **Alice**: Full access (RW) to sales, marketing; read-only (RO) access to engineering.
    - **Bob**: Full access (RW) to all buckets.
    - **Charlie**: Full access (RW) to operations; read-only (RO) access to finance.
    - **Backup**: Read-only (RO) access to all buckets.
