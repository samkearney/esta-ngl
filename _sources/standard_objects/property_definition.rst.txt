.. _standard-objects-property-definition:

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

.. _standard-objects-property-definition-class:

Class (Required)
================

A property's **class** is a string identifying an individual property definition. This string
must be unique within the :ref:`standard-objects-library` or interface definition that contains the property definition.

.. _standard-objects-property-definition-name:

Name (Required)
===============

A string containing the human-readable name of the property. This attribute could be used as the translation
key for properties of this class.

.. _standard-objects-property-definition-description:

Description
===========

A string that describes the purpose of a property in human-readable language.

.. _standard-objects-property-definition-data-type:

Data Type (Required)
====================

A property's **data type** specifies how to interpret the data stored with the property.

The possible data types are:

========= =======================================================
number    A numeric value, either integral or floating point.
string    A UTF-8 string.
binary    Opaque binary data.
boolean   A boolean value (true or false).
enum      A set of meaningful names assigned to numeric values.
array     An array of values, all of which must be the same type.
========= =======================================================

.. _standard-objects-property-definition-unit:

Unit (Required)
========================================

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

.. _standard-objects-property-definition-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``propertydef``
    * Attributes:

      * ``class``: :ref:`standard-objects-property-definition-class`
      * ``name``: :ref:`standard-objects-property-definition-name`
      * ``description``: :ref:`standard-objects-property-definition-description`
      * ``data_type``: :ref:`standard-objects-property-definition-data-type`
      * ``unit``: :ref:`standard-objects-property-definition-unit`
    
    Example:

    .. code-block:: xml

      <propertydef 
        class="strobe-frequency"
        name="Strobe Frequency"
        description="The frequency of a strobe shutter in Hertz"
        data_type="number"
        unit="hertz" />

  .. tab:: JSON

    * Type: ``propertydef``
    * Members:

      =========== ========== =======================================================
      Key         Value Type Represents
      =========== ========== =======================================================
      class       string     :ref:`standard-objects-property-definition-class`
      name        string     :ref:`standard-objects-property-definition-name`
      description string     :ref:`standard-objects-property-definition-description`
      data_type   string     :ref:`standard-objects-property-definition-data-type`
      unit        string     :ref:`standard-objects-property-definition-unit`
      =========== ========== =======================================================

    Example:

    .. code-block:: json

      {
        "type": "propertydef",
        "class": "strobe-frequency",
        "name": "Strobe Frequency",
        "description": "The frequency of a strobe shutter in Hertz",
        "data_type": "number",
        "unit": "hertz"
      }
