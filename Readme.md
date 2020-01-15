# Rex

## Goal

A [typesetting](https://en.wikipedia.org/wiki/Typesetting) system that is
- Portable: there will be a docker-image for all versions
- Learnable: Creating you first document should be straightforward, learning curve will be a sigmoid
- Inducing shareability: Strong package system which allows sharing functionality AND content. Creating a course text would ideally consist of selecting the content you want (including theorems, axioms, ...) and compiling the whole
- Powerfull: Content can be created with complex calculations
- Strongly Statically Typed: Type errors are shown
- Interpreted: Input is interpreted
- Developer centered: fine-grained caching (changing content of one container only reloads the internal representation of that container and it's dependencies), every environment can be rendered independently, no need to rerender the entire document for small changes
- Opiniated: Casings are fixed
- Automatable: built-in system to build different versions
- Translatable: has a built-in translation system, also spell check
- Versatile: Many output types: html, pdf, react, ...

## Terminology
- Rex: The typesetting system
- Document: Something that should rendered as a whole
- Container: Containers contain elements that form a whole
- Function: Functions convert input value to output values and can have side effects, like changing settings
- Processor: Processors that handle producing the output 
- Content: The real content / information that will be in the document. 

## Types
- Integer: escaped with backslash and containing a digit after the backslash
- Double: escaped with backslash and containing a digit after the backslash and containing a dot (before the next space)
- Boolean: \T or \F
- Container: scoped eg L. 
- Content: `REX.CONTENT` is a special construct that groups it's content and can have a name / label, every container is a Content, every text is a content
- Function: scoped eg REX.
- String: everything else
- Union-type: type1 | type2
- Number: Integer | Double
- MathFormula: `REX.MATH` container`

## Escaping
The backslash character is used to escape

## Packages
- Have a unique name
- Can contain Containers, Functions and Content
- Import statements do not exist
    - If a package is reference (NAME.), it is 'installed' and imported
    - File containing dependencies is automatically updated
- Git is used as the package-repository, release tags are used to get the right versions
    - Github
    - Gitlab
    - ...

### Packages managed by the Rex team itself
- REX package:
    - Contains basic building blocks
        - Basic Processors
        - REX.DOCUMENT
        - REX.P
        - REX.SECTION{depth}
        - REX.TABLE
        - REX.LIST{nummering}
        - REX.MATH{inline}
- SC package:
    - Science Content
    - Contains community driven content
    - GOAL: create uniform content in courses

## Rex Project
### Folder structure

#### Containers
All files placed in the 'containers' folder are examined to find user defined containers.
Containers contain elements that form a whole
Containers should be named in SCREAM CASING.
The containers declared outside a scope, can be used with L.NAME
The containers defined by the system, are declared in the REX scope. e.g REX.DOCUMENT

#### Functions
All files placed in the 'functions' folder are examined to find user defined functions.
Functions convert input value to output values and can have side effects, like changing settings

The arguments can be optional (= have a default value) or mandatory
Calling a function means passing a value for all mandatory arguments and optionally passing a value for optional arguments

The functions defined by the system, are declared in the REX scope. e.g REX.setSetting
The functions declared outside a scope, can be used with L.nameFunction

Functions should be named in camelCasing

#### Content
All files placed in the 'content' folder are examined to find user defined content.
Usefull to share content between documents

#### Documents
All files placed in the 'documents' folder are examined to find documents that can be rendered.

## TODO
- Specify syntax for function, containers and content
- Specify other language parts: calculations, variables, loops,...
- Add Basic outline of REX package
- Create a simple lexer for the basic stuff
- Create a basic interpreter
- Generate simple HTML
- Generate a react version
- Generate a react pdf
- Generate tex code voor pdf?
- Create 'TexCommand' which passes it's options to tex ?
- LICENSE
