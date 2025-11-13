.class public Lcom/android/internal/telephony/SmsConstants;
.super Ljava/lang/Object;
.source "SmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsConstants$MessageClass;
    }
.end annotation


# static fields
.field public static final blacklist DCN_STATUS_CS_ONLY:B = 0x0t

.field public static final blacklist DCN_STATUS_EMERGENCY_CALL_START:B = 0x10t

.field public static final blacklist DCN_STATUS_EMERGENCY_CALL_STOP:B = 0x20t

.field public static final blacklist EMERGENCY_MODE_CANCELED:I = 0x3

.field public static final blacklist EMERGENCY_MODE_DEFAULT:I = 0x0

.field public static final blacklist EMERGENCY_MODE_END:I = 0x2

.field public static final blacklist EMERGENCY_MODE_END_WITH_ECBM:I = 0x5

.field public static final blacklist EMERGENCY_MODE_FAILED:I = 0x4

.field public static final blacklist EMERGENCY_MODE_START:I = 0x1

.field public static final blacklist EMERGENCY_SMS_CALLBACK_MODE_ENTER:I = 0x1

.field public static final blacklist EMERGENCY_SMS_CALLBACK_MODE_EXIT:I = 0x0

.field public static final greylist-max-o ENCODING_16BIT:I = 0x3

.field public static final greylist-max-o ENCODING_7BIT:I = 0x1

.field public static final greylist-max-o ENCODING_8BIT:I = 0x2

.field public static final greylist-max-o ENCODING_KSC5601:I = 0x4

.field public static final greylist-max-o ENCODING_UNKNOWN:I = 0x0

.field public static final greylist-max-o FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final greylist-max-o FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final greylist-max-o FORMAT_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final blacklist MAX_DATA_LEN_WITH_SEGMENT_SEPERATOR:I = 0x9a

.field public static final greylist-max-o MAX_USER_DATA_BYTES:I = 0x8c

.field public static final greylist-max-o MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final greylist-max-o MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final greylist-max-o MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final blacklist SMS_3GPP2_LGT_NETWORK:Ljava/lang/String; = "sms_3gpp2_lgt_network"

.field public static final blacklist SMS_ALLOW_EMAIL_SMS_ADDRESS:Ljava/lang/String; = "sms_allow_email_sms_address"

.field public static final blacklist SMS_CDMA_COPY_TO_RUIM:Ljava/lang/String; = "sms_cdma_copy_to_ruim"

.field public static final blacklist SMS_CDMA_SENT_FAIL_DISPLAY:Ljava/lang/String; = "sms_cdma_sent_fail_display"

.field public static final blacklist SMS_CHECK_DUPLICATE_PORT_OMADM_WAPPUSH:Ljava/lang/String; = "sms_check_duplicate_port_omadm_wappush"

.field public static final blacklist SMS_CHECK_ECM_MODE:Ljava/lang/String; = "sms_check_ecm_mode"

.field public static final blacklist SMS_DISABLE_SMS_VOICEMAIL:Ljava/lang/String; = "sms_disable_sms_voicemail"

.field public static final blacklist SMS_DISPLAY_POLICY_PARTIAL_LONG_SMS:Ljava/lang/String; = "sms_display_policy_partial_long_sms"

.field public static final blacklist SMS_ECM_INCOMING_SMS:Ljava/lang/String; = "sms_ecm_incoming_sms"

.field public static final blacklist SMS_ERROR_CLASS_RETRY:Ljava/lang/String; = "sms_error_class_retry"

.field public static final blacklist SMS_GLOBAL_MODE_SMS_ADDRESS_RULE:Ljava/lang/String; = "sms_global_mode_sms_address_rule"

.field public static final blacklist SMS_LINK_WARNING_INDICATION:Ljava/lang/String; = "sms_link_warning_indication"

.field public static final blacklist SMS_MAX_RETRIES_ONE:Ljava/lang/String; = "sms_max_retries_one"

.field public static final blacklist SMS_MAX_RETRIES_ZERO:Ljava/lang/String; = "sms_max_retries_zero"

.field public static final blacklist SMS_MMS_UAP_BUILD_ID:Ljava/lang/String; = "sms_mms_uap_build_id"

.field public static final blacklist SMS_NETWORK_SEARCH_FOR_E911:Ljava/lang/String; = "sms_network_search_for_e911"

.field public static final blacklist SMS_NOT_COUNT_VOICEMAIL:Ljava/lang/String; = "sms_not_count_voicemail"

.field public static final blacklist SMS_NOT_RECEIVE_CMAS_WITHOUT_SIM:Ljava/lang/String; = "sms_not_receive_cmas_without_sim"

.field public static final blacklist SMS_NOT_USED_VALIDITY_PERIOD_FORMAT:Ljava/lang/String; = "sms_not_used_validity_period_format"

.field public static final blacklist SMS_NSRI_SECURITY_SOLUTION:Ljava/lang/String; = "sms_nsri_security_solution"

.field public static final blacklist SMS_QMI_CDMA_GSM:Ljava/lang/String; = "sms_qmi_cdma_gsm"

.field public static final blacklist SMS_READ_CONFIRM:Ljava/lang/String; = "sms_read_confirm"

.field public static final blacklist SMS_RECEIVE_SMS_WITHOUT_SMSCAPABLE:Ljava/lang/String; = "sms_receive_sms_without_smscapable"

.field public static final blacklist SMS_RP_SMMA_NOT_SUPPORTED:Ljava/lang/String; = "sms_rp_smma_not_supported"

.field public static final blacklist SMS_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "sms_safe_message_indication"

.field public static final blacklist SMS_SEGMENTED_SMS:Ljava/lang/String; = "sms_segmented_sms"

.field public static final blacklist SMS_SHOW_HIDDEN_MENU_SMS_PREF_MODE:Ljava/lang/String; = "sms_show_hidden_menu_sms_pref_mode"

.field public static final blacklist SMS_SMSP:Ljava/lang/String; = "sms_smsp "

.field public static final blacklist SMS_SPECIAL_ADDRESS_HANDLING_FOR:Ljava/lang/String; = "sms_special_address_handling_for"

.field public static final blacklist SMS_SUPPORT_GSM_8BIT_SMS:Ljava/lang/String; = "sms_support_gsm_8bit_sms"

.field public static final blacklist SMS_SUPPORT_KSC5601:Ljava/lang/String; = "sms_support_ksc5601"

.field public static final blacklist SMS_SUPPORT_REPLY_ADDRESS:Ljava/lang/String; = "sms_support_reply_address"

.field public static final blacklist SMS_WAP_PUSH_FORMAT_SMS:Ljava/lang/String; = "sms_wap_push_format_sms"

.field public static final blacklist SMS_WRITE_UICC_SUPPORTED:Ljava/lang/String; = "sms_write_uicc_supported"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
