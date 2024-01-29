namespace TPL_projects;

entity Supplier {
    key sm_id                           : String;
        supplier_name                   : String;
        erp_vendor_code                 : String;
        tat_for_registration_completion : String;
        reg_start_date                  : String;
        reg_end_date                    : String;
        test:String;
        tasks                           : Composition of many Tasks
                                              on tasks.sm_id = sm_id;
}

entity Tasks {
    key task_name  : String;
        sm_id      : String;
        start_date : String;
        end_date   : String;
        user       : String;

}
