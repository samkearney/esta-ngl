###################
Property Definition
###################

A property represents a single piece of data related to a device. A **property definition** provides
information about how to read (and write, if supported) the data associated with a property. A
property definition defines several attributes about a property.

**********
Attributes
**********

Definition attributes are part of the property definition; they apply to all *instances* of the
property.

Type
====

A property's **type** is a unique string identifying an individual property definition.

Value
=====

A property's **value** is the data stored by a property. Depending on the property's
:ref:`lifetime<Property Access and Lifetime>`, a property's value may be retrievable from an
individual instance of a device, or may be the same across all instances of a device.

Data Type
=========

A property's **data type** specifies how to interpret the data stored with the property.

The possible data types are:

======= =======================================================
number  A numeric value, either integral or floating point.
string  A UTF-8 string.
binary  Opaque binary data.
boolean A boolean value (true or false).
enum    A set of meaningful names assigned to numeric values.
array   An array of values, all of which must be the same type.
======= =======================================================

Unit
====


Minimum
=======


Maximum
=======

***********************************
Standard vs Non-Standard Properties
***********************************

**Standard** properties are defined by the Next-Gen Library standard. Their property definitions
are immutable and do not appear in Next-Gen Library markup.

**Non-Standard** properties are defined by a Next-Gen Library document writer. Their property
definitions are present in the markup, since the definition is necessary to interpret a
previously-unknown property correctly.

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``propertydef``
    * Attributes:

      * ``type``: Type
      * ``data_type``: Data Type
      * ``unit``: Unit
      * ``minimum``: Minimum
      * ``maximum``: Maximum
    
    Example:

    .. code-block:: xml

      <propertydef type="esta.property.1" data_type="number" unit="hertz" minimum="0.1" maximum="1000">
      </propertydef>
