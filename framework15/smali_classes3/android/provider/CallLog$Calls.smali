.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls$MissedReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final greylist-max-o ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final whitelist ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final whitelist ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "asserted_display_name"

.field public static final whitelist AUTO_MISSED_EMERGENCY_CALL:J = 0x1L

.field public static final whitelist AUTO_MISSED_MAXIMUM_DIALING:J = 0x4L

.field public static final whitelist AUTO_MISSED_MAXIMUM_RINGING:J = 0x2L

.field public static final whitelist BLOCKED_TYPE:I = 0x6

.field public static final whitelist BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final whitelist BLOCK_REASON_BLOCKED_NUMBER:I = 0x3

.field public static final whitelist BLOCK_REASON_CALL_SCREENING_SERVICE:I = 0x1

.field public static final whitelist BLOCK_REASON_DIRECT_TO_VOICEMAIL:I = 0x2

.field public static final whitelist BLOCK_REASON_NOT_BLOCKED:I = 0x0

.field public static final whitelist BLOCK_REASON_NOT_IN_CONTACTS:I = 0x7

.field public static final whitelist BLOCK_REASON_PAY_PHONE:I = 0x6

.field public static final whitelist BLOCK_REASON_RESTRICTED_NUMBER:I = 0x5

.field public static final whitelist BLOCK_REASON_UNKNOWN_NUMBER:I = 0x4

.field public static final whitelist CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final whitelist CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final whitelist CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final whitelist CACHED_NAME:Ljava/lang/String; = "name"

.field public static final whitelist CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final whitelist CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final whitelist CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final whitelist CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final whitelist CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final whitelist CALL_SCREENING_APP_NAME:Ljava/lang/String; = "call_screening_app_name"

.field public static final whitelist CALL_SCREENING_COMPONENT_NAME:Ljava/lang/String; = "call_screening_component_name"

.field public static final whitelist COMPOSER_PHOTO_URI:Ljava/lang/String; = "composer_photo_uri"

.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final whitelist COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final whitelist DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final whitelist FEATURES:Ljava/lang/String; = "features"

.field public static final whitelist FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final whitelist FEATURES_HD_CALL:I = 0x4

.field public static final whitelist FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final whitelist FEATURES_RTT:I = 0x20

.field public static final blacklist FEATURES_SIM2:I = 0x80

.field public static final blacklist FEATURES_VERIFIED_NUMBER:I = 0x100

.field public static final whitelist FEATURES_VIDEO:I = 0x1

.field public static final whitelist FEATURES_VOLTE:I = 0x40

.field public static final whitelist FEATURES_WIFI:I = 0x8

.field public static final whitelist GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final whitelist INCOMING_TYPE:I = 0x1

.field public static final whitelist IS_BUSINESS_CALL:Ljava/lang/String; = "is_business_call"

.field public static final blacklist IS_PHONE_ACCOUNT_MIGRATION_PENDING:Ljava/lang/String; = "is_call_log_phone_account_migration_pending"

.field public static final whitelist IS_READ:Ljava/lang/String; = "is_read"

.field public static final whitelist LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final whitelist LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final whitelist LOCATION:Ljava/lang/String; = "location"

.field public static final blacklist LOW_RING_VOLUME:I = 0x0

.field private static final greylist-max-o MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final whitelist MISSED_REASON:Ljava/lang/String; = "missed_reason"

.field public static final whitelist MISSED_REASON_NOT_MISSED:J = 0x0L

.field public static final whitelist MISSED_TYPE:I = 0x3

.field public static final whitelist NEW:Ljava/lang/String; = "new"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final whitelist OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final whitelist OUTGOING_TYPE:I = 0x2

.field public static final greylist-max-o PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final greylist-max-o PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist REJECTED_TYPE:I = 0x5

.field public static final whitelist SEM_3RD_END_CALL:Ljava/lang/String; = "sec_3rd_end_call"

.field public static final blacklist SEM_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final blacklist SEM_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final blacklist SEM_ADDRESS:Ljava/lang/String; = "address"

.field public static final whitelist SEM_ANSWERED_EXTERNALLY_TYPE_SHARED_CALL:I = 0x578

.field public static final blacklist SEM_BUSINESS_NAME:Ljava/lang/String; = "bname"

.field public static final blacklist SEM_CALL_OUT_DURATION:Ljava/lang/String; = "call_out_duration"

.field public static final blacklist SEM_CALL_PLUS:Ljava/lang/String; = "callplus"

.field public static final blacklist SEM_CDNIP_NUMBER:Ljava/lang/String; = "cdnip_number"

.field public static final blacklist SEM_CITY_ID:Ljava/lang/String; = "cityid"

.field public static final blacklist SEM_CMC_DEVICE:Ljava/lang/String; = "sec_cmc_device"

.field public static final blacklist SEM_CNAP_NAME:Ljava/lang/String; = "cnap_name"

.field public static final blacklist SEM_CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final whitelist SEM_CONTENTS_VALUE_KEY_CONTACT_ID:Ljava/lang/String; = "ci_contact_id"

.field public static final whitelist SEM_CONTENTS_VALUE_KEY_NORMALIZED_NUMBER:Ljava/lang/String; = "ci_normalizedNumber"

.field public static final whitelist SEM_CONTENTS_VALUE_KEY_PHONE_NUMBER:Ljava/lang/String; = "ci_phoneNumber"

.field public static final blacklist SEM_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final blacklist SEM_CUSTOM1:Ljava/lang/String; = "sec_custom1"

.field public static final blacklist SEM_CUSTOM2:Ljava/lang/String; = "sec_custom2"

.field public static final blacklist SEM_CUSTOM3:Ljava/lang/String; = "sec_custom3"

.field public static final blacklist SEM_DORMANT_SET:Ljava/lang/String; = "dormant_set"

.field public static final blacklist SEM_E164_NUMBER:Ljava/lang/String; = "e164_number"

.field public static final blacklist SEM_END_TYPE:Ljava/lang/String; = "sec_end_type"

.field public static final blacklist SEM_FIRST_NAME:Ljava/lang/String; = "fname"

.field public static final blacklist SEM_FREQUENT:Ljava/lang/String; = "frequent"

.field public static final whitelist SEM_GROUP_CALL:Ljava/lang/String; = "sec_group_call"

.field public static final whitelist SEM_GROUP_CALL_ID:Ljava/lang/String; = "data2"

.field public static final whitelist SEM_GROUP_CALL_MEMBER_IDENTIFIER:Ljava/lang/String; = "data4"

.field public static final blacklist SEM_GROUP_ID:Ljava/lang/String; = "sec_groupid"

.field public static final whitelist SEM_INCOMING_TYPE_VISITOR_ROAMING:I = 0x4b0

.field public static final blacklist SEM_LAST_NAME:Ljava/lang/String; = "lname"

.field public static final blacklist SEM_LINE_STATUS:Ljava/lang/String; = "sec_line_status"

.field public static final blacklist SEM_LOG_TYPE:Ljava/lang/String; = "logtype"

.field public static final whitelist SEM_LOG_TYPE_CALL_CONFERECNCE:I = 0x546

.field public static final whitelist SEM_LOG_TYPE_CALL_HD:I = 0x96

.field public static final whitelist SEM_LOG_TYPE_CALL_KOETAKU:I = 0x6e

.field public static final whitelist SEM_LOG_TYPE_CALL_SATELLITE:I = 0x60e

.field public static final whitelist SEM_LOG_TYPE_CALL_SWIS:I = 0x578

.field public static final whitelist SEM_LOG_TYPE_CALL_VIDEO:I = 0x1f4

.field public static final whitelist SEM_LOG_TYPE_CALL_VIDEO_EPDG_WIFI:I = 0x5aa

.field public static final whitelist SEM_LOG_TYPE_CALL_VIDEO_VOLTE:I = 0x41a

.field public static final whitelist SEM_LOG_TYPE_CALL_VOICE:I = 0x64

.field public static final whitelist SEM_LOG_TYPE_CALL_VOICE_VOLTE:I = 0x3e8

.field public static final whitelist SEM_LOG_TYPE_CALL_VOIP:I = 0x320

.field public static final whitelist SEM_LOG_TYPE_CALL_VOWIFI:I = 0x47e

.field public static final whitelist SEM_LOG_TYPE_EMAIL:I = 0x190

.field public static final whitelist SEM_LOG_TYPE_FAKE_BASE_STATION:I = 0x5dc

.field public static final whitelist SEM_LOG_TYPE_IM:I = 0x2bc

.field public static final whitelist SEM_LOG_TYPE_IM_CTC:I = 0x15e

.field public static final whitelist SEM_LOG_TYPE_MMS:I = 0xc8

.field public static final whitelist SEM_LOG_TYPE_RCS_CHAT:I = 0x4e2

.field public static final whitelist SEM_LOG_TYPE_RCS_FT:I = 0x514

.field public static final whitelist SEM_LOG_TYPE_RCS_FT_CTC:I = 0xfa

.field public static final whitelist SEM_LOG_TYPE_RCS_GROUP_CHAT:I = 0x4b0

.field public static final whitelist SEM_LOG_TYPE_RCS_SHARED_CONTENT:I = 0x44c

.field public static final whitelist SEM_LOG_TYPE_SMS:I = 0x12c

.field public static final whitelist SEM_LOG_TYPE_SNS:I = 0x258

.field public static final whitelist SEM_LOG_TYPE_VOICEMAIL:I = 0x384

.field public static final whitelist SEM_LOG_TYPE_VVM:I = 0x3b6

.field public static final blacklist SEM_MEMO:Ljava/lang/String; = "sec_memo"

.field public static final blacklist SEM_MESSAGE_CONTENT:Ljava/lang/String; = "m_content"

.field public static final blacklist SEM_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field public static final blacklist SEM_MESSAGE_SUBJECT:Ljava/lang/String; = "m_subject"

.field public static final whitelist SEM_MISSED_TYPE_ROAMING:I = 0x4e2

.field public static final whitelist SEM_MSG_ID:Ljava/lang/String; = "sec_msg_id"

.field public static final whitelist SEM_OUTGOING_TYPE_CONFERECNCE:I = 0x640

.field public static final whitelist SEM_OUTGOING_TYPE_HOME_ROAMING:I = 0x47e

.field public static final whitelist SEM_OUTGOING_TYPE_VISITOR_ROAMING:I = 0x44c

.field public static final blacklist SEM_PHOTORING_URI:Ljava/lang/String; = "photoring_uri"

.field public static final blacklist SEM_PINYIN_NAME:Ljava/lang/String; = "pinyin_name"

.field public static final blacklist SEM_PLACES_INFO:Ljava/lang/String; = "sec_places_info"

.field public static final whitelist SEM_PULLED_TYPE_SHARED_CALL:I = 0x5dc

.field public static final blacklist SEM_QUANTUM_ENCRYPTION:Ljava/lang/String; = "sec_quantum_encryption"

.field public static final blacklist SEM_RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final blacklist SEM_RECORD:Ljava/lang/String; = "sec_record"

.field public static final whitelist SEM_REJECTED_TYPE_ROAMING:I = 0x514

.field public static final whitelist SEM_REJECTED_TYPE_SHARED_CALL:I = 0x5aa

.field public static final blacklist SEM_REJECT_FLAG:Ljava/lang/String; = "reject_flag"

.field public static final blacklist SEM_REMIND_ME_LATER_SET:Ljava/lang/String; = "remind_me_later_set"

.field public static final whitelist SEM_RINGING_TIME:Ljava/lang/String; = "sec_ringing_time"

.field public static final blacklist SEM_ROAMING_AUTO_DIALER_QUERY_PARAM:Ljava/lang/String; = "ROAMING_AUTO_DIALER"

.field public static final blacklist SEM_RTT:Ljava/lang/String; = "sec_rtt"

.field public static final blacklist SEM_SAMSUNG_OWN_NUM:Ljava/lang/String; = "samsung_ownnum"

.field public static final blacklist SEM_SERVICE_PROVIDER_TYPE:Ljava/lang/String; = "sp_type"

.field public static final blacklist SEM_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final whitelist SEM_SERVICE_TYPE_CMF_CALL:I = 0x2774

.field public static final whitelist SEM_SERVICE_TYPE_EMERGENCY_ALERT:I = 0x2904

.field public static final whitelist SEM_SERVICE_TYPE_FMM_CONTACT_OWNER:I = 0x286e

.field public static final whitelist SEM_SERVICE_TYPE_FMM_LOST_DEVICE:I = 0x283c

.field public static final whitelist SEM_SERVICE_TYPE_MESSAGE_CALL:I = 0x2710

.field public static final whitelist SEM_SERVICE_TYPE_SWITCH_CALL:I = 0x280a

.field public static final whitelist SEM_SERVICE_TYPE_SWITCH_CALL_DISCONNECTED:I = 0x27d8

.field public static final whitelist SEM_SERVICE_TYPE_YELLOW_PAGE:I = 0x28a0

.field public static final blacklist SEM_SIMNUM:Ljava/lang/String; = "simnum"

.field public static final blacklist SEM_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final blacklist SEM_SMART_CALL:Ljava/lang/String; = "sec_smartcall"

.field public static final blacklist SEM_SPAM_REPORT:Ljava/lang/String; = "spam_report"

.field public static final blacklist SEM_STIR_SHAKEN:Ljava/lang/String; = "sec_stir_shaken"

.field public static final blacklist SEM_SUBID:Ljava/lang/String; = "sec_subid"

.field public static final blacklist SEM_VVM_ID:Ljava/lang/String; = "vvm_id"

.field public static final greylist-max-o SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SHORT_RING_THRESHOLD:J = 0x1388L

.field public static final whitelist SUBJECT:Ljava/lang/String; = "subject"

.field public static final greylist-max-o SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final whitelist TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final greylist-max-o TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist USER_MISSED_CALL_FILTERS_TIMEOUT:J = 0x400000L

.field public static final whitelist USER_MISSED_CALL_SCREENING_SERVICE_SILENCED:J = 0x200000L

.field public static final whitelist USER_MISSED_DND_MODE:J = 0x40000L

.field public static final whitelist USER_MISSED_LOW_RING_VOLUME:J = 0x80000L

.field public static final blacklist USER_MISSED_NEVER_RANG:J = 0x800000L

.field public static final blacklist USER_MISSED_NOT_RUNNING:J = 0x1000000L

.field public static final whitelist USER_MISSED_NO_ANSWER:J = 0x10000L

.field public static final whitelist USER_MISSED_NO_VIBRATE:J = 0x100000L

.field public static final whitelist USER_MISSED_SHORT_RING:J = 0x20000L

.field public static final whitelist VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final whitelist VOICEMAIL_TYPE:I = 0x4

.field public static final whitelist VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    nop

    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    nop

    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    nop

    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/CallLog$Calls;->addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/CallLog$Calls;->getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPresentation(Landroid/provider/CallLog$AddCallParams;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/provider/CallLog$Calls;->getLogNumberPresentation(Ljava/lang/String;I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const/4 v8, 0x1

    if-eq v5, v8, :cond_1

    invoke-static {v1, v7}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fputmNumber(Landroid/provider/CallLog$AddCallParams;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v6, ""

    :cond_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v9

    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    const/16 v11, 0xe

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    if-eqz v2, :cond_3

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_3
    const-string/jumbo v11, "number"

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "post_dial_digits"

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPostDialDigits(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "via_number"

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmViaNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "presentation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "type"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmFeatures(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "features"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmStart(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "date"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "duration"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v11

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "data_usage"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    const-string/jumbo v11, "subscription_component_name"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "subscription_id"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "phone_account_address"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "new"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "add_for_all_users"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsRead(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "is_read"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallBlockReason(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "block_reason"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallScreeningAppName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/CallLog$Calls;->charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "call_screening_app_name"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "call_screening_component_name"

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallScreeningComponentName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmMissedReason(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string/jumbo v12, "missed_reason"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPriority(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "priority"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "subject"

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmSubject(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "composer_photo_uri"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "is_call_log_phone_account_migration_pending"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsBusinessCall(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "is_business_call"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "asserted_display_name"

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAssertedDisplayName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v11, 0x0

    const-class v12, Landroid/os/UserManager;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v13

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v14

    const-string v15, "CallLog"

    if-eqz v14, :cond_8

    const-string v14, "PersonaManager COM is activated"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v8}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fputmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;Z)V

    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v8

    const-string/jumbo v14, "location"

    if-eqz v8, :cond_14

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v12, v8}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v8}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v0, v12, v2, v10}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v4

    const-string v4, "call_log_shadow"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v18, v2

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    goto/16 :goto_4

    :cond_a
    if-nez v13, :cond_b

    move-object v11, v2

    :cond_b
    invoke-virtual {v12}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/16 v18, 0x0

    move/from16 v24, v18

    move-object/from16 v18, v2

    move/from16 v2, v24

    :goto_1
    if-ge v2, v8, :cond_12

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    move/from16 v21, v5

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/UserHandle;->isSystem()Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_3

    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_d

    invoke-static {v0, v12, v5}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v22

    if-nez v22, :cond_d

    move-object/from16 v22, v6

    const-string v6, "Other user should not have callLog"

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v7

    goto :goto_3

    :cond_d
    move-object/from16 v22, v6

    invoke-virtual {v12, v4}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v12, v4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v1, v3, v4}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_e

    move-object/from16 v23, v7

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move-object/from16 v23, v7

    const/4 v7, 0x0

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v10, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v0, v12, v4, v10}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-ne v5, v13, :cond_11

    move-object v11, v7

    goto :goto_3

    :cond_f
    move-object/from16 v23, v7

    goto :goto_3

    :cond_10
    move-object/from16 v23, v7

    :cond_11
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    goto :goto_1

    :cond_12
    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_7

    :cond_13
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    :goto_4
    const-string v2, "The system user is still encrypted or the callLog is inserted into the shadow"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_14
    move-object/from16 v17, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;

    move-result-object v2

    goto :goto_5

    :cond_15
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    :goto_5
    nop

    invoke-virtual {v12, v2}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v12, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v1, v3, v2}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_6
    invoke-static {v0, v12, v2, v10}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    :goto_7
    return-object v11
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;JI)Landroid/net/Uri;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-wide/from16 v19, p11

    move/from16 v21, p13

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v21}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;JI)Landroid/net/Uri;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v19, p15

    move/from16 v21, p17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v21}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;
    .locals 17

    new-instance v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    invoke-direct {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;-><init>()V

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v5, p5

    invoke-virtual {v0, v5}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v6, p6

    invoke-virtual {v0, v6}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v7, p7

    invoke-virtual {v0, v7}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-wide/from16 v9, p9

    invoke-virtual {v0, v9, v10}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v11, p11

    invoke-virtual {v0, v11}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    if-nez p12, :cond_0

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_0
    invoke-virtual {v0, v12, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v15, p16

    invoke-virtual {v0, v15}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move-wide/from16 v1, p19

    invoke-virtual {v0, v1, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    move/from16 v1, p21

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    invoke-virtual {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->build()Landroid/provider/CallLog$AddCallParams;

    move-result-object v2

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/provider/CallLog$Calls;->addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    const-string v0, "CallLog"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "ROAMING_AUTO_DIALER"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_2
    :try_start_0
    const-string v6, "Provider called! Insert callLog as a uri"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to insert into call log due to appops denial; resultUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_1

    :cond_4
    const-string v7, "Failed to insert into call log; null result uri."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v6

    :catch_0
    move-exception v5

    const-string v6, "Failed to insert calllog"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static whitelist getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type = 2"

    const-string v5, "date DESC"

    const/4 v4, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static blacklist getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static blacklist getLogNumberPresentation(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static blacklist isUserMissed(J)Z
    .locals 2

    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 6

    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object v2, Landroid/provider/CallLog$Locations;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v2, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    const-string v4, "CallLog"

    const-string v5, "Skipping inserting location because caller lacks ACCESS_FINE_LOCATION."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static greylist-max-o shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 3

    nop

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p1, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static greylist-max-o updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static greylist-max-o updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    return-void
.end method
