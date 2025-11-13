.class public interface abstract Lcom/samsung/android/lock/LsConstants;
.super Ljava/lang/Object;
.source "LsConstants.java"


# static fields
.field public static final blacklist ATTEMPTS_BEFORE_AUTO_WIPE:I = 0x14

.field public static final blacklist BACKUP_LSKF_BASED_PROTECTOR_ID_KEY:Ljava/lang/String; = "backup-protector-id"

.field public static final blacklist BACKUP_LSKF_EXPIRATION_TIME_KEY:Ljava/lang/String; = "backup-expiration-ts"

.field public static final blacklist BACKUP_LSKF_LAST_CHANGED_TIME_KEY:Ljava/lang/String; = "backup-protector-ts"

.field public static final blacklist BIOMETRIC_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_deadline"

.field public static final blacklist BIOMETRIC_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_timeoutms"

.field public static final blacklist BIOMETRIC_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.samsung_biometric"

.field public static final blacklist BIOMETRIC_STATE_OFF:I = 0x0

.field public static final blacklist BIOMETRIC_STATE_ON:I = 0x1

.field public static final blacklist BIOMETRIC_TYPE_ALL:I = 0x101

.field public static final blacklist BIOMETRIC_TYPE_FACE:I = 0x100

.field public static final blacklist BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final blacklist BIOMETRIC_TYPE_NONE:I = 0x0

.field public static final blacklist DEBUG:Z

.field public static final blacklist FMM_FAIELD_ATTEMPT_KEY:Ljava/lang/String; = "lockscreen.failed_fmm_attempts"

.field public static final blacklist FMM_LOCK:I = 0x0

.field public static final blacklist KNOX_GUARD:I = 0x3

.field public static final blacklist LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final blacklist LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final blacklist LOCKSCREEN_FOLDER_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.folder_instantly_locks"

.field public static final blacklist LOCKSETTINGS_DB_BACKUP:Ljava/lang/String; = "locksettings_db_backup"

.field public static final blacklist LOCKSETTINGS_DB_RESTORE:Ljava/lang/String; = "locksettings_db_restore"

.field public static final blacklist LOCKSETTINGS_SPBLOB_BACKUP:Ljava/lang/String; = "locksettings_spblob_backup"

.field public static final blacklist LOCKSETTINGS_SPBLOB_RESTORE:Ljava/lang/String; = "locksettings_spblob_restore"

.field public static final blacklist LOCK_SETTINGS_LOG_VER:Ljava/lang/String; = "locksettings.log.ver"

.field public static final blacklist LOCK_SETTINGS_LOG_VERSION_LATEST:B = 0x1t

.field public static final blacklist LOCK_SETTINGS_LOG_VERSION_V1:B = 0x1t

.field public static final blacklist MAX_PREV_CREDENTIAL_ATTEMPTS:I = 0x3

.field public static final blacklist NON_STRONG_BIO_IDLE_TIMEOUT:Ljava/lang/String; = "lockscreen.non_strong_bio_idle_timeout"

.field public static final blacklist NON_STRONG_BIO_TIMEOUT:Ljava/lang/String; = "lockscreen.non_strong_bio_timeout"

.field public static final blacklist PASSWORD_HINT_KEY:Ljava/lang/String; = "lockscreen.password_hint"

.field public static final blacklist PREV_ATTEMPTS_COUNT:Ljava/lang/String; = "prev.attempts.count"

.field public static final blacklist PREV_CREDENTIAL_TIMEOUT_MS:J = 0xf731400L

.field public static final blacklist PROPERTY_ALL:I = 0x3

.field public static final blacklist PROPERTY_DUMP:I = 0x1

.field public static final blacklist PROPERTY_F_ACCUMULATE:I = 0x100

.field public static final blacklist PROPERTY_F_BYTE:I = 0x200

.field public static final blacklist PROPERTY_F_REFRESH:I = 0x200

.field public static final blacklist PROPERTY_F_STRING:I = 0x100

.field public static final blacklist PROPERTY_NONE:I = 0x0

.field public static final blacklist PROPERTY_UPLOAD:I = 0x2

.field public static final blacklist REMOTELOCK_SIZE:I = 0x4

.field public static final blacklist REMOTELOCK_SYSTEMUI:I = 0x4

.field public static final blacklist REMOTELOCK_SYSTEMUI_DESKTOP:I = 0x5

.field public static final blacklist RESPONSE_FAILED:I = 0x1

.field public static final blacklist RESPONSE_INCORRECT_KEY:I = 0x2

.field public static final blacklist RESPONSE_OK:I = 0x0

.field public static final blacklist RESPONSE_THROTTLE:I = 0x3

.field public static final blacklist RMM_LOCK:I = 0x2

.field public static final blacklist SECURE_STATE_BIO:I = 0x10

.field public static final blacklist SECURE_STATE_BIO_LOCKOUT:I = 0x40

.field public static final blacklist SECURE_STATE_CARRIER:I = 0x8

.field public static final blacklist SECURE_STATE_CLEAR_LOCK:I = 0x1

.field public static final blacklist SECURE_STATE_CREDENTIAL_TYPE:I = 0x2

.field public static final blacklist SECURE_STATE_DEVICE_OWNERINFO:I = 0x100

.field public static final blacklist SECURE_STATE_FMM:I = 0x4

.field public static final blacklist SECURE_STATE_LOCKOUT:I = 0x20

.field public static final blacklist SECURE_STATE_LOCK_DISABLED:I = 0x200

.field public static final blacklist SECURE_STATE_OWNERINFO:I = 0x80

.field public static final blacklist SECURE_STATE_UPDATE_ALL:I = 0xffe

.field public static final blacklist SECURITY_DEBUG_DEV:I = 0x1

.field public static final blacklist SECURITY_DEBUG_LOW:I = 0x0

.field public static final blacklist SECURITY_DEBUG_MID:I = 0x1

.field public static final blacklist SECURITY_DEBUG_ON_COUNT:I

.field public static final blacklist SECURITY_LOG_PWDAT_VER:Ljava/lang/String; = "lockscreen.pwdata.ver"

.field public static final blacklist SECURITY_LOG_VERSION:Ljava/lang/String;

.field public static final blacklist SKT_CARRIER_LOCK:I = 0x1

.field public static final blacklist SKT_CARRIER_LOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field public static final blacklist SKT_LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field public static final blacklist SKT_LOCKOUT_ATTEMPT_DEFAULT_TIMEOUT:J = 0x927c0L

.field public static final blacklist STRONG_BIO_TIMEOUT:Ljava/lang/String; = "lockscreen.strong_bio_timeout"

.field public static final blacklist USER_PREV:I = -0x26ab


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/lock/LsUtil;->isDevBuild()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/lock/LsConstants;->SECURITY_LOG_VERSION:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    sput v0, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    return-void
.end method
