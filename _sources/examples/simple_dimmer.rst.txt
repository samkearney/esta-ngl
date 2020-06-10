############################
Simple Dimmer Device Example
############################

.. code-block:: xml

  <devicelist>
    <device id="90b5c733-9265-4089-b2d3-dba059cc0c53">
      <interface type="esta.device.1" id="device">
        <property type="esta.identifier.1" id="device-id" lifetime="static">com.etcconnect.es1.1</property>
        <property type="esta.manufacturer.1" id="device-manufacturer" lifetime="static">ETC Inc.</property>
        <property type="esta.model.1" id="device-model" lifetime="static">ES1</property>
        <property type="esta.firmware.1" id="device-firmware-version" lifetime="persistent" access="readonly" />

        <interface type="esta.dimmer.1" id="dimmer" />
      </interface>
    </device>
  </devicelist>
