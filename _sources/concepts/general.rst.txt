################
General Concepts
################

*******************
ESTA Device Library
*******************

An ESTA device library contains a set of definitions for interfaces, properties, and/or devices.

Children
========

An ESTA device library can have the following children:

* Definition List
* Device List
* Import

Markup Example
==============

.. code-block:: xml

  <estadl>
    <import class="org.esta.intensity.1" />
    <definitionlist class="com.acme.standarddefs.1">
      <!-- ... -->
    </definitionlist>
    <devicelist class="com.acme.devices.1">
      <!-- ... -->
    </devicelist>
  </estadl>


.. _concepts-general-definition-list:

***************
Definition List
***************

A list of property and interface definitions that is independent of any device. Property and
interface definitions defined inside a definition list are usable by anything that imports the
definition list.

Attributes
==========

Class
-----

A definition list's **class** is a unique string identifying an individual definition list. This
string must be a :ref:`concepts-identifiers-qualified-class`.

Children
========

A definition list can have the following children:

* :ref:`concepts-property-definition`
* :ref:`concepts-interface-definition`

Markup Example
==============

.. code-block:: xml

  <definitionlist class="com.acme.standarddefs.1">
    <propertydef class="customproperty" data_type="string" />
    <interfacedef class="custominterface">
      <property class="org.esta.intensity.1/intensity" id="intensity-1" access="readwrite" lifetime="runtime" />
      <property class="org.esta.intensity.1/intensity" id="intensity-2" access="readwrite" lifetime="runtime" />

      <property class="customproperty" id="custom_property_1" access="readonly" lifetime="persistent" />

      <propertydef class="customproperty2" data_type="number" unit="rpm" minimum="1" maximum="100" />
      <property class="customproperty2" id="customproperty2-1" access="readwrite" lifetime="runtime" />
      <property class="customproperty2" id="customproperty2-2" access="readwrite" lifetime="runtime" />
    </interfacedef>
  </definitionlist>

.. _concepts-general-device-list:

***********
Device List
***********

A device list is a list of device definitions.

Attributes
==========

*****************
Device Definition
*****************

A **device definition** defines the behavior of a **device**, which is some type of entertainment
equipment that is configurable. The term "device" in this standard is typically used to refer to a
single model of equipment, and "device instance" refers to a single unit of that model.

.. code-block:: xml

  <devicelist>
    <device id="90b5c733-9265-4089-b2d3-dba059cc0c53">
      <interface class="org.esta.device.1/device" id="device">
        <propertyvalue id="device-id">com.etcconnect.es1.1</propertyvalue>
        <propertyvalue id="device-manufacturer">ETC Inc.</propertyvalue>
        <propertyvalue id="device-model">ES1</propertyvalue>
      </interface>
      <interface class="org.esta.dimmer.1" id="dimmer" />
    </device>
  </devicelist>

