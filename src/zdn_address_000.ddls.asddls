@EndUserText.label: 'Outbound Delivery Address'

@ObjectModel.query.implementedBy: 'ABAP:ZCL_DN_EXTRACT_000'
@Metadata: {
    allowExtensions: true
}
@UI.headerInfo: {
typeName: 'Ship To Partner Address',
typeNamePlural: 'Ship To Partner Addresses',
title:{
label: 'OutboundDeliveryDocucment',
type:#STANDARD,
value:'delivery_document'},
description:{
type:#STANDARD,
label:'Partner Function',
value: 'partner_function'} }


define custom entity ZDN_ADDRESS_000
{
 key delivery_document          : abap.char( 10 );

  key partner_function           : abap.char(2);

      delivery_version           : abap.char(4);

      additional_street_prefix_n : abap.char(40);

      address_id                 : abap.char(10);

      additional_street_suffix_n : abap.char(40);

      address_time_zone          : abap.char(6);

      building                   : abap.char(20);

      business_partner_name_1    : abap.char(40);

      business_partner_name_2    : abap.char( 40 );

      business_partner_name_3    : abap.char( 40 );

      business_partner_name_4    : abap.char( 40 );

      person_family_name         : abap.char( 40 );

      person_given_name          : abap.char( 40 );

      care_of_name               : abap.char( 40 );

      city_name                  : abap.char( 40 );

      company_postal_code        : abap.char( 10 );

      correspondence_language    : abap.char( 2 );

      country                    : abap.char( 3 );

      county                     : abap.char( 40 );

      delivery_service_number    : abap.char( 10 );

      delivery_service_type_code : abap.char( 4 );

      district                   : abap.char( 40 );

      email_address              : abap.char( 241 );

      fax_number                 : abap.char( 30 );

      fax_number_extension       : abap.char( 10 );

      floor                      : abap.char( 10 );

      form_of_address            : abap.char( 4 );

      home_city_name             : abap.char( 40 );

      house_number               : abap.char( 10 );

      house_number_supplement_te : abap.char( 10 );

      mobile_phone_number        : abap.char( 30 );

      phone_number               : abap.char( 30 );

      phone_number_extension     : abap.char( 10 );

      pobox                      : abap.char( 10 );

      pobox_deviating_city_name  : abap.char( 40 );

      pobox_deviating_country    : abap.char( 3 );

      pobox_deviating_region     : abap.char( 3 );

      pobox_is_without_number    : abap_boolean;

      pobox_lobby_name           : abap.char( 40 );

      pobox_postal_code          : abap.char( 10 );

      postal_code                : abap.char( 10 );

      prfrd_comm_medium_type     : abap.char( 3 );

      region                     : abap.char( 3 );

      room_number                : abap.char( 10 );

      street_name                : abap.char( 60 );

      street_prefix_name         : abap.char( 40 );

      street_suffix_name         : abap.char( 40 );

      tax_jurisdiction           : abap.char( 15 );

      transport_zone             : abap.char( 10 );
      
      _header:  association to parent ZDN_HEADER_000 on $projection.delivery_document = _header.delivery_document;

  
}
