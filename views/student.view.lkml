view: student {
  sql_table_name: `vsstudentds.student`
    ;;

  dimension: sadress {
    type: string
    sql: ${TABLE}.sadress ;;
  }

  dimension: sage {
    type: number
    sql: ${TABLE}.sage ;;
  }

  dimension: sname {
    type: string
    sql: ${TABLE}.sname ;;
  }

  dimension: ssn {
    type: number
    sql: ${TABLE}.ssn ;;
  }

  measure: count {
    type: count
    drill_fields: [sname]
  }
}
