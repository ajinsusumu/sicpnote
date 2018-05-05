# Structure and Interpretation of Computer Programs

Second Edition

by Harold Abelson and Gerald Jay Sussman, with Julie Sussman

foreword by Alan J. Perlis

(C) 1996 Massachusetts Institute of Technology


* Dedication::       Dedication
* Foreword::         Foreword
* Preface::          Preface to the Second Edition
* Preface 1e::       Preface to the First Edition
* Acknowledgements:: Acknowledgements

The author thanks to the unknown translators. Maybe the translation is done without prior permission.

## Chapter 1::        Building Abstractions with Procedures

This chapter deals mainly with numerical algorithms. The data type are numbers.
Many mathematical problems and the solving techniques are discussed.

## Chapter 2::        Building Abstractions with Data

This chapter intrduces data structures that are more complex than numbers. rational numbers and even pictures are introduced.

* Chapter 3::        Modularity, Objects, and State

This chapter introduces the mutable variables.
The most interesting part is the _stream_ data structure which can deal with infite data series.

* Chapter 4::        Metalinguistic Abstraction

This chapter introduces the eval/apply implementations which implements scheme in scheme.
It also introduces database concepts and also the logic programming.

* Chapter 5::        Computing with Register Machines

This chapter introduces the register machine low-level modeling.
It shows how to implement tail recursion optimization (maybe actually introduced in chapter 4)

* References::       References
* Index::            Index


Programming in Lisp

* 1-1::              The Elements of Programming
* 1-2::              Procedures and the Processes They Generate
* 1-3::              Formulating Abstractions with Higher-Order Procedures

The Elements of Programming

* 1-1-1::            Expressions
* 1-1-2::            Naming and the Environment
* 1-1-3::            Evaluating Combinations
* 1-1-4::            Compound Procedures
* 1-1-5::            The Substitution Model for Procedure Application
* 1-1-6::            Conditional Expressions and Predicates
* 1-1-7::            Example: Square Roots by Newton's Method

Newton's Method is the first example of the numerical methods used in this book.

* 1-1-8::            Procedures as Black-Box Abstractions

Procedures and the Processes They Generate

* 1-2-1::            Linear Recursion and Iteration

Iteration: factorial
Linear recursion: improved factorial (with states as arguments)

* 1-2-2::            Tree Recursion

The example of Tree Recursion is the Fibonacci numbers.
It is not easy to transform to iteration.
But there are more discussions on Fibonacci later in this book.
Some optimization mechanisms can be used.

* 1-2-3::            Orders of Growth
* 1-2-4::            Exponentiation

This section introduces the bipartite method to divide the problem and save time.
There's a Russia Peasant Multiplication which uses this kind of mechanism and has been used since thousands years ago.

* 1-2-5::            Greatest Common Divisors

This is also called Euclid's algorithm. It is very old and may be invented by the Greek.


#### 1-2-6            Example: Testing for Primality

Here introduces the Fermat test. It is the probabilistic test.

Formulating Abstractions with Higher-Order Procedures

* 1-3-1::            Procedures as Arguments
* 1-3-2::            Constructing Procedures Using `Lambda'
* 1-3-3::            Procedures as General Methods
* 1-3-4::            Procedures as Returned Values

Building Abstractions with Data

* 2-1::              Introduction to Data Abstraction
* 2-2::              Hierarchical Data and the Closure Property
* 2-3::              Symbolic Data
* 2-4::              Multiple Representations for Abstract Data
* 2-5::              Systems with Generic Operations

Introduction to Data Abstraction

* 2-1-1::            Example: Arithmetic Operations for Rational Numbers
* 2-1-2::            Abstraction Barriers
* 2-1-3::            What Is Meant by Data?
* 2-1-4::            Extended Exercise: Interval Arithmetic

Hierarchical Data and the Closure Property

* 2-2-1::            Representing Sequences
* 2-2-2::            Hierarchical Structures
* 2-2-3::            Sequences as Conventional Interfaces
* 2-2-4::            Example: A Picture Language

Symbolic Data

* 2-3-1::            Quotation
* 2-3-2::            Example: Symbolic Differentiation
* 2-3-3::            Example: Representing Sets
* 2-3-4::            Example: Huffman Encoding Trees

Multiple Representations for Abstract Data

* 2-4-1::            Representations for Complex Numbers
* 2-4-2::            Tagged data
* 2-4-3::            Data-Directed Programming and Additivity

Systems with Generic Operations

* 2-5-1::            Generic Arithmetic Operations
* 2-5-2::            Combining Data of Different Types
* 2-5-3::            Example: Symbolic Algebra

Modularity, Objects, and State

* 3-1::              Assignment and Local State
* 3-2::              The Environment Model of Evaluation
* 3-3::              Modeling with Mutable Data
* 3-4::              Concurrency: Time Is of the Essence
* 3-5::              Streams

Assignment and Local State

* 3-1-1::            Local State Variables
* 3-1-2::            The Benefits of Introducing Assignment
* 3-1-3::            The Costs of Introducing Assignment

The Environment Model of Evaluation

* 3-2-1::            The Rules for Evaluation
* 3-2-2::            Applying Simple Procedures
* 3-2-3::            Frames as the Repository of Local State
* 3-2-4::            Internal Definitions

Modeling with Mutable Data

* 3-3-1::            Mutable List Structure
* 3-3-2::            Representing Queues
* 3-3-3::            Representing Tables
* 3-3-4::            A Simulator for Digital Circuits
* 3-3-5::            Propagation of Constraints

Concurrency: Time Is of the Essence

* 3-4-1::            The Nature of Time in Concurrent Systems
* 3-4-2::            Mechanisms for Controlling Concurrency

Streams

* 3-5-1::            Streams Are Delayed Lists
* 3-5-2::            Infinite Streams
* 3-5-3::            Exploiting the Stream Paradigm
* 3-5-4::            Streams and Delayed Evaluation
* 3-5-5::            Modularity of Functional Programs and Modularity of
                     Objects

Metalinguistic Abstraction

* 4-1::              The Metacircular Evaluator
* 4-2::              Variations on a Scheme -- Lazy Evaluation
* 4-3::              Variations on a Scheme -- Nondeterministic Computing
* 4-4::              Logic Programming

The Metacircular Evaluator

* 4-1-1::            The Core of the Evaluator
* 4-1-2::            Representing Expressions
* 4-1-3::            Evaluator Data Structures
* 4-1-4::            Running the Evaluator as a Program
* 4-1-5::            Data as Programs
* 4-1-6::            Internal Definitions
* 4-1-7::            Separating Syntactic Analysis from Execution

Variations on a Scheme -- Lazy Evaluation

* 4-2-1::            Normal Order and Applicative Order
* 4-2-2::            An Interpreter with Lazy Evaluation
* 4-2-3::            Streams as Lazy Lists

Variations on a Scheme -- Nondeterministic Computing

* 4-3-1::            Amb and Search
* 4-3-2::            Examples of Nondeterministic Programs
* 4-3-3::            Implementing the `Amb' Evaluator

Logic Programming

* 4-4-1::            Deductive Information Retrieval
* 4-4-2::            How the Query System Works
* 4-4-3::            Is Logic Programming Mathematical Logic?
* 4-4-4::            Implementing the Query System

Implementing the Query System

* 4-4-4-1::          The Driver Loop and Instantiation
* 4-4-4-2::          The Evaluator
* 4-4-4-3::          Finding Assertions by Pattern Matching
* 4-4-4-4::          Rules and Unification
* 4-4-4-5::          Maintaining the Data Base
* 4-4-4-6::          Stream Operations
* 4-4-4-7::          Query Syntax Procedures
* 4-4-4-8::          Frames and Bindings

Computing with Register Machines

* 5-1::              Designing Register Machines
* 5-2::              A Register-Machine Simulator
* 5-3::              Storage Allocation and Garbage Collection
* 5-4::              The Explicit-Control Evaluator
* 5-5::              Compilation

Designing Register Machines

* 5-1-1::            A Language for Describing Register Machines
* 5-1-2::            Abstraction in Machine Design
* 5-1-3::            Subroutines
* 5-1-4::            Using a Stack to Implement Recursion
* 5-1-5::            Instruction Summary

A Register-Machine Simulator

* 5-2-1::            The Machine Model
* 5-2-2::            The Assembler
* 5-2-3::            Generating Execution Procedures for Instructions
* 5-2-4::            Monitoring Machine Performance

Storage Allocation and Garbage Collection

* 5-3-1::            Memory as Vectors
* 5-3-2::            Maintaining the Illusion of Infinite Memory

Registers and operations

* 5-4-1::            The Core of the Explicit-Control Evaluator
* 5-4-2::            Sequence Evaluation and Tail Recursion
* 5-4-3::            Conditionals, Assignments, and Definitions
* 5-4-4::            Running the Evaluator

An overview of the compiler

* 5-5-1::            Structure of the Compiler
* 5-5-2::            Compiling Expressions
* 5-5-3::            Compiling Combinations
* 5-5-4::            Combining Instruction Sequences
* 5-5-5::            An Example of Compiled Code
* 5-5-6::            Lexical Addressing
* 5-5-7::            Interfacing Compiled Code to the Evaluator

