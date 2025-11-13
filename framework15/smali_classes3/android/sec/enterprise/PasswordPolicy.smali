.class public Landroid/sec/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final blacklist PWD_CHANGE_NOT_ENFORCED:I

.field private static blacklist TAG:Ljava/lang/String;

.field public static final blacklist enforcePwdExceptions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    const-string v0, "PasswordPolicy"

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v13, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v14, "com.android.incallui.call.InCallActivity"

    const-string v1, "com.android.settings.SubSettings"

    const-string v2, "com.android.settings.ChooseLockPassword"

    const-string v3, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v4, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v5, "com.android.phone.EmergencyDialer"

    const-string v6, "com.android.phone.OutgoingCallBroadcaster"

    const-string v7, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v8, "com.android.phone.InCallScreen"

    const-string v9, "com.android.internal.policy.impl.LockScreen"

    const-string v10, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v11, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v12, "com.android.server.telecom.EmergencyCallActivity"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isScreenLockPatternVisibilityEnabled()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isScreenLockPatternVisibilityEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isScreenLockPatternVisibilityEnabledAsUser returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notifyPasswordPolicyOneLockChanged(ZI)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->notifyPasswordPolicyOneLockChanged(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-notifyPasswordPolicyOneLockChanged failed to be called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
