###########################
Spectral Power Distrobution
###########################

.. _properties-intensity-spd:

Definition
==========

Describes the emission of a light source per wavelength. Abreviated SPD.

=========== ===================================================================================
Class       SPD
Description Represents a source spectral power distrobution.
Base Power  number (required)
Data        number array (required, space delimited)
wlStart     number (required)
wlEnd       number (required)
wlStep      number (required)
=========== ===================================================================================

Definition Markup
=================

.. code-block:: xml

  <propertydef 
    class="spd"
    description="Describes the emission of a light source per wavelength."
    data="number array"
    basePower="number"
    wlStart="number"
    wlEnd="number"
    wlStep="number"
    />

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      type="org.esta.intensity.1/spd"
      id="red-LED"
      access="read"
      lifetime="persistant"
      basePower="2.89e-2"
      wlStart="580"
      wlStep="1"
      wlEnd="668"
      data="0.3 0.4 0.5 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.3 1.4 1.6 1.8 2.0 2.3 2.7 3.0 3.3 3.8 4.3 4.8 5.4 6.1 6.9 7.8 8.8 10.0 11.2 12.6 14.2 16.0 18.1 20.5 23.0 25.9 29.1 32.6 36.5 40.7 45.4 50.5 56.0 62.1 68.7 75.5 82.4 88.8 94.4 98.4 100.1 98.8 94.6 87.6 78.6 68.4 58.2 48.9 40.6 33.5 27.7 22.9 18.8 15.6 12.9 10.7 8.9 7.4 6.2 5.1 4.3 3.6 3.1 2.6 2.2 1.9 1.6 1.4 1.2 1.0 0.9 0.8 0.7 0.6 0.5 0.4 0.4"
       />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "type": "org.esta.intensity.1/spd",
          "id": "red-LED",
          "access": "read",
          "lifetime": "persistant"
          "basePower"=2.89e-2
          "wlStart"=580
          "wlStep"=1
          "wlEnd"=668
          "data"=[0.3 0.4 0.5 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.3 1.4 1.6 1.8 2.0 2.3 2.7 3.0 3.3 3.8 4.3 4.8 5.4 6.1 6.9 7.8 8.8 10.0 11.2 12.6 14.2 16.0 18.1 20.5 23.0 25.9 29.1 32.6 36.5 40.7 45.4 50.5 56.0 62.1 68.7 75.5 82.4 88.8 94.4 98.4 100.1 98.8 94.6 87.6 78.6 68.4 58.2 48.9 40.6 33.5 27.7 22.9 18.8 15.6 12.9 10.7 8.9 7.4 6.2 5.1 4.3 3.6 3.1 2.6 2.2 1.9 1.6 1.4 1.2 1.0 0.9 0.8 0.7 0.6 0.5 0.4 0.4]
        }
      ]
    }

****************
Compressed Format
****************

A blob to transport a compressed spd.

Definition
