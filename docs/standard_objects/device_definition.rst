.. _standard-objects-device-definition:

#################
Device Definition
#################

A **device definition** defines the behavior of a **device**, which is some type of equipment that
is configurable. The term "device" in this standard is typically used to refer to a single model of
equipment, and "device instance" refers to a single unit of that model.

.. code-block:: xml

  <library class="com.etcconnect.devices.1" description="ETC Devices" publishdate="2020-09-02" author="ETC Inc">
    <devicedef class="es1">
      <interface class="org.esta.device.1/device" id="device">
        <propertyvalue id="device-id">com.etcconnect.es1.1</propertyvalue>
        <propertyvalue id="device-manufacturer">ETC Inc.</propertyvalue>
        <propertyvalue id="device-model">ES1</propertyvalue>
      </interface>
      <interface class="org.esta.dimmer.1" id="dimmer" />
    </devicedef>
  </library>
