############
Introduction
############

UDR is composed of a series of libraries. A library can be published by ESTA or a third party, and
contain information that helps represent devices made by various manufacturers in a standard way.

UDR libraries are defined in *UDR documents*. UDR documents define an object model, similar to the
`Document Object Model`__ used in web development. This object model can be translated to and from
markup languages like XML or JSON for transmission and storage.

__ https://en.wikipedia.org/wiki/Document_Object_Model

**********
Interfaces
**********

Interfaces define a contract of behavior for some portion of a device's functionality. They provide
a standardized way of controlling and/or observing some atomic portion of functionality on a device.
Interfaces enable the representation of the hierarchy of a device, and provide a mechanism for
grouping modular functionality. Interfaces are not intended to group properties by use case e.g. 
visualizers.

An example of an interface hierarchy would be a color interface, containing two child interfaces:
additive color mixing and a fixed color wheel.

**********
Properties
**********

A property is a single controllable and/or observable piece of data. Properties standardize how data
is interpreted, how data can be accessed, and any constraints on the value of data.

**********************
Definition vs Instance
**********************

Both interfaces and properties can appear in two ways in a UDR document: as a definition or as an
instance. An interface or property *definition* provides an abstract description of that interface
or property which applies to all *instances*.

*********
Libraries
*********

A UDR library consists of a collection of related interface and property definitions, and/or device
definitions. Examples of possible libraries are a collection of color control methods or a group of
new lighting devices from a specific manufacturer in 2021.