connection: "mybq"

# include all the views
include: "/views/**/*.view"

datagroup: vsstdb_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vsstdb_default_datagroup

explore: student {}

explore: class {
  join: student {

    type: left_outer
    relationship: one_to_one
    sql_on: ${class.ssn} = ${student.ssn} ;;
  }
  join: curriculum {

    type:  left_outer
    relationship: many_to_one
    sql_on: ${class.crn}=${curriculum.crn} ;;
  }



}

explore: curriculum {}

explore: professor {}

explore: connection_reg_r3 {}
