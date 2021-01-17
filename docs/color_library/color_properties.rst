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

================= =================================================
Class             spectrum-data
Qualified Class   org.esta.color.1/spectrum-data
Name              Spectrum Data
Description       The Spectral Power Distribution data of an emitter in normalized wavelength.
Data Type         array
Unit              nanometers
================= =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-data"
      name="Spectrum Data"
      description="The Spectral Power Distribution data of an emitter in normalized wavelength."
      datatype="array"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-data",
      "name": "Spectrum Data",
      "description": "The Spectral Power Distribution data of an emitter in normalized wavelength.",
      "datatype": "array",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-data"
      alias="red-spectrum-data"
      friendlyname="Red Spectrum Data"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-data",
          "alias": "red-spectrum-data",
          "friendlyname": "Red Spectrum Data",
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

================= =================================================
Class             spectrum-start
Qualified Class   org.esta.color.1/spectrum-start
Name              Spectrum Start
Description       The Spectral Power Distribution wavelength start.
Data Type         number
Unit              nanometers
================= =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-start"
      name="Spectrum Start"
      description="The Spectral Power Distribution wavelength start."
      datatype="number"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-start",
      "name": "Spectrum Start",
      "description": "The Spectral Power Distribution wavelength start.",
      "datatype": "number",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-start"
      alias="spectrum-start"
      friendlyname="Spectrum Start"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-start",
          "alias": "spectrum-start",
          "friendlyname": "Spectrum Start",
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

================= =================================================
Class             spectrum-end
Qualified Class   org.esta.color.1/spectrum-end
Name              Spectrum End
Description       The Spectral Power Distribution wavelength end.
Data Type         number
Unit              nanometers
================= =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-end"
      name="Spectrum End"
      description="The Spectral Power Distribution wavelength end."
      datatype="number"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-end",
      "name": "Spectrum End",
      "description": "The Spectral Power Distribution wavelength end.",
      "datatype": "number",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-end"
      alias="spectrum-end"
      friendlyname="Spectrum End"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-end",
          "alias": "spectrum-end",
          "friendlyname": "Spectrum End",
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

================= =================================================
Class             spectrum-step
Qualified Class   org.esta.color.1/spectrum-step
Name              Spectrum Step
Description       The Spectral Power Distribution wavelength step.
Data Type         number
Unit              nanometers
================= =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="spectrum-step"
      name="Spectrum Step"
      description="The Spectral Power Distribution wavelength step."
      datatype="number"
      unit="nanometers" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "spectrum-step",
      "name": "Spectrum Step",
      "description": "The Spectral Power Distribution wavelength step.",
      "datatype": "number",
      "unit": "nanometers"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="org.esta.color.1/spectrum-step"
      alias="spectrum-step"
      friendlyname="Spectrum End"
      access="readonly"
      lifetime="static" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.color.1/spectrum-step",
          "alias": "spectrum-step",
          "friendlyname": "Spectrum End",
          "access": "readonly",
          "lifetime": "static"
        }
      ]
    }