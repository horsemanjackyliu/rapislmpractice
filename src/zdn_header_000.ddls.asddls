@EndUserText.label: 'Outbound Delivery Header'

@ObjectModel.query.implementedBy: 'ABAP:ZCL_DN_EXTRACT_000'
@Metadata: {
    allowExtensions: true
}
@UI.headerInfo: {
typeName: 'Outbound Delivery',
typeNamePlural: 'Outbound Deliveries',
title:{
label: 'OutboundDeliveryDocucment',
type:#STANDARD,
value:'delivery_document'},
description:{
type:#STANDARD,
label:'BillOf Lading',
value: 'bill_of_lading'} }

define root custom entity ZDN_HEADER_000
{
       //      @UI.facet                  : [{ id: 'generl',type:#COLLECTION,purpose:#STANDARD,label: 'General',targetQualifier: 'general',parentId: '',position:10,isPartOfPreview:true },
      @UI.facet                  :  [{id:'basicInfo',type:#IDENTIFICATION_REFERENCE,purpose:#STANDARD,label:'Basice Information',position:10,isPartOfPreview:true}]
//        {id                      : 'Items',type:#LINEITEM_REFERENCE,purpose:#STANDARD,position:20,label:'Outbound Delivery Items',targetElement: '_items'}]



      @UI.lineItem               : [{ position:10,label:'DeliveryDocument' }]
//      @UI.identification         : [{ position: 10,label:'DeliveryDocument' },{ type: #FOR_ACTION, dataAction: 'suggestRouteAction', label: 'Suggest The Best Route' } ]
        @UI.identification         : [{ position: 10,label:'DeliveryDocument' }]
        @UI.selectionField         : [{ position:10 }]


      key delivery_document         : abap.char(10);
      @UI.lineItem               : [{ position:20,label:'DeliveryRoute' }]
      @UI.identification         : [{ position: 20,label:'DeliveryRoute'  }]
      actual_delivery_route      : abap.char( 6 );

      @UI.lineItem               : [{ position:40,label: 'BillOfLading' }]
      @UI.identification         : [{ position: 40,label:'BillOfLading' }]
      bill_of_lading            : abap.char( 35 );

      @UI.hidden                 : true
      complete_delivery_is_defin : abap_boolean;

      @UI.lineItem               : [{ position:70,label: 'CreatedByUser' }]
      @UI.identification         : [{ position: 70,label:'CreatedByUser' }]
      created_by_user            : abap.char( 12 );

      customer_group             : abap.char(2);
      delivery_block_reason      : abap.char(2);
      @UI.lineItem               : [{ position:90,label: 'DeliverDate' }]
      @UI.identification         : [{ position: 90,label:'DeliverDate' }]
      @UI.selectionField         : [{ position:60 }]
      delivery_date              : timestampl;
      @UI.lineItem               : [{ position:100,label: 'DeliverDocumentBySuppl' }]
      @UI.identification         : [{ position: 100,label:'DeliverDocumentBySuppl' }]
      delivery_document_by_suppl : abap.char(35);
      delivery_document_type     : abap.char(4);
      delivery_is_in_plant       : abap_boolean;
      delivery_priority          : abap.char(2);

      delivery_version           : abap.char(4);
      depreciation_percentage    : abap.dec( 3, 2 );
      distr_status_by_decentrali : abap.char(1);

      etag                       : abap.string;
      external_identification_ty : abap.char(1);
      external_transport_system  : abap.char(5);
      factory_calendar_by_custom : abap.char(2);
      goods_issue_or_receipt_sli : abap.char(10);
      goods_issue_time           : abap.timn;
      handling_unit_in_stock     : abap.char(1);
      hdr_general_incompletion_s : abap.char(1);
      hdr_goods_mvt_incompletion : abap.char(1);
      header_billg_incompletion  : abap.char(1);
      header_billing_block_reaso : abap.char(2);
      header_deliv_incompletion  : abap.char(1);
      header_gross_weight        : abap.dec(11,3);
      header_net_weight          : abap.dec(11,3);
      header_packing_incompletio : abap.char(1);
      header_pickg_incompletion  : abap.char(1);
      header_volume              : abap.dec(11,3);
      header_volume_unit         : abap.char( 3 );
      header_weight_unit         : abap.char( 3 );
      incoterms_classification   : abap.char( 3 );
      incoterms_transfer_locatio : abap.char(28);

      internal_financial_documen : abap.char(10);
      is_delivery_for_single_war : abap.char(1);
      is_export_delivery         : abap.char(1);

      last_changed_by_user       : abap.char(12);

      loading_point              : abap.char(2);

      means_of_transport         : abap.char(20);
      means_of_transport_ref_mat : abap.char(40);
      means_of_transport_type    : abap.char(4);
      order_combination_is_allow : abap_boolean;
      order_id                   : abap.char(12);
      overall_deliv_conf_status  : abap.char(1);
      overall_deliv_reltd_billg  : abap.char(1);
      overall_goods_movement_sta : abap.char(1);
      overall_intco_billing_stat : abap.char(1);
      overall_packing_status     : abap.char(1);
      overall_picking_conf_statu : abap.char(1);
      overall_picking_status     : abap.char(1);
      overall_proof_of_delivery  : abap.char(1);
      overall_sdprocess_status   : abap.char(1);
      overall_warehouse_activity : abap.char(1);
      ovrl_itm_deliv_incompletio : abap.char(1);
      ovrl_itm_gds_mvt_incomplet : abap.char(1);
      ovrl_itm_general_incomplet : abap.char(1);
      ovrl_itm_packing_incomplet : abap.char(1);
      ovrl_itm_picking_incomplet : abap.char(1);
      payment_guarantee_procedur : abap.char(6);
      picked_items_location      : abap.char(20);
      proposed_delivery_route    : abap.char(6);
      receiving_plant            : abap.char(4);
      receivinglocationtimezone  : abap.char(6);
      route_schedule             : abap.char(10);
      sales_district             : abap.char(6);
      sales_office               : abap.char(4);
      @UI.lineItem               : [{ position:150,label: 'SalesOrganization' }]
      @UI.identification         : [{ position: 150,label:'SalesOrganization' }]
      @UI.selectionField         : [{ position:50 }]
      sales_organization         : abap.char(4);
      sddocument_category        : abap.char(4);

      @UI.lineItem               : [{ position:140,label: 'ShipToParty' }]
      @UI.identification         : [{ position: 140,label:'ShipToParty' }]
      @UI.selectionField         : [{ position:40 }]
      ship_to_party              : abap.char(10);
      shipment_block_reason      : abap.char(2);
      shipping_condition         : abap.char(2);
      @UI.lineItem               : [{ position:120,label: 'ShippingPoint' }]
      @UI.identification         : [{ position: 120,label:'ShippingPoint' }]
      @UI.selectionField         : [{ position:20 }]
      shipping_point             : abap.char(4);
      @UI.lineItem               : [{ position:130,label: 'ShippingType' }]
      @UI.identification         : [{ position: 130,label:'ShippingType' }]
      @UI.selectionField         : [{ position:30 }]
      shipping_type              : abap.char(2);
      sold_to_party              : abap.char(10);
      special_processing_code    : abap.char(4);
      statistics_currency        : abap.char(5);
      supplier                   : abap.char(10);
      total_block_status         : abap.char(1);
      total_credit_check_status  : abap.char(1);
      @UI.lineItem               : [{ position:110,label: 'TotalNumberOfPackage' }]
      @UI.identification         : [{ position: 110,label:'TotalNumberOfPackage' }]

      total_number_of_package    : abap.char(5);
       @UI.lineItem               : [{ position:160,label: 'TransactionCurrency' }]
      @UI.identification         : [{ position: 160,label:'TransactionCurrency' }]
      transaction_currency       : abap.char(5);
      transportation_group       : abap.char(4);
      unloading_point_name       : abap.char(25);
      warehouse                  : abap.char(3);
      warehouse_gate             : abap.char(3);
      warehouse_staging_area     : abap.char(10);
      _items                     : composition [0..*] of ZDN_ITEM_000;
      _partners :              composition[0..*] of ZDN_ADDRESS_000;

}
