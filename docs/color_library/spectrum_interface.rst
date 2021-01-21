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
      <property class="udr://$/spectrum-data" alias="spectrum-data" access="readonly" lifetime="static" />
      <property class="udr://$/spectrum-start" alias="spectrum-start" access="readonly" lifetime="static" />
      <property class="udr://$/spectrum-end" alias="spectrum-end" access="readonly" lifetime="static" />
      <property class="udr://$/spectrum-step" alias="spectrum-step" access="readonly" lifetime="static" />
    </interfacedef>

  .. code-tab:: json

    {
      "udrtype": "interfacedef",
      "class": "spectrum",
      "name": "Spectrum",
      "description": "The Spectral Power Distribution data of an emitter in normalized wavelength.",
      "children": [
        {
          "udrtype": "property",
          "class": "udr://$/spectrum-data",
          "alias": "spectrum-data",
          "access": "readonly",
          "lifetime": "static"
        },
        {
          "udrtype": "property",
          "class": "udr://$/spectrum-start",
          "alias": "spectrum-start",
          "access": "readonly",
          "lifetime": "static"
        },
        {
          "udrtype": "property",
          "class": "udr://$/spectrum-end",
          "alias": "spectrum-end",
          "access": "readonly",
          "lifetime": "static"
        },
        {
          "udrtype": "property",
          "class": "udr://$/spectrum-step",
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

    <interface class="udr://org.esta.color.1/spectrum" alias="red-spectrum" friendlyname="Red Spectrum" />
      <override refalias="spectrum-data" type="absolute" attribute="value">0.4, 0.5, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.3, 1.4, 1.6, 1.8, 2.0, 2.3, 2.7, 3.0, 3.3, 3.8</override>
      <override refalias="spectrum-start" type="absolute" attribute="value">496</override>
      <override refalias="spectrum-end" type="absolute" attribute="value">584</override>
      <override refalias="spectrum-step" type="absolute" attribute="value">1</override>
    </interface>

  .. code-tab:: json

    {
      "udrtype": "interface",
      "class": "udr://org.esta.spectrum.1/red-spectrum",
      "alias": "red-spectrum",
      "friendlyname": "Red Spectrum",
      "children": [
        {
          "udrtype": "override",
          "refalias": "spectrum-data",
          "type": "absolute",
          "attribute": "value",
          "value": [0.4, 0.5, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.3, 1.4, 1.6, 1.8, 2.0, 2.3, 2.7, 3.0, 3.3, 3.8]
        },
        {
          "udrtype": "override",
          "refalias": "spectrum-start",
          "type": "absolute",
          "attribute": "value",
          "value": 496
        },
        {
          "udrtype": "override",
          "refalias": "spectrum-end",
          "type": "absolute",
          "attribute": "value",
          "value": 584
        },
        {
          "udrtype": "override",
          "refalias": "spectrum-step",
          "type": "absolute",
          "attribute": "value",
          "value": 1
        }
      ]
    }
