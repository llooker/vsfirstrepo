view: professor {
  sql_table_name: `vsstudentds.professor`
    ;;

  dimension: page {
    type: number
    sql: ${TABLE}.page ;;
  }

  dimension: pname {
    type: string
    sql: ${TABLE}.pname ;;
  }

  dimension: prn {
    type: number
    sql: ${TABLE}.prn ;;
  }

  measure: count {
    type: count
    drill_fields: [pname]
  }
}
