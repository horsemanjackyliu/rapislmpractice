
@EndUserText.label: 'ZDN_ITEM_000'
@UI.headerInfo: {
typeName: 'Outbound Delivery Item',
typeNamePlural: 'Outbound Delivery Items' ,
title:{
type: #STANDARD,
value: 'delivery_document_item'},
description:{
type:#STANDARD,
value: 'delivery_document'}}
@Metadata: {
    allowExtensions: true
}
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_DN_EXTRACT_000'
    }
}
define custom entity ZDN_ITEM_000 
{


      @UI.facet                  : [{ id:'general',purpose: #STANDARD,position:10,label:'General',type:#IDENTIFICATION_REFERENCE }]
      @UI.identification:[{ position: 10,label:'DeliveryDocument' },{ type: #FOR_ACTION,dataAction: 'render',label:'Render',position:15 }]
      
      @UI.lineItem               :[{position: 10,label:'DeliveryDocument'}]
//      @UI.identification         : [{ position: 10,label:'DeliveryDocument' }]
  key delivery_document         : abap.char(10);
      @UI.identification         : [{ position: 20,label:'DeliveryDocumentItem' }]
      @UI.lineItem               :[{position: 20,label:'DeliveryDocumentItem'}]
  key delivery_document_item     : abap.char(6);
      @UI.lineItem               :[{position: 30,label:'ActualDelivedQuantityInBa' }]
      @UI.identification         : [{ position: 30,label:'ActualDelivedQuantityInBa' }]
//      @Semantics.quantity        : {
//      unitOfMeasure              : 'base_unit'
//  }
      actual_delivered_qty_in_ba : abap.dec(10,3);
      @UI.lineItem               :[{position: 40,label:'ActualDelivedQuantity'}]
      @UI.identification         : [{ position: 40,label:'ActualDelivedQuantity' }]
//      @Semantics.quantity        : {
//    unitOfMeasure                : 'delivery_quantity_unit'
//}
      actual_delivery_quantity   : abap.dec(10,3);
      @UI.lineItem               :[{position: 50,label:'ActualCustomerGroup'}]
      @UI.identification         : [{ position: 50,label:'ActualCustomerGroup' }]
      additional_customer_group  : abap.char(3);
      @UI.lineItem               :[{position: 60}]
      additional_customer_grou_2 : abap.char(3);
      additional_customer_grou_3 : abap.char(3);
      additional_customer_grou_4 : abap.char(3);
      additional_customer_grou_5 : abap.char(3);
      additional_material_group  : abap.char(3);
      additional_material_grou_2 : abap.char(3);
      additional_material_grou_3 : abap.char(3);
      additional_material_grou_4 : abap.char(3);
      additional_material_grou_5 : abap.char(3);
      alternate_product_number   : abap.char(40);
      @UI.lineItem               :[{position: 60,label:'BaseUnit'}]
      @UI.identification         : [{ position: 60,label:'BaseUnit' }]
//      @Semantics.unitOfMeasure   : true
      base_unit                  : abap.char(3);
      @UI.lineItem               :[{position: 70,label:'Batch'}]
      @UI.identification         : [{ position: 70,label:'Batch' }]
      batch                      : abap.char(10);
      @UI.lineItem               :[{position: 80,label:'BatchBySupplier'}]
      @UI.identification         : [{ position: 80,label:'BatchBySupplier' }]
      batch_by_supplier          : abap.char(15);
      @UI.lineItem               :[{position: 90,label:'BatchClassification'}]
      @UI.identification         : [{ position: 90,label:'BatchClassification' }]
      batch_classification       : abap.char(18);
      bomexplosion               : abap.char(8);
      business_area              : abap.char(4);
      consumption_posting        : abap.char(1);
      controlling_area           : abap.char(4);
      cost_center                : abap.char(10);
      created_by_user            : abap.char(12);
      creation_date              : timestampl;
      creation_time              : abap.timn;
      cust_engineering_chg_statu : abap.char(17);

      delivery_document_item_cat : abap.char(4);
      delivery_document_item_tex : abap.char(40);
      delivery_group             : abap.char(3);
      @UI.lineItem               :[{position: 130,label:'QuantityUnit'}]
      @UI.identification         : [{ position: 130,label:'QuantityUnit' }]
//      @Semantics.unitOfMeasure   : true
      delivery_quantity_unit     :abap.char(3);
      delivery_related_billing_s : abap.char(1);
      delivery_to_base_quantity  : abap.dec(3,0);
      delivery_to_base_quantit_2 : abap.dec(3,0);
      delivery_version           : abap.char(4);
      department_classification  : abap.char(4);
      distribution_channel       : abap.char(2);
      division                   : abap.char(2);
      eudelivery_item_arcstatus  : abap.char(1);
      fixed_shipg_procg_duration : abap.dec(3,2);
      glaccount                  : abap.char(10);
      goods_movement_reason_code : abap.char(4);
      goods_movement_status      : abap.char(1);
      goods_movement_type        : abap.char(3);
      higher_lvl_itm_of_bat_splt : abap.char(6);
      higher_level_item          : abap.char(6);
      inspection_lot             : abap.char(12);
      inspection_partial_lot     : abap.char(6);
      intercompany_billing_statu : abap.char(1);
      international_article_numb : abap.char(18);
      inventory_special_stock_ty : abap.char(1);
      inventory_valuation_type   : abap.char(10);
      is_completely_delivered    : abap_boolean;
      is_not_goods_movements_rel : abap.char(1);
      is_separate_valuation      : abap_boolean;
      issg_or_rcvg_batch         : abap.char(10);
      issg_or_rcvg_material      : abap.char(40);
      issg_or_rcvg_spcl_stock_in : abap.char(1);
      issg_or_rcvg_stock_categor : abap.char(1);
      issg_or_rcvg_valuation_typ : abap.char(10);
      issuing_or_receiving_plant : abap.char(4);
      issuing_or_receiving_stora : abap.char(4);
      item_billing_block_reason  : abap.char(2);
      item_billing_incompletion  : abap.char(1);
      item_delivery_incompletion : abap.char(1);
      item_gds_mvt_incompletion  : abap.char(1);
      item_general_incompletion  : abap.char(1);
      item_gross_weight          : abap.dec(11,3);
      item_is_billing_relevant   : abap.char(1);
      item_net_weight            : abap.dec(11,3);
      item_packing_incompletion  : abap.char(1);
      item_picking_incompletion  : abap.char(1);
      item_volume                : abap.dec(11,3);
      item_volume_unit           : abap.char(3);
      item_weight_unit           : abap.char(3);
      last_change_date           : timestampl;
      loading_group              : abap.char(4);
      manufacture_date           : timestampl;
      @UI.lineItem               :[{position: 100,label:'Material'}]
      @UI.identification         : [{ position: 100,label:'Material' }]
      material                   : abap.char(40);
      material_by_customer       : abap.char(35);
      material_freight_group     : abap.char(8);
      material_group             : abap.char(9);
      material_is_batch_managed  : abap_boolean;

      material_is_int_batch_mana : abap_boolean;
      @UI.lineItem               :[{position: 110,label:'NumberOfSerialNumbers'}]
      @UI.identification         : [{ position: 110,label:'NumberOfSerialNumbers' }]
      number_of_serial_numbers   : abap.int4;
      order_id                   : abap.char(12);
      order_item                 : abap.char(4);
      original_delivery_quantity : abap.dec(10,3);
      originally_requested_mater : abap.char(40);
      overdeliv_tolrtd_lmt_ratio : abap.dec(2,1);
      packing_status             : abap.char(1);
      partial_delivery_is_allowe : abap.char(1);
      payment_guarantee_form     : abap.char(2);
      picking_confirmation_statu : abap.char(1);
      picking_control            : abap.char(1);
      picking_status             : abap.char(1);
      @UI.lineItem               :[{position: 120,label:'Plant'}]
      @UI.identification         : [{ position: 120,label:'Plant' }]
      plant                      : abap.char(4);
      primary_posting_switch     : abap.char(1);
      product_availability_date  : timestampl;
      product_availability_time  : abap.timn;
      product_configuration      : abap.char(18);
      product_hierarchy_node     : abap.char(18);
      profitability_segment      : abap.char(10);
      profit_center              : abap.char(10);
      proof_of_delivery_relevanc : abap.char(1);
      proof_of_delivery_status   : abap.char(1);
      quantity_is_fixed          : abap_boolean;
      receiving_point            : abap.char(25);
      reference_document_logical : abap.char(10);
      reference_sddocument       : abap.char(10);
      reference_sddocument_categ : abap.char(4);
      reference_sddocument_item  : abap.char(6);
      retail_promotion           : abap.char(10);
      sales_document_item_type   : abap.char(1);
      sales_group                : abap.char(3);
      sales_office               : abap.char(4);
      sddocument_category        : abap.char(4);
      sdprocess_status           : abap.char(1);
      shelf_life_expiration_date : timestampl;
      statistics_date            : timestampl;
      stock_type                 : abap.char(1);
      storage_bin                : abap.char(10);
      storage_location           : abap.char(4);
      storage_type               : abap.char(3);
      subsequent_movement_type   : abap.char(3);
      transportation_group       : abap.char(4);
      underdeliv_tolrtd_lmt_rati : abap.dec(2,1);
      unlimited_overdelivery_is  : abap_boolean;
      varbl_shipg_procg_duration : abap.dec(3,2);
      warehouse                  : abap.char(3);
      warehouse_activity_status  : abap.char(1);
      warehouse_staging_area     : abap.char(10);
      warehouse_stock_category   : abap.char(1);
      warehouse_storage_bin      : abap.char(10);
      _headers                   : association to parent zdn_header_000 on $projection.delivery_document = _headers.delivery_document;

    
}
