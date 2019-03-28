view: project_configuration {
  sql_table_name: PUBLIC.PROJECT_CONFIGURATION ;;

  dimension: allow_warnings {
    type: yesno
    sql: ${TABLE}.ALLOW_WARNINGS ;;
  }

  dimension: deploy_secret {
    type: string
    sql: ${TABLE}.DEPLOY_SECRET ;;
  }

  dimension: git_password {
    type: string
    sql: ${TABLE}.GIT_PASSWORD ;;
  }

  dimension: git_password_user_attribute {
    type: string
    sql: ${TABLE}.GIT_PASSWORD_USER_ATTRIBUTE ;;
  }

  dimension: git_service_name {
    type: string
    sql: ${TABLE}.GIT_SERVICE_NAME ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.GIT_USERNAME ;;
  }

  dimension: git_username_user_attribute {
    type: string
    sql: ${TABLE}.GIT_USERNAME_USER_ATTRIBUTE ;;
  }

  dimension: lookml_type {
    type: string
    sql: ${TABLE}.LOOKML_TYPE ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: pull_request_mode {
    type: string
    sql: ${TABLE}.PULL_REQUEST_MODE ;;
  }

  dimension: validation_required {
    type: yesno
    sql: ${TABLE}.VALIDATION_REQUIRED ;;
  }

  measure: count {
    type: count
    drill_fields: [git_username, git_service_name]
  }
}
