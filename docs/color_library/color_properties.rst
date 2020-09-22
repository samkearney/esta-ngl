####################
Color Properties
####################

.. _properties-color-spectrum-data:

*************
Spectrum Data
*************

The Spectral Power Distribution data of an emitter in normalized wavelength.

Definition
==========

=============== =================================================
Class           spectrum-data
Qualified Class org.esta.color.1/spectrum-data
Name            Spectrum Data
Description     The Spectral Power Distribution data of an emitter in normalized wavelength.
Data Type       array
Unit            nanometers
=============== =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-data"
      name="Spectrum Data"
      description="The Spectral Power Distribution data of an emitter in normalized wavelength."
      data_type="array"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-data",
      "name": "Spectrum Data",
      "description": "The Spectral Power Distribution data of an emitter in normalized wavelength.",
      "data_type": "array",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-data"
      id="red-spectrum-data"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-data",
          "id": "red-spectrum-data",
          "access": "readonly",
          "lifetime": "static"
        }
      ]
    }

.. _properties-color-spectrum-start:

*************************
Spectrum Wavelength Start
*************************

The Spectral Power Distribution wavelength start.

Definition
==========

=============== =================================================
Class           spectrum-start
Qualified Class org.esta.color.1/spectrum-start
Name            Spectrum Start
Description     The Spectral Power Distribution wavelength start.
Data Type       number
Unit            nanometers
=============== =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-start"
      name="Spectrum Start"
      description="The Spectral Power Distribution wavelength start."
      data_type="number"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-start",
      "name": "Spectrum Start",
      "description": "The Spectral Power Distribution wavelength start.",
      "data_type": "number",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-start"
      id="spectrum-start"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-start",
          "id": "spectrum-start",
          "access": "readonly",
          "lifetime": "static"
        }
      ]
    }

.. _properties-color-spectrum-end:

*************************
Spectrum Wavelength End
*************************

The Spectral Power Distribution wavelength end.

Definition
==========

=============== =================================================
Class           spectrum-end
Qualified Class org.esta.color.1/spectrum-end
Name            Spectrum End
Description     The Spectral Power Distribution wavelength end.
Data Type       number
Unit            nanometers
=============== =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-end"
      name="Spectrum End"
      description="The Spectral Power Distribution wavelength end."
      data_type="number"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-end",
      "name": "Spectrum End",
      "description": "The Spectral Power Distribution wavelength end.",
      "data_type": "number",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-end"
      id="spectrum-end"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-end",
          "id": "spectrum-end",
          "access": "readonly",
          "lifetime": "static"
        }
      ]
    }

.. _properties-color-spectrum-step:

*************************
Spectrum Wavelength Step
*************************

The Spectral Power Distribution wavelength data step.

Definition
==========

=============== =================================================
Class           spectrum-step
Qualified Class org.esta.color.1/spectrum-step
Name            Spectrum Step
Description     The Spectral Power Distribution wavelength step.
Data Type       number
Unit            nanometers
=============== =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-step"
      name="Spectrum Step"
      description="The Spectral Power Distribution wavelength step."
      data_type="number"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-step",
      "name": "Spectrum Step",
      "description": "The Spectral Power Distribution wavelength step.",
      "data_type": "number",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-step"
      id="spectrum-step"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-step",
          "id": "spectrum-step",
          "access": "readonly",
          "lifetime": "static"
        }
      ]
    }