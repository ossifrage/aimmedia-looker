view: email_bounces {
  sql_table_name: PUBLIC.EMAIL_BOUNCE ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: bounce_category {
    type: string
    sql: ${TABLE}.BOUNCE_CATEGORY ;;
  }

  dimension: bounce_reason {
    type: string
    sql: ${TABLE}.BOUNCE_REASON ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.EVENT_DATE ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: list_id {
    type: number
    sql: ${TABLE}.LIST_ID ;;
  }

  dimension: send_id {
    type: number
    sql: ${TABLE}.SEND_ID ;;
  }

  dimension: smtp_code {
    type: string
    sql: ${TABLE}.SMTP_CODE ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.SUBSCRIBER_ID ;;
  }

  dimension: subscriber_key {
    type: string
    sql: ${TABLE}.SUBSCRIBER_KEY ;;
  }

  measure: bounces {
    type: count_distinct
    sql: ${id} ;;
  }

  measure: unique_bounces {
    type: count_distinct
    sql: ${client_id}||' '||${send_id}||' '||${subscriber_id};;
    drill_fields: [id]
  }

  measure: bounce_rate {
    type: number
    value_format_name: percent_2
    sql:  1.0 * ${unique_bounces} / nullif(${email_sends.unique_sends},0) ;;
    drill_fields: [id]
  }

}
