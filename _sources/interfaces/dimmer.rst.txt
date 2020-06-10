################
Dimmer Interface
################

The dimmer interface represents a simple dimmer controlling an intensity.

**********
Definition
**********

=========== =========================================
Type        esta.dimmer.1
Description A simple dimmer controlling an intensity.
=========== =========================================

*******************
Required Properties
*******************

* :ref:`properties-intensity-intensity`

******
Markup
******

.. code-block:: xml

  <interfacedef type="esta.dimmer.1">
    <property type="esta.intensity.1" id="intensity" access="readwrite" lifetime="runtime" />
  </interfacedef>

****************
Instance Example
****************

.. code-block:: xml

  <interface type="esta.dimmer.1" id="primary-dimmer" />
