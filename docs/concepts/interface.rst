#########
Interface
#########

An interface describes a behavior contract for a feature of a device. An **interface definition**
provides information about how to interact with the interface and the contract the interface
defines. An interface definition defines several attributes about an interface.

*********************
Definition Attributes
*********************

Definition attributes are part of the interface definition; they apply to all *instances* of the
interface.

Name
====

An interface's **name** is a unique string identifying an individual interface definition.


*******************
Instance Attributes
*******************

Instance attributes are per-interface-instance; they can vary between instances of the interface.

Id
==

The **id** is a unique string identifying this interface instance. The string must be unique within
a device definition.

****************
Allowed Children
****************

Interface instances can have the following children:

* Interface Instance
* Property Instance
* Tag
