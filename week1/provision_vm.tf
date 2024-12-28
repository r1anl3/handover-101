# This is VM specification

terraform {
  required_version = ">= 0.14.4"
  required_providers {
    vmworkstation = {
      source  = "elsudano/vmworkstation"
      version = "1.0.4"
    }
  }
}

resource "vmworkstation_vm" "test_machine" {
  sourceid     = "Ubuntu 22.04"
  denomination = "ubuntu-2204-vm"
  description  = "This is VM used for handover 101"
  path         = "ISO/ubuntu-22.04.4-desktop-amd64.iso"
  processors   = 2
  memory       = "4 GiB"
  disk         = "20 GiB"
}