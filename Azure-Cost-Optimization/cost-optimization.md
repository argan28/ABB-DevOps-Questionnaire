## Azure Cost Optimization Report

### Date: 16/02/2025  
### Prepared by: Arijit

## 1. Overview  
This document outlines cost optimization recommendations for Azure resources based on Azure Advisor's analysis.

### A. Rightsize Virtual Machines (VMs)  
**Issue:** Some VMs are underutilized (CPU < 5% usage).  
**Recommendation:**  
- Downgrade or resize VM SKU (Resize from `Standard_D4s_v4` → `Standard_D4s_v4`).  
- Use Auto-Shutdown to stop non-production VMs after work hours.  

**Estimated Savings:** 1678.46 USD (50%)

---

### B. Delete Unused Resources  
**Issue:** Unused disks, snapshots, and public IPs are incurring charges.  
**Recommendation:**  
- Identify and delete orphaned managed disks and unattached IPs.  
- Use Azure Policy to enforce automatic cleanup.  

**Estimated Savings:** 1023.50 USD

---

### C. Optimize Azure Storage Costs  
**Issue:** Some storage accounts are using Premium/Hot Tier, but data is rarely accessed.  
**Recommendation:**  
- Move infrequent-access data to Cool or Archive Tier.  
- Enable Lifecycle Management to auto-move blobs to lower tiers.  

**Estimated Savings:** 1344.36 USD

---

### D. Use Azure Reservations & Savings Plans  
**Issue:** Pay-as-you-go pricing is increasing cloud costs.  
**Recommendation:**  
- Purchase 1-year or 3-year Reserved Instances for predictable workloads.  
- Evaluate Azure Savings Plan for flexible pricing.  

**Estimated Savings:** 1100.87 USD

---

## 3. Next Steps  
- Implement recommended changes in a phased approach.  
- Review impact in Azure Cost Management + Billing.  
- Schedule periodic cost analysis (monthly/quarterly).

---

**Version:** 1.0  
**Last Updated:** 16/02/2025  
**Contact:** arijit.ganguly2017@gmail.com
