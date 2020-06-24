.. _concepts-property-definition:

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

.. _concepts-property-definition-class:

Class
=====

A property's **class** is a string identifying an individual property definition. This string
must be unique within the :ref:`concepts-general-definition-list` that contains the property
definition.

.. _concepts-property-definition-description:

Description
===========

A string that describes the purpose of a property in human-readable language.

.. _concepts-property-definition-data-type:

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

.. _concepts-property-definition-unit:

Unit
====

A property's **unit** defines how the property's value should be interpreted. Units are only
well-defined for properties with data type *number*.

======================== ======================================================
Unit Identifier          Description
======================== ======================================================
degree-celsius           Temperature in Degrees Celsius
degree-fahrenheit        Temperature in Degrees Fahrenheit
volt-dc                  DC Voltage in Volts
volt-ac-peak             Peak AC Voltage in Volts
volt-ac-rms              RMS AC Voltage in Volts
amp-dc                   DC Current in Amperes
amp-ac-peak              Peak AC Current in Amperes
amp-ac-rms               RMS AC Current in Amperes
hertz                    Frequency in Hertz
ohm                      Resistance in Ohms
watt                     Power in Watts
kilogram                 Mass in Kilograms
meter                    Length or Position in Meters
square-meter             Area in Square Meters
cubic-meter              Volume in Cubic Meters
meter-per-second         Velocity in Meters per Second
meter-per-second-squared Acceleration in Meters per Second Squared
newton                   Force in Newtons
joule                    Energy in Joules
pascal                   Pressure in Pascals
second                   Time in Seconds
degree                   Angle in Degrees
steradian                Angle in Steradians
candela                  Luminous Intensity in Candela
lumen                    Luminous Flux in Lumens
lux                      Illuminance in Lux
ire                      Chrominance in IRE
byte                     Data Size in Bytes
percent                  Percentage of a Maximum Value
======================== ======================================================

.. _concepts-property-definition-minimum:

Minimum
=======

This attribute defines a minimum value for the property. It applies in different ways when combined
with different data types:

================== ===============================================
When applied to... Minimum indicates...
================== ===============================================
number             The number's minimum value.
string             The minimum length in characters of the string.
binary             N/A
boolean            N/A
enum               N/A
array              The minimum length of the array in elements.
================== ===============================================

.. _concepts-property-definition-maximum:

Maximum
=======

This attribute defines a maximum value for the property. It applies in different ways when combined
with different data types:

Maximum when applied to...

================== ===============================================
When applied to... Maximum indicates...
================== ===============================================
number             The number's maximum value.
string             The maximum length of the string in characters.
binary             N/A
boolean            N/A
enum               N/A
array              The maximum length of the array in elements.
================== ===============================================

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``propertydef``
    * Attributes:

      * ``class``: :ref:`concepts-property-definition-class`
      * ``description``: :ref:`concepts-property-definition-description`
      * ``data_type``: :ref:`concepts-property-definition-data-type`
      * ``unit``: :ref:`concepts-property-definition-unit`
      * ``minimum``: :ref:`concepts-property-definition-minimum`
      * ``maximum``: :ref:`concepts-property-definition-maximum`
    
    Example:

    .. code-block:: xml

      <propertydef 
        class="strobe-frequency"
        description="Strobe frequency"
        data_type="number"
        unit="hertz"
        minimum="0.1"
        maximum="1000" />

  .. tab:: JSON

    * Object Keys:

      * ``class``: :ref:`concepts-property-definition-class`
      * ``description``: :ref:`concepts-property-definition-description`
      * ``data_type``: :ref:`concepts-property-definition-data-type`
      * ``unit``: :ref:`concepts-property-definition-unit`
      * ``minimum``: :ref:`concepts-property-definition-minimum`
      * ``maximum``: :ref:`concepts-property-definition-maximum`

    Example:

    .. code-block:: json

      {
        "class": "strobe-frequency",
        "description": "Strobe frequency",
        "data_type": "number",
        "unit": "hertz",
        "minimum": 0.1,
        "maximum": 1000
      }
