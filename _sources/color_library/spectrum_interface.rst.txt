##################
Spectrum Interface
##################

The Spectral Power Distribution of an emitter in normalized wavelength.

**********
Definition
**********

================= =================================================
Class             spectrum
Qualified Class   org.esta.color.1/spectrum
Name              Spectrum
Description       The Spectral Power Distribution data of an emitter in normalized wavelength.
================ =================================================

**********
Properties
**********

.. tabs::

  .. code-tab:: xml

    <interfacedef
        class="spectrum"
        name="Spectrum"
        description="The Spectral Power Distribution data of an emitter in normalized wavelength.">
      <property class="$/spectrum-data" alias="spectrum-data" access="readonly" lifetime="static" />
      <property class="$/spectrum-start" alias="spectrum-start" access="readonly" lifetime="static" />
      <property class="$/spectrum-end" alias="spectrum-end" access="readonly" lifetime="static" />
      <property class="$/spectrum-step" alias="spectrum-step" access="readonly" lifetime="static" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "spectrum",
      "name": "Spectrum",
      "description": "The Spectral Power Distribution data of an emitter in normalized wavelength.",
      "children": [
        {
          "type": "property",
          "class": "$/spectrum-data",
          "alias": "spectrum-data",
          "access": "readonly",
          "lifetime": "static"
        },
        {
          "type": "property",
          "class": "$/spectrum-start",
          "alias": "spectrum-start",
          "access": "readonly",
          "lifetime": "static"
        },
        {
          "type": "property",
          "class": "$/spectrum-end",
          "alias": "spectrum-end",
          "access": "readonly",
          "lifetime": "static"
        },
        {
          "type": "property",
          "class": "$/spectrum-step",
          "alias": "spectrum-step",
          "access": "readonly",
          "lifetime": "static"
        }
      ]
    }

****************
Instance Example
****************

.. tabs::

  .. code-tab:: xml

    <interface class="org.esta.color.1/spectrum" alias="red-spectrum" friendlyname="Red Spectrum" />
      <override refalias="spectrum-data" attribute="value">0.4, 0.5, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.3, 1.4, 1.6, 1.8, 2.0, 2.3, 2.7, 3.0, 3.3, 3.8</override>
      <override refalias="spectrum-start" attribute="value">496</override>
      <override refalias="spectrum-end" attribute="value">584</override>
      <override refalias="spectrum-step" attribute="value">1</override>
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "org.esta.spectrum.1/red-spectrum",
      "alias": "red-spectrum",
      "friendlyname": "Red Spectrum",
      "children": [
        {
          "type": "override",
          "refalias": "spectrum-data",
          "attribute": "value",
          "value": [0.4, 0.5, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.3, 1.4, 1.6, 1.8, 2.0, 2.3, 2.7, 3.0, 3.3, 3.8]
        },
        {
          "type": "override",
          "refalias": "spectrum-start",
          "attribute": "value",
          "value": 496
        },
        {
          "type": "override",
          "refalias": "spectrum-end",
          "attribute": "value",
          "value": 584
        },
        {
          "type": "override",
          "refalias": "spectrum-step",
          "attribute": "value",
          "value": 1
        }
      ]
    }
