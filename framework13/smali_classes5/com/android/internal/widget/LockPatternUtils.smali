.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;,
        Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;,
        Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;,
        Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$VerifyFlag;,
        Lcom/android/internal/widget/LockPatternUtils$CredentialType;
    }
.end annotation


# static fields
.field private static final blacklist APP_LOCK_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.applock_fingerprint"

.field public static final blacklist ATTEMPTS_BEFORE_AUTO_WIPE:I = 0x14

.field public static final blacklist BIOMETRIC_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_deadline"

.field public static final blacklist BIOMETRIC_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_timeoutms"

.field public static final blacklist BIOMETRIC_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.samsung_biometric"

.field public static final blacklist BIOMETRIC_STATE_OFF:I = 0x0

.field public static final blacklist BIOMETRIC_STATE_ON:I = 0x1

.field public static final blacklist BIOMETRIC_TYPE_ALL:I = 0x101

.field public static final blacklist BIOMETRIC_TYPE_FACE:I = 0x100

.field public static final blacklist BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final blacklist BIOMETRIC_TYPE_NONE:I = 0x0

.field public static final blacklist BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist CREDENTIAL_TYPE_API:Ljava/lang/String; = "getCredentialType"

.field public static final blacklist CREDENTIAL_TYPE_NONE:I = -0x1

.field public static final blacklist CREDENTIAL_TYPE_PASSWORD:I = 0x4

.field public static final blacklist CREDENTIAL_TYPE_PASSWORD_OR_PIN:I = 0x2

.field public static final blacklist CREDENTIAL_TYPE_PATTERN:I = 0x1

.field public static final blacklist CREDENTIAL_TYPE_PIN:I = 0x3

.field public static final blacklist CREDENTIAL_TYPE_SMARTCARDNUMERIC:I = 0x6

.field public static final blacklist DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final blacklist DUAL_DAR_DO_OPT_PENDING_UNLOCK:I = 0x1

.field private static final blacklist ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final blacklist FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final blacklist FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field private static final blacklist FMM_FAIELD_ATTEMPT_KEY:Ljava/lang/String; = "lockscreen.failed_fmm_attempts"

.field public static final blacklist FMM_LOCK:I = 0x0

.field private static final blacklist FRP_CREDENTIAL_ENABLED:Z = true

.field private static final blacklist IS_TRUST_USUALLY_MANAGED:Ljava/lang/String; = "lockscreen.istrustusuallymanaged"

.field public static final blacklist KNOX_DEVICE_OWNER_KEY:Ljava/lang/String; = "knox.device_owner"

.field public static final blacklist KNOX_GUARD:I = 0x3

.field public static final blacklist LEGACY_LOCK_PATTERN_ENABLED:Ljava/lang/String; = "legacy_lock_pattern_enabled"

.field public static final blacklist LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final blacklist LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final blacklist LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCKSCREEN_FOLDER_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.folder_instantly_locks"

.field public static final blacklist LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final blacklist LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final blacklist LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final blacklist LOCK_SCREEN_DEVICE_OWNER_INFO:Ljava/lang/String; = "lockscreen.device_owner_info"

.field public static final blacklist LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final blacklist LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final blacklist MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final blacklist MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final blacklist MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final blacklist NON_STRONG_BIO_IDLE_TIMEOUT:Ljava/lang/String; = "lockscreen.non_strong_bio_idle_timeout"

.field public static final blacklist NON_STRONG_BIO_TIMEOUT:Ljava/lang/String; = "lockscreen.non_strong_bio_timeout"

.field private static final blacklist PASSWORD_HINT_KEY:Ljava/lang/String; = "lockscreen.password_hint"

.field public static final blacklist PASSWORD_HISTORY_DELIMITER:Ljava/lang/String; = ","

.field public static final blacklist PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final blacklist PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final blacklist PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final blacklist PROFILE_KEY_NAME_DECRYPT:Ljava/lang/String; = "profile_key_name_decrypt_"

.field public static final blacklist PROFILE_KEY_NAME_ENCRYPT:Ljava/lang/String; = "profile_key_name_encrypt_"

.field public static final blacklist REMOTELOCK_SIZE:I = 0x4

.field public static final blacklist REMOTELOCK_SYSTEMUI:I = 0x4

.field public static final blacklist REMOTELOCK_SYSTEMUI_DESKTOP:I = 0x5

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

.field public static final blacklist SECURITY_ADDITIONAL_LOG:Z = true

.field public static final blacklist SECURITY_AOSP_BUG_FIX:Z = true

.field public static final blacklist SECURITY_BIOMETRICS:Z = true

.field public static final blacklist SECURITY_CACHED_LOCK_STATE:Z = true

.field public static final blacklist SECURITY_DEBUG_DEV:I = 0x2

.field public static final blacklist SECURITY_DEBUG_LOW:I = 0x0

.field public static final blacklist SECURITY_DEBUG_MID:I = 0x1

.field public static final blacklist SECURITY_PASSWORD_HINT:Z = true

.field public static final blacklist SECURITY_POLICY:Z = true

.field public static final blacklist SECURITY_REMOTE_LOCKSCREEN:Z = true

.field public static final blacklist SECURITY_SIMPLE_PIN:Z = true

.field public static final blacklist SKT_CARRIER_LOCK:I = 0x1

.field private static final blacklist SKT_CARRIER_LOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field private static final blacklist SKT_LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final blacklist SKT_LOCKOUT_ATTEMPT_DEFAULT_TIMEOUT:J = 0x927c0L

.field public static final blacklist STRONG_BIO_TIMEOUT:Ljava/lang/String; = "lockscreen.strong_bio_timeout"

.field public static final blacklist SYNTHETIC_PASSWORD_ENABLED_BY_DEFAULT:I = 0x1

.field public static final blacklist SYNTHETIC_PASSWORD_ENABLED_FOR_SYSTEM_KEY:Ljava/lang/String; = "enable-sp-for-system"

.field public static final blacklist SYNTHETIC_PASSWORD_ENABLED_KEY:Ljava/lang/String; = "enable-sp"

.field public static final blacklist SYNTHETIC_PASSWORD_HANDLE_KEY:Ljava/lang/String; = "sp-handle"

.field public static final blacklist SYNTHETIC_PASSWORD_KEY_PREFIX:Ljava/lang/String; = "synthetic_password_"

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final blacklist TEXT_SEPERATOR:C = ':'

.field public static final blacklist USER_FRP:I = -0x270f

.field public static final blacklist VERIFY_FLAG_REQUEST_GK_PW_HANDLE:I = 0x1


# instance fields
.field private final greylist mContentResolver:Landroid/content/ContentResolver;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

.field private blacklist mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasSecureLockScreen:Ljava/lang/Boolean;

.field private blacklist mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

.field private blacklist mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final blacklist mLockoutDeadlines:Landroid/util/SparseLongArray;

.field private blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mUserManagerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcheckCredentialForDualDarDo(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z

    move-result p0

    return p0
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    .line 1235
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1260
    new-instance v0, Landroid/app/PropertyInvalidatedCache;

    const/4 v2, 0x4

    const-string/jumbo v3, "system_server"

    const-string v4, "getCredentialType"

    const-string v5, "getCredentialType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    .line 352
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 355
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 356
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method public static blacklist byteArrayToPattern([B)Ljava/util/List;
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 1185
    if-nez p0, :cond_0

    .line 1186
    const/4 v0, 0x0

    return-object v0

    .line 1189
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1191
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1192
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, -0x31

    int-to-byte v2, v2

    .line 1193
    .local v2, "b":B
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v4, v2, 0x3

    invoke-static {v3, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1195
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z
    .locals 4
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "option"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 3044
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 3046
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 3047
    invoke-direct {p0, p4}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallbackForDualDar(Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object v2

    .line 3046
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 3049
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3050
    return v3

    .line 3051
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 3053
    nop

    .line 3054
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    if-lez v2, :cond_1

    .line 3055
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordThrottleAuditLog(I)V

    .line 3057
    :cond_1
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "option":I
    .end local p4    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "option":I
    .restart local p4    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    :cond_2
    return v0

    .line 3061
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v1

    .line 3062
    .local v1, "re":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    const-string v3, "failed to check dualdar do credential"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3063
    return v0
.end method

.method private blacklist checkCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .locals 5
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object v0, v2

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    .line 630
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v3

    .line 629
    invoke-interface {v2, v0, p2, v3}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v2, :cond_1

    .line 632
    nop

    .line 654
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 632
    :cond_0
    return v1

    .line 633
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 634
    nop

    .line 654
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 634
    :cond_2
    return v4

    .line 635
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 637
    nop

    .line 638
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_4

    .line 639
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordThrottleAuditLog(I)V

    .line 641
    :cond_4
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    throw v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    .restart local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :cond_5
    nop

    .line 654
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 643
    :cond_6
    return v1

    .line 654
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v2

    .line 647
    .local v2, "re":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 648
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    nop

    .line 654
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 649
    :cond_7
    return v1

    .line 652
    :cond_8
    nop

    .end local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 654
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :goto_0
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 655
    :cond_9
    throw v1
.end method

.method private blacklist clearBiometricAndLockState(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .line 2808
    const-string v0, "LockPatternUtils"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v3, "LockSettingsWrite"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2812
    nop

    .line 2813
    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 2814
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 2817
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 2821
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordHint(Ljava/lang/String;I)V

    .line 2825
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedFMMUnlockAttempt(I)V

    .line 2828
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword([BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2831
    goto :goto_0

    .line 2829
    :catch_0
    move-exception v1

    .line 2830
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setLockFMMPassword error = "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2833
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2809
    :catch_1
    move-exception v1

    .line 2810
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Failed to clearBiometricAndLockState ="

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2811
    return-void
.end method

.method public static blacklist credentialTypeToPasswordQuality(I)I
    .locals 3
    .param p0, "credentialType"    # I

    .line 852
    packed-switch p0, :pswitch_data_0

    .line 866
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :pswitch_1
    const/high16 v0, 0x70000

    return v0

    .line 860
    :pswitch_2
    const/high16 v0, 0x40000

    return v0

    .line 858
    :pswitch_3
    const/high16 v0, 0x20000

    return v0

    .line 856
    :pswitch_4
    const/high16 v0, 0x10000

    return v0

    .line 854
    :pswitch_5
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist frpCredentialEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private blacklist getBoolean(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1425
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private blacklist getDarManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/dar/IDarManagerService;",
            ">;"
        }
    .end annotation

    .line 2870
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_0

    .line 2871
    nop

    .line 2872
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    .line 2873
    .local v0, "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2875
    .end local v0    # "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;
    .locals 3

    .line 1736
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 1737
    .local v0, "service":Lcom/android/internal/widget/LockSettingsInternal;
    if-eqz v0, :cond_0

    .line 1740
    return-object v0

    .line 1738
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to system server itself"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .line 1442
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method private blacklist getPasswordHistoryHashFactorForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 2
    .param p1, "currentPassword"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    move-object v0, v1

    .line 724
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 724
    :cond_0
    return-object v1

    .line 726
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 727
    :cond_1
    throw v1
.end method

.method private blacklist getRequestedPasswordHistoryLength(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 406
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private blacklist getSalt(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    .line 1218
    const-string v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1219
    .local v3, "salt":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 1221
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    move-wide v3, v1

    .line 1222
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1223
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    goto :goto_0

    .line 1224
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1229
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1461
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1462
    :catch_0
    move-exception v1

    .line 1463
    .local v1, "re":Landroid/os/RemoteException;
    return-object v0
.end method

.method private blacklist getTrustManager()Landroid/app/trust/TrustManager;
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 343
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    .line 344
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stack trace:"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "LockPatternUtils"

    const-string v3, "Can\'t get TrustManagerService: is it running?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :cond_0
    return-object v0
.end method

.method private blacklist getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist getUserManager(I)Landroid/os/UserManager;
    .locals 5
    .param p1, "userId"    # I

    .line 326
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 327
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    return-object v1

    .line 332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 333
    .local v1, "userContext":Landroid/content/Context;
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 334
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    return-object v2

    .line 336
    .end local v1    # "userContext":Landroid/content/Context;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist hasSeparateChallenge(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .line 1162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t get separate profile challenge enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist havePasswordNoMDMCache(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 1030
    nop

    .line 1031
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 1032
    .local v0, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    const/4 v1, -0x1

    .line 1033
    .local v1, "ret":I
    const-string v2, "LockPatternUtils"

    if-eqz v0, :cond_0

    .line 1035
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getCredentialType(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1039
    goto :goto_0

    .line 1036
    :catch_0
    move-exception v3

    .line 1037
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Unable to reach LockSettingsService"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v1, -0x1

    .line 1041
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "havePasswordNoMDMCache() : no password in User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_1
    if-eq v1, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static final blacklist invalidateCredentialTypeCache()V
    .locals 2

    .line 1269
    const-string/jumbo v0, "system_server"

    const-string v1, "getCredentialType"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    return-void
.end method

.method private blacklist isCredentialSharableWithParent(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager(I)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    move-result v0

    return v0
.end method

.method public static greylist isDeviceEncryptionEnabled()Z
    .locals 1

    .line 1098
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method private blacklist isEnterpriseUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2880
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2881
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2882
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSdpSupportedSecureFolder(I)Z

    move-result v0

    return v0

    .line 2884
    :cond_0
    return v1

    .line 2885
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2886
    return v1

    .line 2889
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isFileEncryptionEnabled()Z
    .locals 1

    .line 1106
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    return v0
.end method

.method private blacklist isManagedProfile(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .line 1171
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1172
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isQualityAlphabeticPassword(I)Z
    .locals 1
    .param p0, "quality"    # I

    .line 842
    const/high16 v0, 0x40000

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isQualityNumericPin(I)Z
    .locals 1
    .param p0, "quality"    # I

    .line 847
    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isQualitySmartCard(I)Z
    .locals 1
    .param p0, "quality"    # I

    .line 2864
    const/high16 v0, 0x70000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isSdpSupportedSecureFolder(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2912
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 2920
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2912
    return v0
.end method

.method static synthetic blacklist lambda$isSdpSupportedSecureFolder$0(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2914
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isSdpSupportedSecureFolder(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2915
    :catch_0
    move-exception v0

    .line 2916
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to check sdp support for secure folder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2918
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private blacklist makeLpuLog(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "contents"    # Ljava/lang/String;

    .line 2611
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2612
    return-void
.end method

.method private blacklist makeLpuLog(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2620
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "lock enroll event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2621
    const-string v3, "Contents : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2622
    const-string v3, "Time : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->makeTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2623
    const-string v3, "User id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2624
    const-string v3, "UID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  PID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2625
    const-string v3, "Package : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2626
    const-string v2, "Callers : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->makeTime()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    if-eqz p3, :cond_0

    .line 2629
    const-string v1, "\nException : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    :cond_0
    const/4 v1, 0x0

    .line 2635
    .local v1, "TYPE_ENROLL":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/widget/ILockSettings;->addLog(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    goto :goto_0

    .line 2636
    :catch_0
    move-exception v2

    .line 2637
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Lss log is written failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist makeTime()Ljava/lang/String;
    .locals 7

    .line 2642
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2643
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2644
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 2645
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    .line 2646
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2647
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2648
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 2649
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 2650
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2644
    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d "

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist patternToByteArray(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .line 1204
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1205
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 1207
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1209
    .local v0, "patternSize":I
    new-array v1, v0, [B

    .line 1210
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1211
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1212
    .local v3, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1210
    .end local v3    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1214
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private blacklist reportAuditLog(IZI)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 2722
    const-string v0, "biometric authentication"

    .line 2723
    .local v0, "logMessage":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2726
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2728
    :goto_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2736
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "face"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2737
    goto :goto_1

    .line 2733
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2734
    goto :goto_1

    .line 2730
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2731
    nop

    .line 2742
    :goto_1
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2743
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 2742
    move-object v6, v0

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2744
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist reportEnabledTrustAgentsChanged(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 1564
    nop

    .line 1565
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    return-void

    .line 1569
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1570
    return-void
.end method

.method private blacklist reportPasswordThrottleAuditLog(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 1547
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 1549
    .local v0, "failedAttempts":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1552
    .local v1, "token":J
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1553
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect authentication attempts ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") limit reached"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1552
    move v9, p1

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    nop

    .line 1559
    return-void

    .line 1557
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    throw v3
.end method

.method private blacklist setBoolean(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    goto :goto_0

    .line 1434
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write boolean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist setLockCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 3
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I
    .param p4, "ignoreNotifyPasswordChanged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "streamNewCredential":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v1, 0x0

    .line 964
    .local v1, "streamSavedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object v0, v2

    .line 965
    invoke-static {p2}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object v1, v2

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v0, v1, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 968
    const/4 v2, 0x0

    .line 971
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 972
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 968
    :cond_1
    return v2

    .line 971
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 972
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 974
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 971
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 972
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 973
    :cond_6
    throw v2
.end method

.method private greylist setLong(Ljava/lang/String;JI)V
    .locals 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 1451
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    goto :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private greylist setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 1470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    goto :goto_0

    .line 1471
    :catch_0
    move-exception v0

    .line 1473
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist throwIfCalledOnMainThread()V
    .locals 2

    .line 1592
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    return-void

    .line 1593
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .line 2267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist verifyCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    move-object v0, v1

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 531
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 531
    :cond_0
    return-object v2

    .line 533
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 534
    :cond_1
    throw v1
.end method

.method private blacklist wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .line 1724
    if-nez p1, :cond_0

    .line 1725
    const/4 v0, 0x0

    return-object v0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1731
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;-><init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    return-object v0

    .line 1728
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist wrapCallbackForDualDar(Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    .line 2968
    if-nez p1, :cond_0

    .line 2969
    const/4 v0, 0x0

    return-object v0

    .line 2971
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2975
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;-><init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)V

    return-object v0

    .line 2972
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 2
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1756
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist addFailedFMMUnlockAttempt(I)J
    .locals 4
    .param p1, "userId"    # I

    .line 2433
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2434
    .local v0, "count":J
    const-string v2, "lockscreen.failed_fmm_attempts"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2435
    return-wide v0
.end method

.method public blacklist addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .locals 3
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    .line 1775
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not add weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .line 2169
    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_0

    .line 2170
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2171
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_1

    .line 2172
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2173
    :cond_1
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_2

    .line 2174
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p3, v1}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z

    move-result v0

    return v0

    .line 2175
    :cond_2
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_3

    .line 2176
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2177
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to Check applock password :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I[B)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I
    .param p4, "hash"    # [B

    .line 2186
    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2188
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_1

    .line 2189
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2190
    :cond_1
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_2

    .line 2191
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3, p4}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z

    move-result v0

    return v0

    .line 2192
    :cond_2
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_3

    .line 2193
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2194
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to Check applock password :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .locals 4
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 584
    nop

    .line 585
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->checkCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v0

    return v0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 590
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v2

    .line 589
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 591
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_1

    .line 592
    return v0

    .line 593
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 594
    return v3

    .line 595
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 597
    nop

    .line 598
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    if-lez v2, :cond_3

    .line 599
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordThrottleAuditLog(I)V

    .line 601
    :cond_3
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :cond_4
    return v0

    .line 605
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v1

    .line 606
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "failed to check credential"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    return v0
.end method

.method public blacklist checkPasswordHistory([B[BI)Z
    .locals 9
    .param p1, "passwordToCheck"    # [B
    .param p2, "hashFactor"    # [B
    .param p3, "userId"    # I

    .line 741
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 745
    :cond_0
    const-string v1, "lockscreen.passwordhistory"

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "passwordHistory":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    return v0

    .line 749
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v2

    .line 750
    .local v2, "passwordHistoryLength":I
    if-nez v2, :cond_2

    .line 751
    return v0

    .line 753
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 754
    .local v3, "salt":[B
    invoke-static {p1, v3}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "legacyHash":Ljava/lang/String;
    invoke-static {p1, v3, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v5

    .line 757
    .local v5, "passwordHash":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 759
    .local v6, "history":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 760
    aget-object v8, v6, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    aget-object v8, v6, v7

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 759
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 761
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 764
    .end local v7    # "i":I
    :cond_5
    return v0

    .line 742
    .end local v1    # "passwordHistory":Ljava/lang/String;
    .end local v2    # "passwordHistoryLength":I
    .end local v3    # "salt":[B
    .end local v4    # "legacyHash":Ljava/lang/String;
    .end local v5    # "passwordHash":Ljava/lang/String;
    .end local v6    # "history":[Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v1, "LockPatternUtils"

    const-string v2, "checkPasswordHistory: empty password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return v0
.end method

.method public blacklist checkRemoteLockPassword(I[BI)Z
    .locals 5
    .param p1, "remoteLockType"    # I
    .param p2, "password"    # [B
    .param p3, "userHandle"    # I

    .line 2549
    const/4 v0, 0x0

    const-string v1, "LockPatternUtils"

    if-nez p1, :cond_0

    .line 2550
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 2552
    .local v2, "sha1":[B
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword([BI)Z

    move-result v0

    return v0

    .line 2560
    .end local v2    # "sha1":[B
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2557
    :catch_1
    move-exception v2

    goto :goto_1

    .line 2553
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2554
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword([BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2561
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    const-string v3, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    return v0

    .line 2558
    .local v2, "re":Landroid/os/RemoteException;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return v0

    .line 2556
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method public blacklist clearBiometricAttemptDeadline(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2797
    const-string v0, "lockscreen.lockout_biometric_attempt_timeoutms"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2798
    const-string v0, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2799
    return-void
.end method

.method public blacklist clearFailedFMMUnlockAttempt(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2450
    const-string v0, "lockscreen.failed_fmm_attempts"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2451
    return-void
.end method

.method public blacklist clearLockoutAttemptDeadline(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2400
    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2401
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2402
    return-void
.end method

.method public blacklist disableSyntheticPassword()V
    .locals 4

    .line 2232
    const-string v0, "enable-sp"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2233
    return-void
.end method

.method public blacklist enableSyntheticPassword()V
    .locals 4

    .line 2228
    const-string v0, "enable-sp"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2229
    return-void
.end method

.method public greylist getActivePasswordQuality(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 792
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public blacklist getBiometricAttemptDeadline(I)J
    .locals 11
    .param p1, "userId"    # I

    .line 2766
    const-string v0, "lockscreen.lockout_biometric_attempt_deadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 2767
    .local v3, "deadline":J
    const-string v5, "lockscreen.lockout_biometric_attempt_timeoutms"

    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 2768
    .local v6, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2770
    .local v8, "now":J
    cmp-long v10, v3, v1

    if-eqz v10, :cond_0

    cmp-long v10, v3, v8

    if-gez v10, :cond_0

    .line 2772
    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2773
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2774
    return-wide v1

    .line 2777
    :cond_0
    cmp-long v1, v6, v1

    if-eqz v1, :cond_1

    add-long v1, v8, v6

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 2779
    add-long v3, v8, v6

    .line 2780
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2783
    :cond_1
    return-wide v3
.end method

.method public blacklist getBiometricAttemptTimeout(I)J
    .locals 3
    .param p1, "userId"    # I

    .line 2790
    const-string v0, "lockscreen.lockout_biometric_attempt_timeoutms"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getBiometricState(II)I
    .locals 1
    .param p1, "biometricType"    # I
    .param p2, "userId"    # I

    .line 2688
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 2689
    const/4 v0, 0x1

    return v0

    .line 2691
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBiometricStrongAuthTimeout(Ljava/lang/String;I)J
    .locals 2
    .param p1, "bioTimeoutKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2852
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getBiometricType(I)I
    .locals 5
    .param p1, "userId"    # I

    .line 2673
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2674
    .local v0, "isUPSM":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "emergency_mode"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2675
    .local v1, "isEMC":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 2678
    :cond_2
    const-wide/16 v2, 0x0

    const-string v4, "lockscreen.samsung_biometric"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 2676
    :cond_3
    :goto_2
    return v2
.end method

.method public blacklist getCarrierLockoutAttemptDeadline(I)J
    .locals 9
    .param p1, "userId"    # I

    .line 2494
    const-string/jumbo v0, "sktlockscreen.lockoutdeadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 2495
    .local v3, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2496
    .local v5, "now":J
    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    .line 2497
    return-wide v1

    .line 2498
    :cond_0
    sub-long v0, v3, v5

    const-wide/32 v7, 0x927c0

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarrierLockoutAttemptDeadline : Need to adjust deadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v3

    .line 2502
    :cond_1
    return-wide v3
.end method

.method public blacklist getCredentialTypeForUser(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 1279
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getCurrentFailedPasswordAttempts(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 467
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    return v0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDeviceOwnerInfo()Ljava/lang/String;
    .locals 2

    .line 1083
    const-string v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 309
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 310
    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack trace:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public blacklist getEnabledTrustAgents(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1503
    const-string v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, "serialized":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 1507
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1508
    .local v1, "split":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1509
    .local v2, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 1510
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1511
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1514
    :cond_2
    return-object v2
.end method

.method public blacklist getFailedFMMUnlockAttempt(I)J
    .locals 3
    .param p1, "userId"    # I

    .line 2443
    const-string v0, "lockscreen.failed_fmm_attempts"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFolderInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2842
    const-string v0, "lockscreen.folder_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public greylist getKeyguardStoredPasswordQuality(I)I
    .locals 1
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1119
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized blacklist getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
    .locals 3

    monitor-enter p0

    .line 2985
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    if-nez v0, :cond_0

    .line 2986
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    .line 2988
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2984
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 363
    nop

    .line 364
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 365
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 367
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .locals 11
    .param p1, "userId"    # I

    .line 1396
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1397
    .local v3, "deadline":J
    const-string v5, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 1398
    .local v6, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1399
    .local v8, "now":J
    cmp-long v10, v3, v8

    if-gez v10, :cond_0

    cmp-long v10, v3, v1

    if-eqz v10, :cond_0

    .line 1401
    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1402
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1403
    return-wide v1

    .line 1405
    :cond_0
    add-long v1, v8, v6

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 1407
    add-long v3, v8, v6

    .line 1408
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1410
    :cond_1
    return-wide v3
.end method

.method public blacklist getLockoutAttemptTimeout(I)J
    .locals 3
    .param p1, "userId"    # I

    .line 2390
    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMaximumFailedPasswordsForWipe(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 474
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x0

    return v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public blacklist getMaximumPasswordLength(I)I
    .locals 1
    .param p1, "quality"    # I

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public greylist getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 1060
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPasswordHint(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 2423
    const-string v0, "lockscreen.password_hint"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 3
    .param p1, "currentPassword"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 697
    nop

    .line 698
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactorForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v0

    return-object v0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to get hash factor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist getPowerButtonInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1483
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 371
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getPasswordMinimumLengthForInner()I

    move-result v0

    return v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public blacklist getRequestedPasswordComplexity(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist getRequestedPasswordComplexity(IZ)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 432
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 1
    .param p1, "userId"    # I

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->KNOX_SUPPORT_DAR_DUAL_DO:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 399
    .local v0, "metrics":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getPasswordMinimumLengthForInner()I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 400
    return-object v0

    .line 402
    .end local v0    # "metrics":Landroid/app/admin/PasswordMetrics;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStrongAuthForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not get StrongAuth"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1659
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public blacklist hasPendingEscrowToken(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->hasPendingEscrowToken(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2249
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasSecureLockScreen()Z
    .locals 1

    .line 2256
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2258
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->hasSecureLockScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    goto :goto_0

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isAppLockFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2222
    const-string v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isBiometricAllowedForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1682
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, -0xd

    if-nez v0, :cond_0

    .line 1683
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isUCMLockEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1682
    :goto_0
    return v0
.end method

.method public blacklist isCarrierLockEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2461
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLock(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2462
    :catch_0
    move-exception v0

    .line 2463
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isCarrierPasswordSaved(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2573
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2574
    :catch_0
    move-exception v0

    .line 2575
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isCredentialRequiredToDecrypt(Z)Z
    .locals 3
    .param p1, "defaultValue"    # Z

    .line 1573
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "require_password_to_decrypt"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1575
    .local v0, "value":I
    if-ne v0, v2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isCredentialsDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDeviceOwner(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 2902
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2903
    return v0

    .line 2905
    :cond_0
    const-string v1, "knox.device_owner"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist isDeviceOwnerInfoEnabled()Z
    .locals 1

    .line 1087
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDevicePasswordSimple(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 2306
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "is_smpw_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public blacklist isEscrowTokenActive(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1828
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist isFMMLockEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2586
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2587
    :catch_0
    move-exception v0

    .line 2588
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isLegacyLockPatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1317
    const-string v0, "legacy_lock_pattern_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isLockPasswordEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1297
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1298
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public blacklist isLockPasswordEnabledNoCache(I)Z
    .locals 21
    .param p1, "userId"    # I

    .line 1010
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    long-to-int v2, v5

    int-to-long v5, v2

    .line 1011
    .local v5, "mode":J
    const-string v2, "lockscreen.password_type_alternate"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    .line 1012
    .local v2, "backupMode":J
    const-wide/32 v7, 0x40000

    cmp-long v4, v5, v7

    const-wide/32 v9, 0x60000

    const-wide/32 v11, 0x50000

    const-wide/32 v13, 0x30000

    const-wide/32 v15, 0x20000

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eqz v4, :cond_1

    cmp-long v4, v5, v15

    if-eqz v4, :cond_1

    cmp-long v4, v5, v13

    if-eqz v4, :cond_1

    cmp-long v4, v5, v11

    if-eqz v4, :cond_1

    cmp-long v4, v5, v9

    if-eqz v4, :cond_1

    const-wide/32 v19, 0x70000

    cmp-long v4, v5, v19

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v4, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v4, v18

    .line 1019
    .local v4, "passwordEnabled":Z
    :goto_1
    cmp-long v7, v2, v7

    if-eqz v7, :cond_3

    cmp-long v7, v2, v15

    if-eqz v7, :cond_3

    cmp-long v7, v2, v13

    if-eqz v7, :cond_3

    cmp-long v7, v2, v11

    if-eqz v7, :cond_3

    cmp-long v7, v2, v9

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v7, v17

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v7, v18

    .line 1025
    .local v7, "backupEnabled":Z
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->havePasswordNoMDMCache(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v4, :cond_4

    .line 1026
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v8

    const v9, 0x8000

    if-ne v8, v9, :cond_5

    if-eqz v7, :cond_5

    :cond_4
    move/from16 v17, v18

    goto :goto_4

    :cond_5
    nop

    .line 1025
    :goto_4
    return v17
.end method

.method public greylist isLockPatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1309
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist isLockScreenDisabled(I)Z
    .locals 7
    .param p1, "userId"    # I

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 827
    return v1

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 831
    .local v0, "disabledByDefault":Z
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 832
    .local v2, "isSystemUser":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 833
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 834
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v1

    .line 835
    .local v5, "isDemoUser":Z
    :goto_1
    const-string v6, "lockscreen.disabled"

    invoke-direct {p0, v6, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1
.end method

.method public blacklist isManagedProfileWithUnifiedChallenge(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 1157
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1064
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 774
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isPowerButtonInstantlyLocksEverChosen(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1487
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isRMMLockEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 2599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 2600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "locked"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    .line 2601
    .local v1, "lockState":Z
    if-eqz v1, :cond_0

    .line 2602
    const/4 v2, 0x1

    return v2

    .line 2599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2605
    .end local v0    # "i":I
    .end local v1    # "lockState":Z
    :cond_1
    return v2
.end method

.method public greylist isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1288
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1289
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1289
    :goto_1
    return v1
.end method

.method public blacklist isSeparateProfileChallengeEnabled(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSyntheticPasswordEnabled()Z
    .locals 6

    .line 2236
    const-string v0, "enable-sp"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public blacklist isSyntheticPasswordEnabledForSystem()Z
    .locals 6

    .line 2928
    const-string v0, "enable-sp-for-system"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public blacklist isTrustAllowedForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1675
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTrustUsuallyManaged(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    instance-of v0, v0, Lcom/android/internal/widget/ILockSettings$Stub;

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.istrustusuallymanaged"

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isUCMLockEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2859
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isUserInLockdown(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1688
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVisiblePatternDisabledByMDM()Z
    .locals 2

    .line 992
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 993
    .local v0, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 996
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isVisiblePatternDisabledByMDMAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1000
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 1001
    .local v0, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 1004
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public greylist isVisiblePatternEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDMAsUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pattern visibility disabled by MDM for user : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return v1

    .line 1338
    :cond_0
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisiblePatternEverChosen(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1357
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWeakEscrowTokenActive(JI)Z
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1837
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenActive(JI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not check the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWeakEscrowTokenValid(J[BI)Z
    .locals 3
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 1847
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenValid(J[BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not validate the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 3
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 982
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    goto :goto_0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t notify password changed for enterprise user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 1599
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    nop

    .line 1603
    return-void

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1617
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeCachedUnifiedChallenge(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeCachedUnifiedChallenge(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    goto :goto_0

    .line 2299
    :catch_0
    move-exception v0

    .line 2300
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2302
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist removeEscrowToken(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1803
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist removeGatekeeperPasswordHandle(J)V
    .locals 3
    .param p1, "gatekeeperPasswordHandle"    # J

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->removeGatekeeperPasswordHandle(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to remove gatekeeper password handle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist removeWeakEscrowToken(JI)Z
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1814
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->removeWeakEscrowToken(JI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not remove the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 443
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 448
    return-void
.end method

.method public blacklist reportPasswordLockout(II)V
    .locals 1
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 460
    const/16 v0, -0x270f

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/trust/TrustManager;->reportUnlockLockout(II)V

    .line 464
    return-void
.end method

.method public blacklist reportPatternWasChosen(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 782
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 783
    return-void
.end method

.method public blacklist reportSuccessfulBiometricUnlock(ZI)V
    .locals 3
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 1637
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->reportSuccessfulBiometricUnlock(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    goto :goto_0

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not report successful biometric unlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1641
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 452
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 457
    return-void
.end method

.method public blacklist requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1525
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1526
    return-void
.end method

.method public blacklist requireStrongAuth(II)V
    .locals 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 1540
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    goto :goto_0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while requesting strong auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist resetKeyStore(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 800
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t reset keystore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .line 2153
    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_0

    .line 2154
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    goto :goto_0

    .line 2155
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_1

    .line 2156
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V

    goto :goto_0

    .line 2157
    :cond_1
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_2

    .line 2158
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2159
    :cond_2
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_3

    .line 2160
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockBackupPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    :cond_3
    :goto_0
    goto :goto_1

    .line 2162
    :catch_0
    move-exception v0

    .line 2163
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist saveRemoteLockPassword(I[BI)V
    .locals 4
    .param p1, "remoteLockType"    # I
    .param p2, "password"    # [B
    .param p3, "userId"    # I

    .line 2514
    const-string v0, "LockPatternUtils"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2527
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2531
    goto :goto_0

    .line 2528
    :catch_0
    move-exception v1

    .line 2530
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    .end local v1    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 2518
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword([BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2522
    goto :goto_0

    .line 2519
    :catch_1
    move-exception v1

    .line 2521
    .restart local v1    # "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v1    # "re":Landroid/os/RemoteException;
    nop

    .line 2537
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 2
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .line 2203
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_0

    .line 2204
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v0

    return v0

    .line 2205
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_1

    .line 2206
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v0

    return v0

    .line 2207
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_2

    .line 2208
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v0

    return v0

    .line 2209
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_3

    .line 2210
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2211
    :cond_3
    return v0

    .line 2212
    :catch_0
    move-exception v1

    .line 2213
    .local v1, "re":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1645
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->scheduleNonStrongBiometricIdleTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not schedule non-strong biometric idle timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1649
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setAppLockFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2218
    const-string v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2219
    return-void
.end method

.method public blacklist setBiometricAttemptDeadline(II)J
    .locals 5
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .line 2752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 2754
    .local v0, "deadline":J
    int-to-long v2, p2

    const-string v4, "lockscreen.lockout_biometric_attempt_timeoutms"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2755
    const-string v2, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2757
    return-wide v0
.end method

.method public blacklist setBiometricState(III)V
    .locals 6
    .param p1, "biometricType"    # I
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 2703
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    .line 2706
    .local v0, "oldValue":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2707
    or-int v2, v0, p1

    goto :goto_0

    :cond_0
    not-int v2, p1

    and-int/2addr v2, v0

    .line 2708
    .local v2, "newValue":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBiometricState ( oldValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , newValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2709
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2708
    const-string v4, "LockPatternUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    int-to-long v3, v2

    const-string v5, "lockscreen.samsung_biometric"

    invoke-direct {p0, v5, v3, v4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2711
    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->reportAuditLog(IZI)V

    .line 2712
    return-void
.end method

.method public blacklist setBiometricStrongAuthTimeout(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "bioTimeoutKey"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # J
    .param p4, "userId"    # I

    .line 2848
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2849
    return-void
.end method

.method public blacklist setCarrierLockoutAttemptDeadline(I)J
    .locals 4
    .param p1, "userId"    # I

    .line 2483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 2484
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2485
    return-wide v0
.end method

.method public blacklist setCredentialRequiredToDecrypt(Z)V
    .locals 2
    .param p1, "required"    # Z

    .line 1579
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1580
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1581
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only the system or primary user may call setCredentialRequiredForDecrypt()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1585
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1586
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1587
    nop

    .line 1586
    const-string/jumbo v1, "require_password_to_decrypt"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1589
    :cond_2
    return-void
.end method

.method public blacklist setDeviceOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2894
    if-eqz p1, :cond_0

    .line 2895
    return-void

    .line 2897
    :cond_0
    const-wide/16 v0, 0x1

    const-string v2, "knox.device_owner"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2898
    return-void
.end method

.method public blacklist setDeviceOwnerInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 1075
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const/4 p1, 0x0

    .line 1079
    :cond_0
    const/4 v0, 0x0

    const-string v1, "lockscreen.device_owner_info"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1080
    return-void
.end method

.method public blacklist setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1491
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1493
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1494
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1496
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .end local v2    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 1498
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1499
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1500
    return-void
.end method

.method public blacklist setFolderInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2838
    const-string v0, "lockscreen.folder_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2839
    return-void
.end method

.method public blacklist setLegacyLockPatternEnabled(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1322
    const-string v0, "lock_pattern_autolock"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1323
    return-void
.end method

.method public blacklist setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 1
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I

    .line 889
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 4
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I
    .param p4, "ignoreNotifyPasswordChanged"    # Z

    .line 895
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->checkLength()V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockCredential new type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V

    .line 907
    nop

    .line 908
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    const-string/jumbo v2, "setLockCredential return false!"

    if-eqz v0, :cond_2

    .line 909
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 912
    invoke-direct {p0, p3, v2}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V

    .line 914
    return v1

    .line 918
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 920
    invoke-direct {p0, p3, v2}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 922
    return v1

    .line 929
    :cond_3
    nop

    .line 932
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 933
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAndLockState(I)V

    .line 938
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 939
    move v2, v0

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 938
    :goto_1
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->sendLockTypeChangedInfo(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 942
    goto :goto_2

    .line 940
    :catch_0
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "sendLockTypeChangedInfo Failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0

    .line 924
    :catch_1
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "setLockCredential failed"

    invoke-direct {p0, p3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 928
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to save lock password"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userHandle"    # I

    .line 1867
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1868
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1872
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockCredentialWithToken credential = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V

    .line 1874
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->checkLength()V

    .line 1875
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    .line 1877
    .local v0, "localService":Lcom/android/internal/widget/LockSettingsInternal;
    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v1

    return v1
.end method

.method public blacklist setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .line 815
    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 816
    return-void
.end method

.method public greylist setLockoutAttemptDeadline(II)J
    .locals 5
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 1375
    .local v0, "deadline":J
    const/16 v2, -0x270f

    if-ne p1, v2, :cond_0

    .line 1378
    return-wide v0

    .line 1381
    :cond_0
    int-to-long v2, p2

    const-string v4, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1382
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1386
    return-wide v0
.end method

.method public greylist-max-r setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1050
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1051
    return-void
.end method

.method public greylist-max-r setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1055
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1056
    return-void
.end method

.method public blacklist setPasswordHint(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2413
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2414
    const/4 p1, 0x0

    .line 2416
    :cond_0
    const-string v0, "lockscreen.password_hint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2417
    return-void
.end method

.method public blacklist setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1478
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1479
    return-void
.end method

.method public blacklist setSecurityDebugLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .line 2659
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setSecurityDebugLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2662
    goto :goto_0

    .line 2660
    :catch_0
    move-exception v0

    .line 2661
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "!@setSecurityDebugLevel set failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "enabled"    # Z
    .param p3, "profilePassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    return-void

    .line 1138
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1140
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportEnabledTrustAgentsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t update work profile challenge enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setTrustUsuallyManaged(ZI)V
    .locals 2
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.istrustusuallymanaged"

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 277
    :goto_0
    return-void
.end method

.method public blacklist setVisiblePasswordEnabled(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1365
    return-void
.end method

.method public blacklist setVisiblePatternEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1347
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDMAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisiblePatternEnabled() : Could not enable visible pattern by MDM admin. user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void

    .line 1353
    :cond_0
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1354
    return-void
.end method

.method public blacklist tryUnlockWithCachedUnifiedChallenge(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unlockUserWithToken(J[BI)Z
    .locals 1
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 1891
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 1607
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    goto :goto_0

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateCarrierLock(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 2469
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLock(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2470
    :catch_0
    move-exception v0

    .line 2471
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable updateCarrierLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist userPresent(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 493
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 496
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 502
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_1

    .line 503
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 505
    :cond_1
    return-object v0

    .line 507
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 508
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method public blacklist verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "gatekeeperPasswordHandle"    # J
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 548
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 549
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_0

    .line 550
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 552
    :cond_0
    return-object v0

    .line 553
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify gatekeeper password"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method public blacklist verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 674
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 677
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 678
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_0

    .line 679
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 681
    :cond_0
    return-object v0

    .line 683
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 684
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify tied profile credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method
