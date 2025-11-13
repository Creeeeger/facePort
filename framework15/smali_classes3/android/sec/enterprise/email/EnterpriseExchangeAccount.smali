.class public Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
.super Ljava/lang/Object;
.source "EnterpriseExchangeAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ACTION_CBA_INSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

.field public static final whitelist ACTION_CBA_INSTALL_STATUS_OLD:Ljava/lang/String; = "android.intent.action.sec.CBA_INSTALL_STATUS"

.field public static final whitelist ACTION_CBA_INSTALL_STATUS_SEC_EDM:Ljava/lang/String; = "com.samsung.edm.intent.action.EXCHANGE_CBA_INSTALL_STATUS"

.field public static final whitelist ACTION_CREATE_EMAIL_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

.field public static final whitelist ACTION_DELETE_EMAIL_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

.field public static final whitelist ACTION_DELETE_NOT_VALIDATED_EMAIL_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

.field public static final whitelist ACTION_EAS_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

.field public static final whitelist ACTION_EMAIL_ENABLE_MESSSAGE_COMPOSE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ENABLE_MSG_COMPOSE_INTERNAL"

.field public static final whitelist ACTION_EMAIL_INSTALL_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

.field public static final whitelist ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_RENAME_CERTIFICATE_INTERNAL"

.field public static final whitelist ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

.field public static final whitelist ACTION_ENFORCE_SMIME_ALIAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

.field public static final whitelist ACTION_FORCE_SMIME_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

.field public static final whitelist ACTION_FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

.field public static final whitelist ACTION_FORCE_SMIME_CERTIFICATE_FOR_SIGNING:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

.field public static final whitelist ACTION_GET_EMAIL_DEVICE_ID_REQUEST:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

.field public static final whitelist ACTION_GET_EMAIL_DEVICE_ID_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

.field public static final whitelist ACTION_RELEASE_SMIME_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

.field public static final whitelist ACTION_RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

.field public static final whitelist ACTION_RELEASE_SMIME_CERTIFICATE_FOR_SIGNING:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

.field public static final whitelist ACTION_REQUEST_EMAIL_ACCOUNT_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final whitelist ACTION_RESULT_EMAIL_ACCOUNT_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final whitelist ACTION_SET_EMAIL_ACCOUNT_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final whitelist ACTION_SMIME_INSTALL_STATUS:Ljava/lang/String; = "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/sec/enterprise/email/EnterpriseExchangeAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ENFORCE_SMIME_ALIAS_TYPE_ENCRYPT:I = 0x0

.field public static final whitelist ENFORCE_SMIME_ALIAS_TYPE_SIGN:I = 0x1

.field public static final whitelist EXTRA_ACCOUNT_EAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_EAS_INTERNAL"

.field public static final whitelist EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

.field public static final whitelist EXTRA_ACCOUNT_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

.field public static final whitelist EXTRA_ACCOUNT_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

.field public static final whitelist EXTRA_ACCOUNT_SETUP_RESULT_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_ALIAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_DATA_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_PASSWORD_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_PATH:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_RESULT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

.field public static final whitelist EXTRA_CERTIFICATE_RESULT_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_RESULT_ID_INTERNAL"

.field public static final whitelist EXTRA_DEVICE_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DEVICE_ID_INTERNAL"

.field public static final whitelist EXTRA_DOMAIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

.field public static final whitelist EXTRA_ENFORCE_SMIME_ALIAS_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

.field public static final whitelist EXTRA_ENFORCE_SMIME_ALIAS_STORAGE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

.field public static final whitelist EXTRA_ENFORCE_SMIME_ALIAS_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

.field public static final whitelist EXTRA_IS_DEFAULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

.field public static final whitelist EXTRA_NOTIFY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

.field public static final whitelist EXTRA_OUTGOING_USER_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

.field public static final whitelist EXTRA_OUTGOING_USER_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_INTERNAL"

.field public static final whitelist EXTRA_PEAK_DAYS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

.field public static final whitelist EXTRA_PEAK_END_TIME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

.field public static final whitelist EXTRA_PEAK_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

.field public static final whitelist EXTRA_PEAK_OFF_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

.field public static final whitelist EXTRA_PEAK_START_TIME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

.field public static final whitelist EXTRA_PERIOD_CALENDAR_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

.field public static final whitelist EXTRA_PERIOD_EMAIL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

.field public static final whitelist EXTRA_RECEIVE_HOST_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

.field public static final blacklist EXTRA_RETRIVAL_SIZE2_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RETRIVAL_SIZE_INTERNAL"

.field public static final whitelist EXTRA_RETRIVAL_SIZE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra."

.field public static final whitelist EXTRA_ROAMING_SCHEDULE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

.field public static final whitelist EXTRA_SERVER_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

.field public static final whitelist EXTRA_SERVER_PATH_PREFIX_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"

.field public static final whitelist EXTRA_SERVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

.field public static final whitelist EXTRA_SIGNATURE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

.field public static final whitelist EXTRA_SMIME_INSTALL_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

.field public static final whitelist EXTRA_SMIME_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SMIME_RESULT"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final whitelist EXTRA_SYNC_CALENDAR_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

.field public static final whitelist EXTRA_SYNC_CONTACTS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

.field public static final whitelist EXTRA_TRUST_ALL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

.field public static final whitelist EXTRA_USER_HANDLE_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

.field public static final whitelist EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field public static final whitelist EXTRA_USER_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

.field public static final whitelist EXTRA_USER_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

.field public static final whitelist EXTRA_USER_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_PASSWD_INTERNAL"

.field public static final whitelist EXTRA_USE_SSL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

.field public static final whitelist EXTRA_USE_TLS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

.field public static final whitelist EXTRA_VIBRATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

.field public static final whitelist EXTRA_VIBRATE_WHEN_SILENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

.field public static final whitelist SET_SMIME_CERTIFICATE_ALL:I = 0x1

.field public static final whitelist SET_SMIME_CERTIFICATE_BY_ENCRYPTION:I = 0x2

.field public static final whitelist SET_SMIME_CERTIFICATE_BY_SIGNING:I = 0x3

.field public static final whitelist SET_SMIME_CERTIFICATE_INVALID_ACCOUNT_ID:I = 0x3

.field public static final whitelist SET_SMIME_CERTIFICATE_INVALID_PASSWORD:I = 0x2

.field public static final whitelist SET_SMIME_CERTIFICATE_NOT_FOUND:I = 0x1

.field public static final whitelist SET_SMIME_CERTIFICATE_OK:I = -0x1

.field public static final whitelist SET_SMIME_CERTIFICATE_UNKNOWN_ERROR:I = 0x0

.field public static final whitelist SET_SMIME_CERTIFICATE_USER_CANCELED:I = 0x4


# instance fields
.field public whitelist mAcceptAllCertificates:Z

.field public whitelist mAllowHTMLEmail:Z

.field public whitelist mDisplayName:Ljava/lang/String;

.field public whitelist mEasUser:Ljava/lang/String;

.field public whitelist mEmailAddress:Ljava/lang/String;

.field public whitelist mEmailBodyTruncationSize:I

.field public whitelist mEmailNotificationVibrateAlways:Z

.field public whitelist mEmailNotificationVibrateWhenSilent:Z

.field public whitelist mEmailRoamingBodyTruncationSize:I

.field public whitelist mId:J

.field public whitelist mIsDefault:Z

.field public whitelist mMaxCalendarAgeFilter:I

.field public whitelist mMaxDevicePasswordFailedAttempts:I

.field public whitelist mMaxEmailAgeFilter:I

.field public whitelist mMaxEmailBodyTruncationSize:I

.field public whitelist mMaxEmailHtmlBodyTruncationSize:I

.field public whitelist mMinDevicePasswordLength:I

.field public whitelist mMinPasswordComplexCharacters:I

.field public whitelist mOffPeakSyncSchedule:I

.field public whitelist mPassword:Ljava/lang/String;

.field public whitelist mPeakDays:I

.field public whitelist mPeakEndMinute:I

.field public whitelist mPeakStartMinute:I

.field public whitelist mPeakSyncSchedule:I

.field public whitelist mProtocol:Ljava/lang/String;

.field public whitelist mProtocolVersion:Ljava/lang/String;

.field public whitelist mRoamingSyncSchedule:I

.field public whitelist mSenderName:Ljava/lang/String;

.field public whitelist mServerAddress:Ljava/lang/String;

.field public whitelist mServerPort:I

.field public whitelist mSignature:Ljava/lang/String;

.field public whitelist mSyncCalendar:Z

.field public whitelist mSyncCalendarAge:I

.field public whitelist mSyncContacts:Z

.field public whitelist mSyncInterval:I

.field public whitelist mSyncLookback:I

.field public whitelist mSyncNotes:Z

.field public whitelist mSyncTasks:Z

.field public whitelist mUseSSL:Z

.field public whitelist mUseTLS:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;

    invoke-direct {v0}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/sec/enterprise/email/EnterpriseExchangeAccount-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    iput-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinDevicePasswordLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinPasswordComplexCharacters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxDevicePasswordFailedAttempts:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEmailAddress ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSenderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProtocolVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUseSSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUseTLS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAcceptAllCertificates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncLookback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmailNotificationVibrateAlways="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDefault ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakDays ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakStartMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakEndMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakSyncSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOffPeakSyncSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingSyncSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncCalendarAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmailBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmailRoamingBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncCalendar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowHTMLEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinDevicePasswordLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMinPasswordComplexCharacters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxDevicePasswordFailedAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
