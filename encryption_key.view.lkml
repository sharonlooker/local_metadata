view: encryption_key {
  sql_table_name: PUBLIC.ENCRYPTION_KEY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: encrypted_key {
    type: string
    sql: ${TABLE}.ENCRYPTED_KEY ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
