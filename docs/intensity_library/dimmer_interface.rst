################
Dimmer Interface
################

The dimmer interface represents a simple dimmer controlling an intensity.

**********
Definition
**********

=========== =========================================
Class       dimmer
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

  <interfacedef
      class="dimmer"
      description="A simple dimmer controlling an intensity.">
    <property class="intensity" id="intensity" access="readwrite" lifetime="runtime" />
  </interfacedef>

****************
Instance Example
****************

.. code-block:: xml

  <interface class="esta.intensity.1/dimmer" id="primary-dimmer" />
