.. _standard-objects-import:

######
Import
######

An import element makes the contents of a :ref:`standard-objects-library` available for referencing
in the current context.

**********
Attributes
**********

Name
====

The **name** of an import is the class of the library that is being imported.

*******
Example
*******

.. code-block:: xml

  <!-- Import the contents of "org.esta.device.1" into the current file. -->
  <import name="org.esta.device.1" />
