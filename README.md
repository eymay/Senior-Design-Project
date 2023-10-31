# Senior Design Project of Electronics & Communication Eng. B.Sc. 

This repository contains all of the development of the Senior Design Project and its thesis. The thesis titled "Supporting Custom Instructions with the LLVM Compiler for RISC-V Processor" can be found [here](https://arxiv.org/pdf/2310.18353.pdf). We welcome questions and suggestions through issues.

## Build from source 

Install prerequisites (Assuming an Ubuntu machine):
```shell
sudo apt install latexmk texlive-full
```
`texlive-full` will install all of the LaTeX packages which will make working with LaTeX easier.

Clone the repository to local Linux machine. 
```shell
git clone https://github.com/eymay/Senior-Design-Project
```
Change directory to `thesis` and build the LaTeX file. 
```shell
cd Senior-Design-Project/thesis
latexmk -pdf interimreport.tex
```

## VS Code
LaTeX Workshop extension can be installed which runs the commands simmilar to the mentioned shell commands.

