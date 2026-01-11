# 8086 Hardware-Level Transaction Simulator

## Overview
This project is a conceptual simulation developed in 8086 Assembly to study
instruction-level execution, register usage, and interrupt control in a
hardware-oriented environment.

The goal of the project is to understand how low-level mechanisms can be used
to model critical sections and atomic-style behavior.

---

## Core Concepts Explored
- Register-level arithmetic and data movement
- Stack usage and program flow
- Interrupt control using CLI/STI instructions
- Modeling critical sections at the instruction level

---

## Transaction Model
The simulator represents a simplified transaction flow where:
- Interrupts are disabled during a critical update phase
- Shared state is modified in a controlled manner
- Interrupts are restored after the operation completes

This approach mirrors how atomicity concepts are reasoned about at the
hardware–software boundary.

---

## Scope & Intent
This project is intended for educational purposes to reinforce concepts from
computer organization and low-level systems programming.

It is not a real banking system or hardware emulator, but a focused study of
how correctness and consistency can be reasoned about at the assembly level.
