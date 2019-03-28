view: project_state {
  sql_table_name: PUBLIC.PROJECT_STATE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: children {
    type: string
    sql: ${TABLE}.CHILDREN ;;
  }

  dimension: invalid_at {
    type: number
    sql: ${TABLE}.INVALID_AT ;;
  }

  dimension: manifest {
    type: string
    sql: ${TABLE}.MANIFEST ;;
  }

  dimension: model_names {
    type: string
    sql: ${TABLE}.MODEL_NAMES ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: name_hash {
    type: string
    sql: ${TABLE}.NAME_HASH ;;
  }

  dimension: project_digest {
    type: string
    sql: ${TABLE}.PROJECT_DIGEST ;;
  }

  dimension: source_digest {
    type: string
    sql: ${TABLE}.SOURCE_DIGEST ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
