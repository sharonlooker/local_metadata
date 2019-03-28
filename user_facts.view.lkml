view: user_facts {
  sql_table_name: PUBLIC.USER_FACTS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active_api_sessions {
    type: number
    sql: ${TABLE}.ACTIVE_API_SESSIONS ;;
  }

  dimension: active_ui_sessions {
    type: number
    sql: ${TABLE}.ACTIVE_UI_SESSIONS ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.EXTERNAL_ID ;;
  }

  dimension: has_api_credentials {
    type: yesno
    sql: ${TABLE}.HAS_API_CREDENTIALS ;;
  }

  dimension: has_ui_credentials {
    type: yesno
    sql: ${TABLE}.HAS_UI_CREDENTIALS ;;
  }

  dimension: is_admin {
    type: yesno
    sql: ${TABLE}.IS_ADMIN ;;
  }

  dimension: is_developer {
    type: yesno
    sql: ${TABLE}.IS_DEVELOPER ;;
  }

  dimension: is_embed {
    type: yesno
    sql: ${TABLE}.IS_EMBED ;;
  }

  dimension: is_explorer {
    type: yesno
    sql: ${TABLE}.IS_EXPLORER ;;
  }

  dimension_group: last_api_login {
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
    sql: ${TABLE}.LAST_API_LOGIN_AT ;;
  }

  dimension_group: last_ui_login {
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
    sql: ${TABLE}.LAST_UI_LOGIN_AT ;;
  }

  dimension: last_ui_login_credential_type {
    type: string
    sql: ${TABLE}.LAST_UI_LOGIN_CREDENTIAL_TYPE ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
