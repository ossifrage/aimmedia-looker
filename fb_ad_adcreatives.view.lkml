view: fb_ad_adcreatives {
  sql_table_name: PUBLIC.FB_AD_ADCREATIVES ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: ad_labels {
    type: string
    sql: ${TABLE}."AdLabels" ;;
  }

  dimension: applink_treatment {
    type: string
    sql: ${TABLE}."ApplinkTreatment" ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}."Body" ;;
  }

  dimension: call_to_action_type {
    type: string
    sql: ${TABLE}."CallToActionType" ;;
  }

  dimension: effective_instagram_story_id {
    type: string
    sql: ${TABLE}."EffectiveInstagramStoryId" ;;
  }

  dimension: image_hash {
    type: string
    sql: ${TABLE}."ImageHash" ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}."ImageUrl" ;;
  }

  dimension: instagram_actor_id {
    type: string
    sql: ${TABLE}."InstagramActorId" ;;
  }

  dimension: instagram_permalink_url {
    type: string
    sql: ${TABLE}."InstagramPermalinkUrl" ;;
  }

  dimension: instagram_story_id {
    type: string
    sql: ${TABLE}."InstagramStoryId" ;;
  }

  dimension: link_og_id {
    type: string
    sql: ${TABLE}."LinkOgId" ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}."LinkUrl" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}."ObjectId" ;;
  }

  dimension: object_story_id {
    type: string
    sql: ${TABLE}."ObjectStoryId" ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}."ObjectType" ;;
  }

  dimension: object_url {
    type: string
    sql: ${TABLE}."ObjectUrl" ;;
  }

  dimension: product_set_id {
    type: string
    sql: ${TABLE}."ProductSetId" ;;
  }

  dimension: run_status {
    type: string
    sql: ${TABLE}."RunStatus" ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}."Target" ;;
  }

  dimension: template_url {
    type: string
    sql: ${TABLE}."TemplateUrl" ;;
  }

  dimension: thumbnail_url {
    type: string
    sql: ${TABLE}."ThumbnailUrl" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."Title" ;;
  }

  dimension: url_tags {
    type: string
    sql: ${TABLE}."UrlTags" ;;
  }

  dimension: use_page_actor_override {
    type: yesno
    sql: ${TABLE}."UsePageActorOverride" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
