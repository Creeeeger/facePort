.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsManager$SmsShortCodeCategory;,
        Landroid/telephony/SmsManager$FinancialSmsCallback;,
        Landroid/telephony/SmsManager$Result;,
        Landroid/telephony/SmsManager$StatusOnIcc;,
        Landroid/telephony/SmsManager$SubscriptionResolverResult;,
        Landroid/telephony/SmsManager$PremiumSmsConsent;
    }
.end annotation


# static fields
.field public static final greylist-max-o CDMA_SMS_RECORD_LENGTH:I = 0xff

.field private static final blacklist DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

.field public static final whitelist EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final whitelist EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final blacklist EXTRA_SIM_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.extra.SIM_SUBSCRIPTION_ID"

.field public static final blacklist EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.telephony.extra.SMS_MESSAGE"

.field public static final blacklist EXTRA_STATUS:Ljava/lang/String; = "android.telephony.extra.STATUS"

.field private static final blacklist GET_TARGET_SDK_VERSION_CODE_CHANGE:J = 0x8a6c688L

.field public static final blacklist ICC_TYPE_AUTO:I = -0x1

.field public static final blacklist ICC_TYPE_CSIM:I = 0x4

.field public static final blacklist ICC_TYPE_CSIM_DEACTIVE:I = 0xa

.field public static final blacklist ICC_TYPE_ISIM:I = 0x5

.field public static final blacklist ICC_TYPE_RUIM:I = 0x3

.field public static final blacklist ICC_TYPE_SIM:I = 0x1

.field public static final blacklist ICC_TYPE_UNKNOW:I = 0x0

.field public static final blacklist ICC_TYPE_USIM:I = 0x2

.field private static final blacklist ISIS_PACKAGE_NAME:Ljava/lang/String; = "com.isis.mclient.verizon.activity"

.field public static final whitelist MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final whitelist MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final whitelist MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final whitelist MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final whitelist MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final greylist-max-o MMS_CONFIG_CLOSE_CONNECTION:Ljava/lang/String; = "mmsCloseConnection"

.field public static final whitelist MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final whitelist MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final whitelist MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final whitelist MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final whitelist MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final whitelist MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final whitelist MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final whitelist MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final whitelist MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final whitelist MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final whitelist MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final whitelist MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final whitelist MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final whitelist MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final whitelist MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final whitelist MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final whitelist MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final whitelist MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final whitelist MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final whitelist MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final whitelist MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final whitelist MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final whitelist MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final whitelist MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final whitelist MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final whitelist MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final whitelist MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final whitelist MMS_ERROR_DATA_DISABLED:I = 0xb

.field public static final whitelist MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final whitelist MMS_ERROR_INACTIVE_SUBSCRIPTION:I = 0xa

.field public static final whitelist MMS_ERROR_INVALID_APN:I = 0x2

.field public static final whitelist MMS_ERROR_INVALID_SUBSCRIPTION_ID:I = 0x9

.field public static final whitelist MMS_ERROR_IO_ERROR:I = 0x5

.field public static final whitelist MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final whitelist MMS_ERROR_RETRY:I = 0x6

.field public static final whitelist MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final whitelist MMS_ERROR_UNSPECIFIED:I = 0x1

.field public static final whitelist PREMIUM_SMS_CONSENT_ALWAYS_ALLOW:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_ASK_USER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_NEVER_ALLOW:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REGEX_PREFIX_DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist RESULT_BLUETOOTH_DISCONNECTED:I = 0x1b

.field public static final whitelist RESULT_CANCELLED:I = 0x17

.field public static final whitelist RESULT_ENCODING_ERROR:I = 0x12

.field public static final whitelist RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final whitelist RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final whitelist RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final whitelist RESULT_ERROR_NONE:I = 0x0

.field public static final whitelist RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final whitelist RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final whitelist RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final whitelist RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x8

.field public static final whitelist RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x7

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x15

.field public static final whitelist RESULT_INVALID_ARGUMENTS:I = 0xb

.field public static final whitelist RESULT_INVALID_BLUETOOTH_ADDRESS:I = 0x1a

.field public static final whitelist RESULT_INVALID_SMSC_ADDRESS:I = 0x13

.field public static final whitelist RESULT_INVALID_SMS_FORMAT:I = 0xe

.field public static final whitelist RESULT_INVALID_STATE:I = 0xc

.field public static final whitelist RESULT_MODEM_ERROR:I = 0x10

.field public static final whitelist RESULT_NETWORK_ERROR:I = 0x11

.field public static final whitelist RESULT_NETWORK_REJECT:I = 0xa

.field public static final whitelist RESULT_NO_BLUETOOTH_SERVICE:I = 0x19

.field public static final whitelist RESULT_NO_DEFAULT_SMS_APP:I = 0x20

.field public static final whitelist RESULT_NO_MEMORY:I = 0xd

.field public static final whitelist RESULT_NO_RESOURCES:I = 0x16

.field public static final whitelist RESULT_OPERATION_NOT_ALLOWED:I = 0x14

.field public static final whitelist RESULT_RADIO_NOT_AVAILABLE:I = 0x9

.field public static final whitelist RESULT_RECEIVE_DISPATCH_FAILURE:I = 0x1f4

.field public static final whitelist RESULT_RECEIVE_INJECTED_NULL_PDU:I = 0x1f5

.field public static final whitelist RESULT_RECEIVE_NULL_MESSAGE_FROM_RIL:I = 0x1f7

.field public static final whitelist RESULT_RECEIVE_RUNTIME_EXCEPTION:I = 0x1f6

.field public static final whitelist RESULT_RECEIVE_SQL_EXCEPTION:I = 0x1f9

.field public static final whitelist RESULT_RECEIVE_URI_EXCEPTION:I = 0x1fa

.field public static final whitelist RESULT_RECEIVE_WHILE_ENCRYPTED:I = 0x1f8

.field public static final whitelist RESULT_REMOTE_EXCEPTION:I = 0x1f

.field public static final whitelist RESULT_REQUEST_NOT_SUPPORTED:I = 0x18

.field public static final whitelist RESULT_RIL_ACCESS_BARRED:I = 0x7a

.field public static final whitelist RESULT_RIL_BLOCKED_DUE_TO_CALL:I = 0x7b

.field public static final whitelist RESULT_RIL_CANCELLED:I = 0x77

.field public static final whitelist RESULT_RIL_ENCODING_ERR:I = 0x6d

.field public static final whitelist RESULT_RIL_GENERIC_ERROR:I = 0x7c

.field public static final whitelist RESULT_RIL_INTERNAL_ERR:I = 0x71

.field public static final whitelist RESULT_RIL_INVALID_ARGUMENTS:I = 0x68

.field public static final whitelist RESULT_RIL_INVALID_MODEM_STATE:I = 0x73

.field public static final whitelist RESULT_RIL_INVALID_SMSC_ADDRESS:I = 0x6e

.field public static final whitelist RESULT_RIL_INVALID_SMS_FORMAT:I = 0x6b

.field public static final whitelist RESULT_RIL_INVALID_STATE:I = 0x67

.field public static final whitelist RESULT_RIL_MODEM_ERR:I = 0x6f

.field public static final whitelist RESULT_RIL_NETWORK_ERR:I = 0x70

.field public static final whitelist RESULT_RIL_NETWORK_NOT_READY:I = 0x74

.field public static final whitelist RESULT_RIL_NETWORK_REJECT:I = 0x66

.field public static final whitelist RESULT_RIL_NO_MEMORY:I = 0x69

.field public static final whitelist RESULT_RIL_NO_RESOURCES:I = 0x76

.field public static final whitelist RESULT_RIL_OPERATION_NOT_ALLOWED:I = 0x75

.field public static final whitelist RESULT_RIL_RADIO_NOT_AVAILABLE:I = 0x64

.field public static final whitelist RESULT_RIL_REQUEST_NOT_SUPPORTED:I = 0x72

.field public static final whitelist RESULT_RIL_REQUEST_RATE_LIMITED:I = 0x6a

.field public static final whitelist RESULT_RIL_SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED:I = 0x79

.field public static final whitelist RESULT_RIL_SIM_ABSENT:I = 0x78

.field public static final whitelist RESULT_RIL_SMS_SEND_FAIL_RETRY:I = 0x65

.field public static final whitelist RESULT_RIL_SYSTEM_ERR:I = 0x6c

.field public static final whitelist RESULT_SMS_BLOCKED_DURING_EMERGENCY:I = 0x1d

.field public static final whitelist RESULT_SMS_SEND_RETRY_FAILED:I = 0x1e

.field public static final blacklist RESULT_STATUS_SUCCESS:I = 0x0

.field public static final blacklist RESULT_STATUS_TIMEOUT:I = 0x1

.field public static final whitelist RESULT_SYSTEM_ERROR:I = 0xf

.field public static final whitelist RESULT_UNEXPECTED_EVENT_STOP_SENDING:I = 0x1c

.field public static final blacklist SMS_CATEGORY_FREE_SHORT_CODE:I = 0x1

.field public static final blacklist SMS_CATEGORY_NOT_SHORT_CODE:I = 0x0

.field public static final blacklist SMS_CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field public static final blacklist SMS_CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field public static final blacklist SMS_CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field public static final blacklist SMS_MESSAGE_PERIOD_NOT_SPECIFIED:I = -0x1

.field public static final blacklist SMS_MESSAGE_PRIORITY_NOT_SPECIFIED:I = -0x1

.field public static final greylist-max-o SMS_RECORD_LENGTH:I = 0xb0

.field public static final whitelist STATUS_ON_ICC_FREE:I = 0x0

.field public static final whitelist STATUS_ON_ICC_READ:I = 0x1

.field public static final whitelist STATUS_ON_ICC_SENT:I = 0x5

.field public static final whitelist STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final whitelist STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SmsManager"

.field public static final blacklist VALUE_INPUT_MODE_AUTO:I = 0x2

.field public static final blacklist VALUE_INPUT_MODE_GSM7BIT:I = 0x0

.field public static final blacklist VALUE_INPUT_MODE_UCS2:I = 0x1

.field static blacklist mMsgEncodingType:I

.field private static final greylist-max-o sLockObject:Ljava/lang/Object;

.field private static final greylist-max-o sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private greylist-max-p mSubId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendResolverResult(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smformatCrossStackMessageId(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 1

    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 114
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    .line 3376
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->mMsgEncodingType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    iput-object p1, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    .line 1570
    iput p2, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 1571
    return-void
.end method

.method private blacklist convertDateType(Ljava/lang/String;)J
    .locals 5
    .param p1, "date"    # Ljava/lang/String;

    .line 3845
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3846
    .local v0, "df":Ljava/text/DateFormat;
    const/4 v1, 0x0

    .line 3849
    .local v1, "d":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 3852
    goto :goto_0

    .line 3850
    :catch_0
    move-exception v2

    .line 3851
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 3853
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private greylist-max-o createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 2061
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2062
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 2063
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2064
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2065
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;

    .line 2067
    .local v3, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v3, :cond_0

    .line 2068
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v5

    .line 2069
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    .line 2068
    invoke-static {v4, v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 2070
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 2071
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    .end local v3    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2076
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static blacklist createMessageListFromRawRecords(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 3465
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3466
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_2

    .line 3467
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 3468
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3469
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;

    .line 3471
    .local v3, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v3, :cond_1

    .line 3472
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 3473
    .local v4, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    if-nez v4, :cond_0

    .line 3475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFromEfRecord NULL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    goto :goto_1

    .line 3479
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3468
    .end local v3    # "data":Lcom/android/internal/telephony/SmsRawData;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3483
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static blacklist formatCrossStackMessageId(J)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # J

    .line 3356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{x-message-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    return-object v0

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefault()Landroid/telephony/SmsManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1504
    sget-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .locals 2

    .line 2160
    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2163
    :catch_0
    move-exception v1

    .line 2164
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 2161
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2162
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private static greylist-max-o getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .line 1737
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .line 1729
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1730
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1733
    return-object v0

    .line 1731
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .line 1697
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1698
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1699
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1695
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1700
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 1703
    return-object v0

    .line 1701
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getMessageStatusForIcc(IZ)I
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "isRead"    # Z

    .line 3827
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3828
    const/4 v0, 0x5

    return v0

    .line 3829
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3830
    const/4 v0, 0x7

    return v0

    .line 3832
    :cond_1
    if-eqz p2, :cond_2

    .line 3833
    const/4 v0, 0x1

    return v0

    .line 3835
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 1519
    sget-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1520
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1522
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    sget-object v2, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsManager;

    .line 1523
    .local v3, "smsManager":Landroid/telephony/SmsManager;
    if-nez v3, :cond_0

    .line 1524
    new-instance v4, Landroid/telephony/SmsManager;

    invoke-direct {v4, p0, p1}, Landroid/telephony/SmsManager;-><init>(Landroid/content/Context;I)V

    move-object v3, v4

    .line 1525
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    :cond_0
    monitor-exit v0

    return-object v3

    .line 1528
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    .end local v3    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 1
    .param p0, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1548
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist notifySmsError(Landroid/app/PendingIntent;I)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "error"    # I

    .line 1707
    if-eqz p0, :cond_0

    .line 1709
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    goto :goto_0

    .line 1710
    :catch_0
    move-exception v0

    .line 1714
    :cond_0
    :goto_0
    return-void
.end method

.method private static blacklist notifySmsError(Ljava/util/List;I)V
    .locals 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 1717
    .local p0, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_0

    .line 1718
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1719
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 1720
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 1722
    :cond_0
    return-void
.end method

.method private blacklist resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
    .locals 6
    .param p1, "resolverResult"    # Landroid/telephony/SmsManager$SubscriptionResolverResult;

    .line 1618
    const-string v0, "SmsManager"

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 1619
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 1621
    .local v2, "isSmsSimPickActivityNeeded":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1622
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 1631
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 1635
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 1633
    :catch_0
    move-exception v3

    .line 1634
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "resolveSubscriptionForOperation"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1636
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_0
    if-nez v2, :cond_1

    .line 1637
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1638
    return-void

    .line 1641
    :cond_1
    const-string/jumbo v3, "resolveSubscriptionForOperation isSmsSimPickActivityNeeded is true for calling package. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    new-instance v4, Landroid/telephony/SmsManager$6;

    invoke-direct {v4, p0, p1}, Landroid/telephony/SmsManager$6;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    const/4 v5, 0x0

    invoke-interface {v3, v5, v5, v4}, Lcom/android/internal/telephony/ITelephony;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1663
    goto :goto_1

    .line 1656
    :catch_1
    move-exception v3

    .line 1657
    .restart local v3    # "ex":Landroid/os/RemoteException;
    const-string v4, "Unable to launch activity"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1664
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private greylist-max-o sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 27
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .line 1268
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1271
    if-eqz v15, :cond_9

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_9

    .line 1275
    const-string v2, "SmsManager"

    if-ltz v0, :cond_1

    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v25, v0

    goto :goto_1

    .line 1276
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v0, -0x1

    move/from16 v25, v0

    .line 1280
    .end local p7    # "priority":I
    .local v25, "priority":I
    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_3

    const v0, 0x9b0a0

    if-le v1, v0, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v26, v1

    goto :goto_3

    .line 1281
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v0, -0x1

    move/from16 v26, v0

    .line 1285
    .end local p9    # "validityPeriod":I
    .local v26, "validityPeriod":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 1286
    move/from16 v9, v25

    .line 1287
    .local v9, "finalPriority":I
    move/from16 v11, v26

    .line 1288
    .local v11, "finalValidity":I
    if-eqz p6, :cond_4

    .line 1289
    new-instance v0, Landroid/telephony/SmsManager$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager$4;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    move-object/from16 v3, p0

    invoke-direct {v3, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    goto/16 :goto_6

    .line 1315
    :cond_4
    move-object/from16 v3, p0

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1316
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_5

    .line 1317
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v12, v0

    move-object v10, v13

    move v13, v1

    move-object v1, v14

    move-object v14, v4

    move-object v8, v15

    move-object v15, v5

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, v9

    move/from16 v23, p8

    move/from16 v24, v11

    :try_start_1
    invoke-interface/range {v12 .. v24}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1322
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1316
    .restart local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_5
    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    .line 1326
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_4
    goto :goto_6

    .line 1322
    :catch_1
    move-exception v0

    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMultipartTextMessageInternal (no persist): Couldn\'t send SMS - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1324
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1323
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1328
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "finalPriority":I
    .end local v11    # "finalValidity":I
    :goto_6
    goto :goto_7

    .line 1329
    :cond_6
    move-object/from16 v3, p0

    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    const/4 v0, 0x0

    .line 1330
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    .line 1331
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1332
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/PendingIntent;

    .line 1334
    :cond_7
    if-eqz v10, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1335
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/app/PendingIntent;

    .line 1337
    :cond_8
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v0

    move-object v9, v2

    move/from16 v10, p6

    move/from16 v11, v25

    move/from16 v12, p8

    move/from16 v13, v26

    invoke-direct/range {v4 .. v13}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 1341
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_7
    return-void

    .line 1271
    .end local v25    # "priority":I
    .end local v26    # "validityPeriod":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_9
    move-object/from16 v3, p0

    .line 1272
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1269
    :cond_a
    move-object/from16 v3, p0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1034
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_a

    .line 1036
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eqz v13, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 1041
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1045
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 1056
    if-eqz p6, :cond_4

    .line 1057
    new-instance v0, Landroid/telephony/SmsManager$3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Landroid/telephony/SmsManager$3;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    move-object/from16 v11, p0

    invoke-direct {v11, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto/16 :goto_3

    .line 1080
    :cond_4
    move-object/from16 v11, p0

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1081
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_5

    .line 1082
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    move-object v1, v0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1086
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1088
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/16 v1, 0x1f

    invoke-static {v14, v1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1090
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_1
    goto :goto_3

    .line 1093
    :cond_6
    const/4 v0, 0x0

    .line 1094
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 1095
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v14, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1096
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 1098
    :cond_7
    if-eqz v15, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1099
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    move-object v12, v1

    goto :goto_2

    .line 1101
    :cond_8
    move-object v12, v1

    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v12, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_2
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v0

    move-object v6, v12

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1104
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_3
    return-void

    .line 1042
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .locals 2
    .param p1, "resolverResult"    # Landroid/telephony/SmsManager$SubscriptionResolverResult;
    .param p2, "subId"    # I
    .param p3, "pickActivityShown"    # Z

    .line 1675
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    .line 1677
    return-void

    .line 1680
    :cond_0
    const-wide/32 v0, 0x8a6c688

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1686
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    goto :goto_0

    .line 1690
    :cond_1
    invoke-interface {p1}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onFailure()V

    .line 1692
    :goto_0
    return-void
.end method

.method private greylist-max-o sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 28
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I

    .line 733
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 737
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 741
    const-string v2, "SmsManager"

    if-ltz v0, :cond_1

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v14, v0

    goto :goto_1

    .line 742
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, -0x1

    move v14, v0

    .line 746
    .end local p7    # "priority":I
    .local v14, "priority":I
    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_2

    const v0, 0x9b0a0

    if-le v1, v0, :cond_3

    .line 747
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Validity Period "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, -0x1

    move v1, v0

    .line 751
    .end local p9    # "validityPeriod":I
    .local v1, "validityPeriod":I
    :cond_3
    move v11, v14

    .line 752
    .local v11, "finalPriority":I
    move v13, v1

    .line 763
    .local v13, "finalValidity":I
    if-eqz p6, :cond_4

    .line 764
    new-instance v0, Landroid/telephony/SmsManager$2;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Landroid/telephony/SmsManager$2;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    move-object/from16 v3, p0

    invoke-direct {v3, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object/from16 v4, p4

    goto :goto_2

    .line 790
    :cond_4
    move-object/from16 v3, p0

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 791
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_5

    .line 792
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, v11

    move/from16 v26, p8

    move/from16 v27, v13

    invoke-interface/range {v15 .. v27}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_5
    move-object/from16 v4, p4

    goto :goto_2

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageInternal(no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 800
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 799
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/16 v2, 0x1f

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 804
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 738
    .end local v1    # "validityPeriod":I
    .end local v11    # "finalPriority":I
    .end local v13    # "finalValidity":I
    .end local v14    # "priority":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_6
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message body"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_7
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "messageId"    # J

    .line 630
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_5

    .line 632
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 639
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 653
    new-instance v0, Landroid/telephony/SmsManager$1;

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p9

    invoke-direct/range {v2 .. v13}, Landroid/telephony/SmsManager$1;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    move-object v14, p0

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object/from16 v3, p4

    goto :goto_2

    .line 676
    :cond_4
    move-object v14, p0

    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 678
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    move-object v2, v1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p9

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    move-object/from16 v3, p4

    goto :goto_2

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessageInternal (no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 683
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    const-string v3, "SmsManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/16 v2, 0x1f

    move-object/from16 v3, p4

    invoke-static {v3, v2}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_2
    return-void

    .line 631
    :cond_5
    move-object v14, p0

    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist checkSmsShortCodeDestination(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .line 3165
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3166
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 3167
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3172
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 3170
    :catch_0
    move-exception v0

    .line 3171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "checkSmsShortCodeDestination() RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist copyMessageToIcc([B[BI)Z
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .line 1770
    const/4 v0, 0x0

    .line 1772
    .local v0, "success":Z
    if-eqz p2, :cond_1

    .line 1776
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1777
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1778
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    move-object v2, v1

    move v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1784
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 1782
    :catch_0
    move-exception v1

    .line 1786
    :goto_0
    return v0

    .line 1773
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pdu is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist createAppSpecificSmsToken(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 2955
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2956
    .local v1, "iccSms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2959
    .end local v1    # "iccSms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 2960
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2961
    return-object v0
.end method

.method public whitelist createAppSpecificSmsTokenWithPackageInfo(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 3
    .param p1, "prefixes"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 3075
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3076
    .local v1, "iccSms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3079
    .end local v1    # "iccSms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 3080
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3081
    return-object v0
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 1
    .param p1, "subId"    # I

    .line 1565
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public greylist deleteMessageFromIcc(I)Z
    .locals 8
    .param p1, "messageIndex"    # I

    .line 1813
    const/4 v0, 0x0

    .line 1816
    .local v0, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1817
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1818
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1824
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 1822
    :catch_0
    move-exception v1

    .line 1826
    :goto_0
    return v0
.end method

.method public whitelist disableCellBroadcastRange(III)Z
    .locals 7
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2020
    const-string v0, "disableCellBroadcastRange: "

    const-string v1, "SmsManager"

    const/4 v2, 0x0

    .line 2022
    .local v2, "success":Z
    if-lt p2, p1, :cond_2

    .line 2026
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2027
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_1

    .line 2030
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2031
    .local v4, "subId":I
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    move v2, v5

    .line 2033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_0

    const-string/jumbo v6, "succeeded"

    goto :goto_0

    :cond_0
    const-string v6, "failed"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at calling disableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "subId":I
    :cond_1
    goto :goto_1

    .line 2036
    :catch_0
    move-exception v3

    .line 2037
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 2023
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMessageId < startMessageId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 868
    if-eqz p1, :cond_0

    .line 872
    invoke-static {p1, p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Landroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .line 2769
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2771
    return-void
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 2816
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2819
    if-eqz p3, :cond_1

    .line 2822
    const-string/jumbo v0, "mms"

    move-object v10, p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MmsManager;

    .line 2823
    .local v0, "m":Landroid/telephony/MmsManager;
    if-eqz v0, :cond_0

    .line 2824
    new-instance v11, Landroid/telephony/SmsManager$8;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SmsManager$8;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    move-object v1, p0

    invoke-direct {p0, v11}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_0

    .line 2823
    :cond_0
    move-object v1, p0

    .line 2837
    :goto_0
    return-void

    .line 2820
    .end local v0    # "m":Landroid/telephony/MmsManager;
    :cond_1
    move-object v1, p0

    move-object v10, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2817
    :cond_2
    move-object v1, p0

    move-object v10, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty MMS location URL"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableCellBroadcastRange(III)Z
    .locals 7
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1960
    const-string v0, "enableCellBroadcastRange: "

    const-string v1, "SmsManager"

    const/4 v2, 0x0

    .line 1961
    .local v2, "success":Z
    if-lt p2, p1, :cond_2

    .line 1965
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1966
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_1

    .line 1969
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 1970
    .local v4, "subId":I
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    move v2, v5

    .line 1972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_0

    const-string/jumbo v6, "succeeded"

    goto :goto_0

    :cond_0
    const-string v6, "failed"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at calling enableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "subId":I
    :cond_1
    goto :goto_1

    .line 1975
    :catch_0
    move-exception v3

    .line 1976
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 1962
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMessageId < startMessageId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 1906
    const/4 v0, 0x0

    .line 1909
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1910
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1911
    nop

    .line 1912
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    .line 1911
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1917
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 1915
    :catch_0
    move-exception v1

    .line 1919
    :goto_0
    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAllMessagesFromIccSimType(I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "iccType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 3411
    move/from16 v0, p1

    const/4 v1, 0x0

    .line 3412
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v2, "3gpp"

    .line 3413
    .local v2, "format":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getCurrentFormat()Ljava/lang/String;

    move-result-object v3

    .line 3414
    .local v3, "getFormat":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 3415
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 3418
    .local v5, "phoneId":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    goto :goto_1

    .line 3419
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v0

    move v7, v0

    .line 3422
    .end local p1    # "iccType":I
    .local v7, "iccType":I
    :goto_1
    const-string v8, "SmsManager"

    if-nez v7, :cond_2

    .line 3423
    const-string v0, "IccType is Unknown"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3427
    :cond_2
    const/16 v9, 0xa

    const/4 v10, 0x4

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3428
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_9

    .line 3429
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v12, "gsm.operator.isroaming"

    const-string v13, "false"

    invoke-static {v5, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 3430
    .local v12, "isroaming":Z
    const-string v13, "CHN"

    const-string v14, "HKG"

    const-string v15, "TPE"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v13

    .line 3431
    .local v13, "isCHN":Z
    if-nez v5, :cond_3

    const-string/jumbo v14, "voicecall_type"

    goto :goto_2

    :cond_3
    const-string/jumbo v14, "voicecall_type2"

    .line 3432
    .local v14, "voiceTypeKey":Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 3433
    .local v15, "context":Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v14, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v11, 0x1

    if-nez v6, :cond_4

    move v6, v11

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 3434
    .local v6, "isCtcVolteOn":Z
    :goto_3
    if-ne v7, v9, :cond_5

    if-nez v12, :cond_5

    if-eqz v6, :cond_7

    :cond_5
    if-ne v7, v10, :cond_8

    if-nez v12, :cond_6

    if-eqz v6, :cond_8

    :cond_6
    if-eqz v13, :cond_8

    .line 3436
    :cond_7
    sput-boolean v11, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 3438
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v11

    const/4 v9, 0x0

    invoke-interface {v0, v11, v9}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v9

    .line 3443
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v6    # "isCtcVolteOn":Z
    .end local v12    # "isroaming":Z
    .end local v13    # "isCHN":Z
    .end local v14    # "voiceTypeKey":Ljava/lang/String;
    .end local v15    # "context":Landroid/content/Context;
    :cond_9
    const/4 v6, 0x0

    :goto_4
    sput-boolean v6, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 3444
    goto :goto_5

    .line 3443
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 3440
    :catch_0
    move-exception v0

    .line 3441
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllMessagesFromIccSimType - exception - iccType:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3443
    const/4 v6, 0x0

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_4

    .line 3446
    :goto_5
    if-ne v7, v10, :cond_a

    .line 3447
    move-object v2, v3

    goto :goto_6

    .line 3448
    :cond_a
    const/16 v6, 0xa

    if-ne v7, v6, :cond_b

    .line 3449
    const-string v0, "3gpp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3450
    const-string v2, "3gpp2"

    goto :goto_6

    .line 3452
    :cond_b
    const/4 v0, 0x3

    if-ne v7, v0, :cond_c

    .line 3453
    const-string v2, "3gpp2"

    .line 3455
    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllMessagesFromIccSimType, subId = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " format = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " iccType = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3443
    :goto_7
    const/4 v6, 0x0

    sput-boolean v6, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 3444
    throw v0
.end method

.method public whitelist getCarrierConfigValues()Landroid/os/Bundle;
    .locals 2

    .line 2919
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2920
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2921
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2925
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 2923
    :catch_0
    move-exception v0

    .line 2926
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public blacklist getCurrentFormat()Ljava/lang/String;
    .locals 5

    .line 4204
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v0

    .line 4205
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 4206
    .local v1, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gsm.current.phone-type"

    invoke-static {v1, v3, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4207
    .local v2, "mode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentFormat, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsManager"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "3gpp"

    packed-switch v3, :pswitch_data_0

    .line 4215
    return-object v4

    .line 4211
    :pswitch_0
    const-string v3, "3gpp2"

    return-object v3

    .line 4213
    :pswitch_1
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o getImsSmsFormat()Ljava/lang/String;
    .locals 3

    .line 2134
    const-string/jumbo v0, "unknown"

    .line 2136
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2137
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2138
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2142
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 2140
    :catch_0
    move-exception v1

    .line 2143
    :goto_0
    return-object v0
.end method

.method public blacklist getMessagesFromIcc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 1893
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMnoName()Ljava/lang/String;
    .locals 3

    .line 4262
    const-string v0, "default"

    .line 4265
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 4266
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 4267
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getMnoNameForSubscriber(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 4271
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 4269
    :catch_0
    move-exception v1

    .line 4273
    :goto_0
    return-object v0
.end method

.method public whitelist getPremiumSmsConsent(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3294
    const/4 v0, 0x0

    .line 3296
    .local v0, "permission":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3297
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3298
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 3302
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 3300
    :catch_0
    move-exception v1

    .line 3301
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string/jumbo v3, "getPremiumSmsPermission() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3303
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getSmsCapacityOnIcc()I
    .locals 4

    .line 2210
    const/4 v0, 0x0

    .line 2212
    .local v0, "ret":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2213
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2214
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2218
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 2216
    :catch_0
    move-exception v1

    .line 2217
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string/jumbo v3, "getSmsCapacityOnIcc() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getSmsMessagesForFinancialApp(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/SmsManager$FinancialSmsCallback;

    .line 3001
    return-void
.end method

.method public blacklist getSmsSetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;

    .line 4284
    const/4 v0, 0x0

    .line 4287
    .local v0, "value":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 4288
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 4289
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ISms;->getSmsSettingForSubscriber(ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 4293
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 4291
    :catch_0
    move-exception v1

    .line 4295
    :goto_0
    return v0
.end method

.method public whitelist getSmscAddress()Ljava/lang/String;
    .locals 4

    .line 3198
    const/4 v0, 0x0

    .line 3201
    .local v0, "smsc":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3202
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3203
    nop

    .line 3204
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    .line 3203
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 3208
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    nop

    .line 3209
    return-object v0

    .line 3206
    :catch_0
    move-exception v1

    .line 3207
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getSubscriptionId()I
    .locals 2

    .line 1592
    :try_start_0
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1593
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    nop

    .line 1592
    :goto_0
    return v0

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .line 838
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 845
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 846
    nop

    .line 847
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 846
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_2
    goto :goto_2

    .line 849
    :catch_0
    move-exception v0

    .line 851
    .local v0, "ex":Landroid/os/RemoteException;
    if-eqz p3, :cond_3

    .line 852
    const/16 v1, 0x1f

    :try_start_1
    invoke-virtual {p3, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 854
    :catch_1
    move-exception v1

    goto :goto_2

    .line 856
    :cond_3
    :goto_1
    nop

    .line 858
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public greylist-max-o isImsSmsSupported()Z
    .locals 3

    .line 2100
    const/4 v0, 0x0

    .line 2102
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2103
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2104
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2108
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 2106
    :catch_0
    move-exception v1

    .line 2109
    :goto_0
    return v0
.end method

.method public greylist isSMSPromptEnabled()Z
    .locals 3

    .line 2176
    const/4 v0, 0x0

    .line 2178
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    move-object v0, v2

    .line 2179
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2182
    :catch_0
    move-exception v2

    .line 2183
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 2180
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2181
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist resetAllCellBroadcastRanges()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3344
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3345
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 3348
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->resetAllCellBroadcastRanges(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3352
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 3350
    :catch_0
    move-exception v0

    .line 3351
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3353
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist semDisableCellBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .line 4246
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public whitelist semDivideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3900
    if-eqz p1, :cond_0

    .line 3903
    invoke-static {p1, p2, p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ILandroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3901
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semEnableCellBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .line 4231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public whitelist semGetCbSettings()Lcom/samsung/android/telephony/gsm/SemCbConfig;
    .locals 9

    .line 3496
    const-string v0, "SmsManager"

    const-string v1, "[CB] In getCbConfig"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    const/4 v1, 0x0

    .line 3500
    .local v1, "out":[B
    new-instance v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-direct {v2}, Lcom/samsung/android/telephony/gsm/SemCbConfig;-><init>()V

    .line 3502
    .local v2, "cbConfig":Lcom/samsung/android/telephony/gsm/SemCbConfig;
    const-string/jumbo v3, "ro.boot.hardware"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qcom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_0

    .line 3504
    iput v4, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    .line 3505
    return-object v2

    .line 3509
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v5

    .line 3511
    .local v5, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v5, :cond_2

    .line 3512
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    .line 3513
    .local v6, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCbSettings subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    if-ltz v6, :cond_1

    .line 3515
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/ISms;->getCbSettingsForSubscriber(I)[B

    move-result-object v7

    move-object v1, v7

    .line 3520
    .end local v6    # "subId":I
    nop

    .line 3532
    .end local v5    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    goto :goto_1

    .line 3517
    .restart local v5    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v6    # "subId":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCbSettings invalid subID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3518
    return-object v3

    .line 3521
    .end local v6    # "subId":I
    :cond_2
    return-object v3

    .line 3530
    .end local v5    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 3526
    :catch_1
    move-exception v5

    .line 3528
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3529
    const-string v6, "[CB] IllegalArgumentException Exception In getCbConfig of SmsManager"

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 3523
    :catch_2
    move-exception v5

    .line 3525
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v6, "[CB] Exception In getCbConfig of SmsManager"

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3534
    :goto_1
    if-nez v1, :cond_3

    .line 3535
    return-object v3

    .line 3538
    :cond_3
    const/4 v5, 0x0

    aget-byte v6, v1, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 3539
    iput-boolean v7, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    goto :goto_2

    .line 3541
    :cond_4
    iput-boolean v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    .line 3544
    :goto_2
    aget-byte v5, v1, v7

    iput v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    .line 3545
    iput v4, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    .line 3546
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    iput v4, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    .line 3548
    iget v4, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    new-array v4, v4, [I

    .line 3551
    .local v4, "msgIds":[I
    const/4 v5, 0x4

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    :try_start_1
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 3552
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput v7, v4, v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3551
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3557
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_5
    nop

    .line 3559
    iput-object v4, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    .line 3561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SmsManger- CB] bCBEnabled = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " selectedId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " msgIdMaxCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " msgIdCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v5, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 3567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CB] msgIDs =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3570
    .end local v3    # "i":I
    :cond_6
    return-object v2

    .line 3554
    :catch_3
    move-exception v5

    .line 3555
    .local v5, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "[CB ] ArrayIndexOutOfBoundsException In getCbConfig of SmsManager.java"

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    return-object v3
.end method

.method public whitelist semGetSMSPAvailable()Z
    .locals 4

    .line 3866
    const-string v0, "SmsManager"

    const-string/jumbo v1, "getSMSPAvailable in SmsManager"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    const/4 v1, 0x0

    .line 3870
    .local v1, "ret":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 3872
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 3873
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 3874
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->getSMSPAvailableForSubscriber(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 3879
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 3876
    :catch_0
    move-exception v2

    .line 3878
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Exception In getSMSPAvailable() of SmsManager.java"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist semSendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3779
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const-string v0, "SmsManager"

    const-string/jumbo v1, "semSendMultipartTextMessage with priority"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_9

    .line 3783
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3784
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 3785
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3788
    :cond_1
    :goto_0
    if-eqz v11, :cond_8

    .line 3792
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 3793
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3794
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3797
    :cond_3
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 3799
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3800
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_4

    .line 3801
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3804
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 3806
    :cond_4
    :goto_2
    goto :goto_3

    .line 3808
    :cond_5
    const/4 v0, 0x0

    .line 3809
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 3810
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v12, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 3811
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 3813
    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 3814
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    .line 3816
    :cond_7
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 3819
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_3
    return-void

    .line 3789
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3782
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semSendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .line 3682
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    const-string v0, "SmsManager"

    const-string/jumbo v1, "semSendMultipartTextMessage with encodiing type"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_8

    .line 3686
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3687
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 3688
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3691
    :cond_1
    :goto_0
    const-string v0, "Invalid message body"

    if-eqz v13, :cond_7

    .line 3695
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 3696
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 3697
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3700
    :cond_3
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 3702
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3703
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2

    .line 3707
    :catch_0
    move-exception v0

    .line 3709
    :goto_2
    goto :goto_3

    .line 3711
    :cond_4
    const/4 v0, 0x0

    .line 3712
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 3713
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v14, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 3714
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 3716
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 3717
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    .line 3719
    :cond_6
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v7, v0

    move-object v8, v1

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    .line 3723
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_3
    return-void

    .line 3692
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3685
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semSendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 27
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .param p10, "confirmId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;ZIIII)V"
        }
    .end annotation

    .line 3961
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    const-string v0, "SmsManager"

    const-string/jumbo v1, "semSendMultipartTextMessage with confirmId"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_8

    .line 3965
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3966
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 3967
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3970
    :cond_1
    :goto_0
    const-string v0, "Invalid message body"

    if-eqz v13, :cond_7

    .line 3974
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 3975
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 3976
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3979
    :cond_3
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 3981
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3982
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2

    .line 3986
    :catch_0
    move-exception v0

    .line 3988
    :goto_2
    goto :goto_3

    .line 3990
    :cond_4
    const/4 v0, 0x0

    .line 3991
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 3992
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v14, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 3993
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 3995
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 3996
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    .line 3998
    :cond_6
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move/from16 v25, p9

    move/from16 v26, p10

    invoke-virtual/range {v16 .. v26}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    .line 4003
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_3
    return-void

    .line 3971
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3964
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originationPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 3607
    move-object/from16 v11, p5

    const-string v0, "SmsManager"

    const-string/jumbo v1, "sendDataMessage"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_3

    .line 3610
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3611
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 3612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3615
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    array-length v0, v11

    if-eqz v0, :cond_2

    .line 3620
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3621
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    const v0, 0xffff

    and-int v6, p3, v0

    and-int v7, p4, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDatawithOrigPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3626
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_1

    .line 3624
    :catch_0
    move-exception v0

    .line 3627
    :goto_1
    return-void

    .line 3616
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3609
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 1435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_3

    .line 1438
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 1440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    array-length v0, p4

    if-eqz v0, :cond_2

    .line 1448
    new-instance v0, Landroid/telephony/SmsManager$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/telephony/SmsManager$5;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 1465
    return-void

    .line 1445
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .line 2668
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2670
    return-void
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 2713
    if-eqz p2, :cond_1

    .line 2716
    const-string/jumbo v0, "mms"

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/MmsManager;

    .line 2717
    .local v10, "m":Landroid/telephony/MmsManager;
    if-eqz v10, :cond_0

    .line 2718
    new-instance v11, Landroid/telephony/SmsManager$7;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SmsManager$7;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    move-object v0, p0

    invoke-direct {p0, v11}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_0

    .line 2717
    :cond_0
    move-object v0, p0

    .line 2731
    :goto_0
    return-void

    .line 2714
    .end local v10    # "m":Landroid/telephony/MmsManager;
    :cond_1
    move-object v0, p0

    move-object v9, p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 979
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    nop

    .line 980
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 981
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 979
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 982
    return-void
.end method

.method public greylist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .line 1259
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    .line 1262
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;J)V"
        }
    .end annotation

    .line 997
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    nop

    .line 998
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 999
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 997
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1000
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1024
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1027
    return-void
.end method

.method public whitelist sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 1131
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    nop

    .line 1132
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1133
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1131
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1134
    return-void
.end method

.method public blacklist sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .line 4073
    const-string v0, "SmsManager"

    const-string/jumbo v1, "sendOTADomestic"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_3

    .line 4077
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4078
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 4079
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4082
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4087
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 4088
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->sendOTADomesticForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4092
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_1

    .line 4090
    :catch_0
    move-exception v0

    .line 4093
    :goto_1
    return-void

    .line 4083
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4076
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 490
    nop

    .line 491
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 490
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 493
    return-void
.end method

.method public greylist-max-r sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I

    .line 623
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 625
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 510
    nop

    .line 511
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 510
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 513
    return-void
.end method

.method public blacklist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .line 4044
    const-string v0, "SmsManager"

    const-string/jumbo v1, "sendTextMessage with callbacknmber and priority"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_3

    .line 4047
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4048
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 4049
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4053
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 4054
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 4055
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4060
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    goto :goto_1

    .line 4058
    :catch_0
    move-exception v0

    .line 4061
    :goto_1
    return-void

    .line 4046
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I

    .line 4014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessage with encoding Type: mno - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_4

    .line 4017
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4018
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 4019
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4022
    :cond_1
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4023
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4024
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4028
    :cond_3
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 4029
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/telephony/ISms;->sendTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4034
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2

    .line 4032
    :catch_0
    move-exception v0

    .line 4035
    :goto_2
    return-void

    .line 4016
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 15
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .param p10, "confirmId"    # I

    .line 4107
    const-string v0, "SmsManager"

    const-string/jumbo v1, "sendTextMessage with confirmId"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_4

    .line 4111
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4112
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 4113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4116
    :cond_1
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4117
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4118
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4122
    :cond_3
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 4123
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/telephony/ISms;->sendTextwithOptionsReadconfirmForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4128
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2

    .line 4126
    :catch_0
    move-exception v0

    .line 4129
    :goto_2
    return-void

    .line 4110
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendTextMessageAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 4171
    const-string v0, "SmsManager"

    const-string/jumbo v1, "sendTextMessageAutoLogin"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid destinationAddress"

    if-nez v0, :cond_4

    .line 4174
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOCOMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 4176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4179
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4180
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4181
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4185
    :cond_3
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 4186
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/ISms;->sendTextAutoLoginForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4192
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2

    .line 4190
    :catch_0
    move-exception v0

    .line 4194
    :goto_2
    return-void

    .line 4173
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendTextMessageNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .locals 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "from"    # Ljava/lang/String;
    .param p7, "msgCount"    # I
    .param p8, "msgTotal"    # I

    .line 4140
    const-string v0, "SmsManager"

    const-string/jumbo v1, "sendTextMessageNSRI"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sendTextMessageNSRI Addr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Smsc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v13, p2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " textLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v14, p3

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v15, p6

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, p7

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v10, p8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 4150
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 4151
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextNSRIForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4157
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 4155
    :catch_0
    move-exception v0

    .line 4158
    :goto_0
    return-void

    .line 4142
    :cond_1
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 724
    nop

    .line 725
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 726
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 724
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 727
    return-void
.end method

.method public whitelist setPremiumSmsConsent(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3320
    const-string v0, "SmsManager"

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3321
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 3323
    const-string v2, "com.isis.mclient.verizon.activity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3324
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3325
    const/4 p2, 0x3

    .line 3326
    const-string/jumbo v2, "setPremiumSmsPermission() for ISIS_PACKAGE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3333
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_1
    goto :goto_0

    .line 3331
    :catch_0
    move-exception v1

    .line 3332
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setPremiumSmsPermission() RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setSmscAddress(Ljava/lang/String;)Z
    .locals 9
    .param p1, "smsc"    # Ljava/lang/String;

    .line 3236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3237
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    .line 3238
    .local v2, "isNumeric":Z
    if-nez p1, :cond_0

    .line 3239
    const/4 v3, 0x0

    .local v3, "encodedSmscAddress":[B
    goto :goto_1

    .line 3241
    .end local v3    # "encodedSmscAddress":[B
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3242
    .local v3, "numberLenReal":I
    move v4, v3

    .line 3243
    .local v4, "numberLenEffective":I
    const/16 v5, 0x2b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v0

    .line 3244
    .local v5, "hasPlus":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 3245
    add-int/lit8 v4, v4, -0x1

    .line 3247
    :cond_2
    const/16 v6, 0x14

    if-le v4, v6, :cond_3

    .line 3248
    return v0

    .line 3250
    :cond_3
    const-string v6, "SmsManager"

    if-eqz v2, :cond_4

    .line 3251
    const-string v7, "Smsc is Numeric."

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v6

    move-object v3, v6

    .local v6, "encodedSmscAddress":[B
    goto :goto_1

    .line 3254
    .end local v6    # "encodedSmscAddress":[B
    :cond_4
    const-string v7, "Smsc is Alphabetic."

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3262
    .restart local v6    # "encodedSmscAddress":[B
    move-object v3, v6

    .line 3267
    .end local v4    # "numberLenEffective":I
    .end local v5    # "hasPlus":Z
    .end local v6    # "encodedSmscAddress":[B
    .local v3, "encodedSmscAddress":[B
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 3268
    .local v4, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_5

    .line 3270
    nop

    .line 3271
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    const/4 v6, 0x0

    .line 3270
    invoke-interface {v4, v0, v5, v6}, Lcom/android/internal/telephony/ISms;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 3276
    .end local v4    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_5
    nop

    .line 3277
    return v0

    .line 3274
    :catch_0
    move-exception v0

    .line 3275
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3258
    .end local v0    # "ex":Landroid/os/RemoteException;
    .local v3, "numberLenReal":I
    .local v4, "numberLenEffective":I
    .restart local v5    # "hasPlus":Z
    :catch_1
    move-exception v7

    .line 3259
    .local v7, "ex":Lcom/android/internal/telephony/EncodeException;
    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3261
    return v0
.end method

.method public greylist updateMessageOnIcc(II[B)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .line 1856
    const/4 v0, 0x0

    .line 1859
    .local v0, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1860
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1861
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    move-object v2, v1

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1867
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 1865
    :catch_0
    move-exception v1

    .line 1869
    :goto_0
    return v0
.end method
