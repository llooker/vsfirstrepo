view: class {
  sql_table_name: `vsstudentds.class`
    ;;

  dimension: crn {
    type: number
    sql: ${TABLE}.crn ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: prn {
    type: number
    sql: ${TABLE}.prn ;;
  }

  dimension: ssn {
    type: number
    sql: ${TABLE}.ssn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
