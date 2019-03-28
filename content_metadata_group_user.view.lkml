view: content_metadata_group_user {
  sql_table_name: PUBLIC.CONTENT_METADATA_GROUP_USER ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CONTENT_METADATA_ID ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: permission_type {
    type: string
    sql: ${TABLE}.PERMISSION_TYPE ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      content_metadata.id,
      group.name,
      group.id,
      user.dev_branch_name,
      user.first_name,
      user.id,
      user.last_name
    ]
  }
}
