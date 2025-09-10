CLASS zcl_islm_insert_spp_000 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_islm_insert_spp_000 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: ls_shp_addr TYPE zsh_point_ad_000.
    ls_shp_addr-shipping_point  = '1710'.

    ls_shp_addr-postal_code = '94304-1355'.
    ls_shp_addr-street_name = 'Deer Creek' .
    ls_shp_addr-city_name = 'Palo Alto'.
    ls_shp_addr-house_number = '3475'.

    ls_shp_addr-country = 'US'.
    ls_shp_addr-region = 'CA'.

    ls_shp_addr-email_address = 'info@17401710.com'.
    ls_shp_addr-phone_number = '+19997773475'.
    ls_shp_addr-fax_number = '+49 491629-6077'.

    INSERT  INTO zsh_point_ad_000 VALUES @ls_shp_addr.

    CLEAR ls_shp_addr.




  ENDMETHOD.

ENDCLASS.
