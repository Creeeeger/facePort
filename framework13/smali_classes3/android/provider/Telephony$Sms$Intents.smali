.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final whitelist ACTION_DEFAULT_SMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

.field public static final whitelist ACTION_EXTERNAL_PROVIDER_CHANGE:Ljava/lang/String; = "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

.field public static final blacklist ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final blacklist ACTION_KT_TWO_PHONE_MANAGE_SMS_RECEIVED:Ljava/lang/String; = "com.kt.menu.action.TWO_CALL_REG_CHANGED"

.field public static final whitelist ACTION_SMS_EMERGENCY_CB_RECEIVED:Ljava/lang/String; = "android.provider.action.SMS_EMERGENCY_CB_RECEIVED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_SMS_MMS_DB_CREATED:Ljava/lang/String; = "android.provider.action.SMS_MMS_DB_CREATED"

.field public static final blacklist ACTION_SMS_MMS_DB_LOST:Ljava/lang/String; = "android.provider.action.SMS_MMS_DB_LOST"

.field public static final blacklist CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final whitelist DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final blacklist DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final blacklist EXTRA_IS_CORRUPTED:Ljava/lang/String; = "android.provider.extra.IS_CORRUPTED"

.field public static final whitelist EXTRA_IS_DEFAULT_SMS_APP:Ljava/lang/String; = "android.provider.extra.IS_DEFAULT_SMS_APP"

.field public static final blacklist EXTRA_IS_INITIAL_CREATE:Ljava/lang/String; = "android.provider.extra.IS_INITIAL_CREATE"

.field public static final blacklist EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final blacklist GET_SMSC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.GET_SMSC"

.field public static final blacklist IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final blacklist LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final blacklist LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.intent.action.PUSH_CONFIRM"

.field public static final blacklist LMS_FIRST_DISPLAY_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

.field public static final blacklist LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

.field public static final greylist-max-o MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final blacklist NSRISMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

.field public static final whitelist RESULT_SMS_DATABASE_ERROR:I = 0xa

.field public static final whitelist RESULT_SMS_DISPATCH_FAILURE:I = 0x6

.field public static final blacklist RESULT_SMS_DSAC_FAIL:I = 0x14

.field public static final whitelist RESULT_SMS_DUPLICATED:I = 0x5

.field public static final whitelist RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final whitelist RESULT_SMS_HANDLED:I = 0x1

.field public static final whitelist RESULT_SMS_INVALID_URI:I = 0xb

.field public static final blacklist RESULT_SMS_MDM_DISCARDED:I = 0x17

.field public static final whitelist RESULT_SMS_NULL_MESSAGE:I = 0x8

.field public static final whitelist RESULT_SMS_NULL_PDU:I = 0x7

.field public static final whitelist RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final whitelist RESULT_SMS_RECEIVED_WHILE_ENCRYPTED:I = 0x9

.field public static final blacklist RESULT_SMS_SEGMENT:I = 0x15

.field public static final whitelist RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final whitelist SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final whitelist SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final blacklist SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final whitelist SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final whitelist SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final whitelist SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final whitelist SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final whitelist SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final whitelist WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final blacklist WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final blacklist WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final whitelist WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    return-void
.end method

.method public static whitelist getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1527
    const-string v0, "Telephony"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "pdus"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    .local v2, "messages":[Ljava/lang/Object;
    nop

    .line 1533
    if-nez v2, :cond_0

    .line 1534
    const-string/jumbo v3, "pdus does not exist in the intent"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-object v1

    .line 1538
    :cond_0
    const-string v1, "format"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, "format":Ljava/lang/String;
    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1541
    .local v3, "subId":I
    const v5, 0x7fffffff

    .line 1542
    .local v5, "phoneId":I
    if-eq v3, v4, :cond_1

    .line 1543
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMessagesFromIntent with valid subId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    goto :goto_0

    .line 1546
    :cond_1
    const-string/jumbo v4, "getMessagesFromIntent"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :goto_0
    array-length v0, v2

    .line 1550
    .local v0, "pduCount":I
    new-array v4, v0, [Landroid/telephony/SmsMessage;

    .line 1552
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 1553
    aget-object v7, v2, v6

    check-cast v7, [B

    .line 1555
    .local v7, "pdu":[B
    invoke-static {v5, v7, v1}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v6

    .line 1552
    .end local v7    # "pdu":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1558
    .end local v6    # "i":I
    :cond_2
    return-object v4

    .line 1528
    .end local v0    # "pduCount":I
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "messages":[Ljava/lang/Object;
    .end local v3    # "subId":I
    .end local v4    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v5    # "phoneId":I
    :catch_0
    move-exception v2

    .line 1529
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMessagesFromIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-object v1
.end method
