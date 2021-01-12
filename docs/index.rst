.. Uniform Device Representation documentation master file, created by
   sphinx-quickstart on Sat Jun  6 15:09:41 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

ESTA Uniform Device Representation (UDR)
==========================================

**Next Generation Entertainment Control Model: Uniform Device Representation** is a method for
describing controllable devices in a machine-readable way. UDR is developed by the Entertainment
Services and Technology Association (ESTA) and has applications in entertainment technology,
architectural lighting and building automation, and the Internet of Things.

.. toctree::
   :maxdepth: 2
   :caption: Tutorial

   tutorial/introduction
   tutorial/interface_hierarchy
   tutorial/identifiers
   tutorial/mutual_exclusion
   tutorial/extension

.. toctree::
   :maxdepth: 2
   :caption: Standard Objects

   standard_objects/udr_root_object
   standard_objects/library
   standard_objects/import
   standard_objects/device_definition
   standard_objects/case
   standard_objects/interface_definition
   standard_objects/interface_instance
   standard_objects/interface_constraint
   standard_objects/property_definition
   standard_objects/property_instance
   standard_objects/override

.. toctree::
   :maxdepth: 2
   :caption: ESTA Device Identification Library

   device_id_library/device_interface
   device_id_library/identification_properties
   device_id_library/full_definition_list

.. toctree::
   :maxdepth: 2
   :caption: ESTA Intensity Library

   intensity_library/dimmer_interface
   intensity_library/intensity_properties
   intensity_library/full_definition_list

.. toctree::
   :maxdepth: 2
   :caption: ESTA Color Library

   color_library/spectrum_interface
   color_library/color_properties

.. toctree::
   :maxdepth: 2
   :caption: Examples

   examples/simple_dimmer
   examples/multi_cell
   examples/exclusive_group
   examples/mac_encore

.. toctree::
   :maxdepth: 2
   :caption: Other Resources

   other_resources/xml_tag_reference
