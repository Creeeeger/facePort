.class public Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_PASSWORD_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PASSWORD_CHANGED_INTERNAL"

.field public static final ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

.field public static final ACTION_PWD_CHANGE_TIMEOUT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

.field public static final BIOMETRIC_AUTHENTICATION_FACE:I = 0x4

.field public static final BIOMETRIC_AUTHENTICATION_FINGERPRINT:I = 0x1

.field public static final BIOMETRIC_AUTHENTICATION_IRIS:I = 0x2

.field public static final PWD_CHANGE_ENFORCED:I = 0x1

.field public static final PWD_CHANGE_ENFORCED_CANCELLED:I = 0x2

.field public static final PWD_CHANGE_ENFORCED_INCALL:I = -0x2

.field public static final PWD_CHANGE_ENFORCED_INCALL_CANCELLED:I = -0x3

.field public static final PWD_CHANGE_ENFORCED_INCALL_NEW_PASSWORD:I = -0x4

.field public static final PWD_CHANGE_ENFORCED_NEW_PASSWORD:I = 0x3

.field public static final PWD_CHANGE_ENFORCE_CANCELLING:I = -0x1

.field public static final PWD_CHANGE_NOT_ENFORCED:I = 0x0

.field public static TAG:Ljava/lang/String; = "PasswordPolicy"

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# instance fields
.field public mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 73

    const-string v71, "com.samsung.android.fmm.application.UserpppDialog"

    const-string v72, "com.samsung.android.settings.theftprotection.ProtectionPromptActivity"

    const-string v0, "com.android.settings.SubSettings"

    const-string v1, "com.android.settings.password.ChooseLockPassword"

    const-string v2, "com.android.settings.password.ChooseLockPattern"

    const-string v3, "com.samsung.android.settings.ChooseLockEnterpriseIdentity"

    const-string v4, "com.sec.android.service.singlesignon.activity.KerberosLoginActivity"

    const-string v5, "com.sec.android.service.singlesignon.activity.ChangePasswordActivity"

    const-string v6, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v7, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v8, "com.android.phone.EmergencyDialer"

    const-string v9, "com.android.phone.OutgoingCallBroadcaster"

    const-string v10, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v11, "com.android.phone.InCallScreen"

    const-string v12, "com.android.internal.policy.impl.LockScreen"

    const-string v13, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v14, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v15, "com.android.incallui.InCallActivity"

    const-string v16, "com.android.server.telecom.EmergencyCallActivity"

    const-string v17, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v18, "com.android.incallui.SecInCallActivity"

    const-string v19, "com.android.incallui.call.InCallActivity"

    const-string v20, "com.samsung.phone.EmergencyDialer"

    const-string v21, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    const-string v22, "com.skt.prod.phone.activities.phone.TPhoneActivity"

    const-string v23, "com.sec.android.inputmethod.implement.setting.OnBoardingSettingsActivity"

    const-string v24, "com.android.settings.password.ChooseLockGeneric"

    const-string v25, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    const-string v26, "com.samsung.android.settings.knox.KnoxChooseLockTwoFactor"

    const-string v27, "com.android.settings.Settings$RegisterIrisSettingsActivity"

    const-string v28, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    const-string v29, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    const-string v30, "com.samsung.android.settings.iris.IrisLockSettings"

    const-string v31, "com.samsung.android.settings.iris.UseIrisLockSettings"

    const-string v32, "com.samsung.android.settings.biometrics.fingerprint.FingerprintLockSettings"

    const-string v33, "com.samsung.android.settings.biometrics.fingerprint.RegisterFingerprint"

    const-string v34, "com.samsung.android.biometrics.app.setting.fingerprint.enroll.FingerprintEnrollActivity"

    const-string v35, "com.samsung.android.settings.biometrics.fingerprint.UseFingerprintLockSettings"

    const-string v36, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    const-string v37, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    const-string v38, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    const-string v39, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    const-string v40, "com.samsung.android.settings.biometrics.BiometricsSelectBackupPassword"

    const-string v41, "com.samsung.android.settings.biometrics.BiometricsBackupPassword"

    const-string v42, "com.samsung.android.settings.biometrics.BiometricsSetScreenLockActivity"

    const-string v43, "com.osp.app.signin.AccountView"

    const-string v44, "com.osp.app.signin.ui.AccountHelpPreference"

    const-string v45, "com.osp.app.signin.ui.WebContentView"

    const-string v46, "com.osp.app.signin.ui.AccountSetupCompleteView"

    const-string v47, "com.osp.app.signin.ui.UserValidateCheck"

    const-string v48, "com.samsung.android.biometrics.service.enroll.IntelligentScanEnrollActivity"

    const-string v49, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    const-string v50, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    const-string v51, "com.samsung.android.settings.biometrics.BiometricsRotationGuide"

    const-string v52, "com.samsung.android.settings.biometrics.UseBiometricsLockSettingsGeneric"

    const-string v53, "com.samsung.android.settings.face.FaceFasterRecognition"

    const-string v54, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    const-string v55, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    const-string v56, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    const-string v57, "com.samsung.android.settings.smartscan.SmartScanIntroduce"

    const-string v58, "com.android.settings.enterprise.ActionDisabledByAdminDialog"

    const-string v59, "com.samsung.android.knox.containercore.knoxkeyguard.LockdownActivity"

    const-string v60, "com.android.settings.password.SetNewPasswordActivity"

    const-string v61, "com.android.systemui.keyguard.KioskWorkLockActivity"

    const-string v62, "com.android.settings.password.ConfirmDeviceCredentialActivity$InternalActivity"

    const-string v63, "com.android.settings.password.ConfirmLockPattern"

    const-string v64, "com.android.settings.password.ConfirmLockPassword"

    const-string v65, "com.android.settings.Settings$RegisterIrisSettingsActivity"

    const-string v66, "com.samsung.android.settings.biometrics.iris.IrisLockSettings"

    const-string v67, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity"

    const-string v68, "com.android.settings.password.BiometricsChooseLockGeneric"

    const-string v69, "com.samsung.android.settings.biometrics.BiometricsCommonSecurityNoticeActivity"

    const-string v70, "com.android.settings.Settings$LockscreenNotificationActivity"

    filled-new-array/range {v0 .. v72}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public deleteAllRestrictions()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.deleteAllRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->deleteAllRestrictions(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enforcePwdChange()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.enforcePwdChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.excludeExternalStorageForFailedPasswordsWipe"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->excludeExternalStorageForFailedPasswordsWipe(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getBasePasswordPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/container/BasePasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForbiddenStrings(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed getDataForbidden!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumCharacterOccurences()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMaxRepeatedCharacters!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumCharacterSequenceLength()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMaximumCharacterSequenceLength!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumFailedPasswordsForDeviceDisable()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMaximumFailedPasswordsForDeviceDisable!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getNumericSequencesForbidden!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getMinPasswordComplexChars"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public getMinimumCharacterChangeLength()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMinCharacterChangeLength!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPasswordChangeTimeout()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPasswordExpires"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x5265c00

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPasswordHistory"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public getPasswordLockDelay()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getPasswordLockDelay!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_0

    const-string v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object p0
.end method

.method public getSupportedBiometricAuthentications()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getSupportedBiometricAuthentications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasForbiddenCharacterSequence(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenData(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenNumericSequence(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with misc policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasMaxRepeatedCharacters(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricAuthenticationEnabled(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PasswordPolicy.isBiometricAuthenticationEnabled : getService() == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricAuthenticationEnabledAsUser(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PasswordPolicy.isBiometricAuthenticationEnabled : getService() == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isChangeRequested()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChangeRequestedForInner()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedForInner()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClearLockAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isClearLockAllowed()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMDMDisabledFP(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMDMDisabledFP(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMultifactorAuthenticationEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPasswordTableExist()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordTableExist(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isServiceRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "isServiceRunning()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lock()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.lock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->lock(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "reboot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.reboot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "password policy : reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "password policy : reboot getService()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->reboot(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setBiometricAuthenticationEnabled(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setBiometricAuthenticationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEnterpriseIdentityAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "PasswordPolicy.setEnterpriseIdentityAuthentication"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public setForbiddenStrings(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setForbiddenStrings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setDataForbidden!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMaximumCharacterOccurrences(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumCharacterOccurrences"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterOccurrences(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setMaxRepeatedCharacters!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMaximumCharacterSequenceLength(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumCharacterSequenceLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setMaximumCharacterSequenceLength!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumFailedPasswordsForWipe"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMaximumNumericSequenceLength(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMaximumNumericSequenceLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setNumericSequencesForbidden!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setMinPasswordComplexChars"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMinPasswordComplexChars"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    sget-object p2, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "length is bigger than 4! set Upper & lower case"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    :goto_0
    return-void
.end method

.method public setMinimumCharacterChangeLength(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMinimumCharacterChangeLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setMinCharacterChangeLength!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMultifactorAuthenticationEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setMultifactorAuthenticationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordChangeTimeout(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordChangeTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setPasswordExpires"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordExpires"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    int-to-long v0, p2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setPasswordHistory"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordHistory"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-gez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordLockDelay(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordLockDelay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setPasswordLockDelay"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordMinimumLetters"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordMinimumNonLetter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordQuality"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with password policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setPasswordVisibilityEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPwdChangeRequested(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPwdChangeRequestedForInner(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequestedForInner(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setRequiredPasswordPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setScreenLockPatternVisibilityEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.setScreenLockPatternVisibilityEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unlock()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PasswordPolicy.unlock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->unlock(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
