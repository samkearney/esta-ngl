################
Device Interface
################

There can be only one instance of the device interface, which must be present at the root level of
every device description.

**********
Definition
**********

=========== =================================================
Type        esta.device.1
Description The root-level interface that describes a device.
=========== =================================================

*******************
Required Interfaces
*******************

* Kinematics (TODO)

*******************
Required Properties
*******************

* Device ID
* Device Manufacturer
* Device Model

****************
Instance Example
****************

.. tabs::

  .. code-tab:: xml

    <interface type="esta.device.1" id="device">
      <property name="esta.deviceid.1" id="device-id" lifetime="static">df5865a0-adbf-469f-969e-060732869f86</property>
      <property name="esta.manufacturer.1" id="device-manufacturer" lifetime="static">ACME Corp.</property>
      <property name="esta.model.1" id="device-model" lifetime="static">The Sun</property>
    </interface>
