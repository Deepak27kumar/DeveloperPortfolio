
# Linux System Profile

**Name:** Deepak Kumar  
**Roll Number:** 2601730444  
**University:** KR Mangalam University  
**Batch:** 2026–2030  

## 1. System Hardware and Software Specifications

The following table contains the hardware and software specifications of my workstation collected using Linux commands.

| Component | Specification |
|---|---|
| CPU Model Name | AMD Ryzen 7 7445HS with Radeon 740M Graphics |
| Number of CPU Cores | 6 Physical Cores |
| Logical CPUs | 12 |
| Total RAM | 5.4 GiB |
| Used RAM | 538 MiB |
| Available RAM | 4.9 GiB |
| Primary Storage Size | 1 TB Virtual Disk |
| Storage Type | Virtual Disk (physical type not verified) |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |
| Architecture | x86_64 |

### Commands Used

```bash
lscpu
free -h
lsblk -o NAME,SIZE,ROTA,TYPE,MODEL
cat /etc/os-release
uname -a
```

## 2. Binary Number Representation

### A. Decimal to Binary Conversion (75)

To convert decimal 75 into binary, repeatedly divide the number by 2 and record the remainder.

| Division | Quotient | Remainder |
|---|---|---|
| 75 ÷ 2 | 37 | 1 |
| 37 ÷ 2 | 18 | 1 |
| 18 ÷ 2 | 9 | 0 |
| 9 ÷ 2 | 4 | 1 |
| 4 ÷ 2 | 2 | 0 |
| 2 ÷ 2 | 1 | 0 |
| 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top:

**75 (Decimal) = 1001011 (Binary)**

### B. Binary to Decimal Conversion (110101)

Using the positional weight method:

110101₂

= (1 × 2⁵) + (1 × 2⁴) + (0 × 2³) + (1 × 2²) + (0 × 2¹) + (1 × 2⁰)

= 32 + 16 + 0 + 4 + 0 + 1

= **53 (Decimal)**

### C. Why Computers Use Binary

Computers use binary internally because electronic circuits can reliably represent two states, ON (1) and OFF (0), making binary an efficient and dependable way to process and store information.

## 3. Conclusion

Through this practical assignment, I learned how to collect hardware and operating system information using Linux commands and understand the conversion between decimal and binary number systems.

I performed this practical using Ubuntu running through Windows Subsystem for Linux 2 (WSL2).
