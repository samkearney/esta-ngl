################
Device Interface
################

There can be only one instance of the device interface, which must be present at the root level of
every device description.

**********
Definition
**********

=============== =================================================
Class           device
Qualified Class org.esta.identification.1/device
Description     Describes essential characteristics of a device.
=============== =================================================

**********
Properties
**********

* :ref:`properties-identification-device-id`
* :ref:`properties-identification-manufacturer`
* :ref:`properties-identification-model`

.. tabs::

  .. code-tab:: xml

    <interfacedef class="device" description="The root-level interface that describes a device.">
      <property class="org.esta.identification.1/device-id" id="device-id" lifetime="static" />
      <property class="org.esta.identification.1/manufacturer" id="device-manufacturer" lifetime="static" />
      <property class="org.esta.identification.1/model" id="device-model" lifetime="static" />
    </interfacedef>
