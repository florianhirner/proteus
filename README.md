# Proteus

This is a repository for the paper "Proteus: A Pipelined NTT Architecture Generator" (https://ia.cr/2023/267). 

It includes a tool to generate parametric Radix-2 Single-path Delay Feedback (SDF) and Multi-path Delay Commutator (MDC) architectures for FPGAs.

This repository provides the source code of Proteus, a tool to generate parametric Radix-2 Single-path Delay Feedback (SDF) and Multi-path Delay Commutator (MDC) architectures for FPGAs.

All content of this repo is for academic research use only. It does not come with any support, warranty, or responsibility.

# Structure of this Repo

The repository is structured into two main folders, namely `toolchain` and `vivado_projects`. The first folder `toolchain` contains all source code files to generate test vectors via python (`toolchain`) as well as all Verilog/SystemVerilog files required to generate a Radix-2 SDF or MDC architecture (`hw`). The second folder `vivado_projects` contains the project files for Radix-2 SDF and MDC. 

# Parameters of Proteus

We have declared all of the parameters within the header file `proteus/toolchain/hw/parameters.vh`. The user can adopt a variety of parameters depending on the use case, like `LOGQ`, `LOGN`, `TYPE_RED`, `IS_Q_FIXED`, `Q`, and many more. A list of all parameters can be found in the table below. 

| NAME | TYPE | VALUE |
|---|---|---|
| LOGQ | int | >=16 |
| LOGN | int | >=2 |
| TYPE_RED | int | 0=SPARSE; 1=WORD-LEVEL MONTGOMERY |
| IS_Q_FIXED | int | 0=FIXED, 1=VARIABLE |
| Q | int | f.e. 28'd268369921, 64'd9223372036855300097, ... |
| BTF_GS | int | 0=Cooley-Tukey, 1=Gentleman-Sande |
| DELAY-SPECIFIC |
| - DELAY_ADD | int | >=1 (must be the same as DELAY_SUB) |
| - DELAY_SUB | int | >=1 (must be the same as DELAY_ADD) |
| - DELAY_MUL | int | >=1 |
| - DELAY_RED | int | >=1 |
| - DELAY_DIV2 | int | >=1 |
| - DELAY_BRAM | int | >=1 |
| - DELAY_BROM | int | >=1 |
| - DELAY_FIFO | int | >=1 |
| DSP-SPECIFIC |
| - DSP_W | int | 24<=x<=28 (in case of Xilinx FPGA) |
| - DSP_H | int | 14 (in case of Xilinx FPGA) |
| MONTGOMERY-SPECIFIC |
| - W | int | >=1 (word size) |
| - L | int | >=1 (montgomery loop count (calculated as $ceil(LOGQ/W)) |
| - MULLAT | int | >=1 (latency of multiply and add units) |
| - ADDPIP | int | 0 (0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined) |
| - R_w | int | (must be multiplied with output of montgomery reduction unit) |
| - TOTAL_LATENCY | int | (Summation of all the latencies above) |


All of these parameters can be adapted by the user. The user must take care of a correct adaption in case of changing submodules with self-created sub-modules, like adders, multipliers, and others. 

TODO: Add parameter definitions 

TODO: Add two example parameter set as examples for user 

# Example of generated architecture via Proteus

Proteus takes its parameters before synthesizing the target architecture. Specifically, for SDF and MDC architectures, it takes 

  (i) polynomial parameters (polynomial size n and coefficient modulus size log_2(q),
  
  (ii) type of butterfly unit (CT, GS or unified) that enables NTT configurations OP1 to OP8, 
  
  (iii) type of modular reduction method (parametric Montgomery unit or user-defined add-shift based unit for constant prime). For a given parameter set, it generates a synthesizable NTT architecture

In the case of Radix2 SDF, the architecture will look like the figure presented below:

![Radix2 SDF](radix2_sdf.pdf)

In the case of Radix2 MDC, the architecture will look like the figure presented below:

![Radix2 MDC](radix2_mdc.pdf)

A more detailed overview of all the submodules can be found within our paper.

# Running Proteus

## Run python scripts

We prepared a toolchain that can be used to verify the functionality of the generated hardware. To generate your own test cases for a certain architecture and option you need to execute:

``
/bin/python3 /home/fhirner/Desktop/proteus/toolchain/py/ntt_demo.py <NTT_TYPE> <RADIX_TYPE> <OP> <LOGN> <LOGQ> <REDUCTION_TYPE>
``

In the case of Radix-2 MDC OP 5 with a polynomial-size of 2^4 and a coefficient size of 64-bit that uses an add-shift-based modular reduction; use: 

``
/bin/python3 /home/fhirner/Desktop/proteus/toolchain/py/ntt_demo.py NORMAL MDC 5 4 64 ADDSHIFT
``


## Run Vivado projects

We already prepared a Vivado project for each option of Proteus to simplify usage. You first have to source all Vivado-related scripts via 

```
source /opt/Xilinx/Vivado/2019.1/settings64.sh
source /opt/Xilinx/SDK/2019.1/settings64.sh
```

After sourcing all related scripts you need to start with the appropriate project file. This can be done by using:  

``
vivado -source vivado_projects/sdf/ntt_op_1_2/project_1/project_1.xpr
``

The command above starts Vivado with Radix-2 SDF options 1 and 2, which can take up to a few seconds. Now you can either start a simulation, synthesis, or implementation run. If you want to use the test cases generated by the toolchain to verify the behavior you just need to click `Run Simulation` on the left toolbar of vivado. This will open a simulation form that runs the simulation behavior. We already prepared a waveform to simplify the process.


# Verification of NTT/INTT and MNTT/MINTT Python models

The functional correctness of Proteus-generated hardware is verified using NTT/INTT and MNTT/MINTT Python models. In order to verify the correctness of these models, we performed:

* Implemented polynomial multiplication operation using our NTT/INTT and MNTT/MINTT Python models. (`/toolchain/py/ntt_sanity_check.py`)

* Implemented polynomial multiplication operation using built-in Sage functions. (`/toolchain/py/ntt_sanity_check.sage`)

* Verified polynomial multiplication based on our Python models and Sage generated the same results.

Go to `/toolchain/py/` and run `ntt_sanity_check.py` using Python. It will generate input and output files for polynomial multiplication operation in `/toolchain/py/ntt_sanity_check/`. Then, run `ntt_sanity_check.sage` using Sage, which will read these files, perform polynomial multiplication and compare results. If both results match, you should observe the following console output.

```
NTT/INTT sanity check: PASSED...
MNTT/MINTT sanity check: PASSED...
```

# Contributors

Florian Hirner - `florian.hirner@iaik.tugraz.at`

Ahmet Can Mert - `ahmet.mert@iaik.tugraz.at`

Sujoy Sinha Roy - `sujoy.sinharoy@iaik.tugraz.at`

The Authors are affiliated with the [Institute of Applied Information Processing and Communications](https://www.iaik.tugraz.at/), Graz University of Technology, Austria

-----

# License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Copyright (c) 2023 @ CryptoEngineering Group, TU Graz 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
