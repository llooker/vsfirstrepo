view: curriculum {
  sql_table_name: `vsstudentds.curriculum`
    ;;

  dimension: course_hours {
    type: number
    sql: ${TABLE}.course_hours ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }

  dimension: crn {
    type: number
    sql: ${TABLE}.crn ;;
  }

  measure: count {
    type: count
    drill_fields: [course_name]
  }
}
