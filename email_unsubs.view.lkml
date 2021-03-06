view: email_unsubs {
  sql_table_name: PUBLIC.EMAIL_UNSUBS ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: batch_id {
    type: string
    sql: ${TABLE}.BATCH_ID ;;
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
    type: date
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

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.SUBSCRIBER_ID ;;
  }

  dimension: subscriber_key {
    type: string
    sql: ${TABLE}.SUBSCRIBER_KEY ;;
  }

  dimension: triggered_send_external_key {
    type: string
    sql: ${TABLE}.TRIGGERED_SEND_EXTERNAL_KEY ;;
  }

  dimension: unsub_reason {
    type: string
    sql: ${TABLE}.UNSUB_REASON ;;
  }

  measure: unsubs {
    type: count_distinct
    sql: ${id} ;;
  }

  measure: unique_unsubs {
    type: count_distinct
    sql: ${client_id}||' '||${send_id}||' '||${subscriber_id};;
    drill_fields: [id]
  }

  measure: unsub_rate {
    type: number
    value_format_name: percent_2
    sql:  1.0 * ${unique_unsubs} / nullif(${email_sends.unique_sends},0) ;;
    drill_fields: [id]
  }
}
