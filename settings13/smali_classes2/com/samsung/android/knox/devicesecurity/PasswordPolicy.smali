.class public Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = "PasswordPolicy"

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 66

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

    const-string v42, "com.osp.app.signin.AccountView"

    const-string v43, "com.osp.app.signin.ui.AccountHelpPreference"

    const-string v44, "com.osp.app.signin.ui.WebContentView"

    const-string v45, "com.osp.app.signin.ui.AccountSetupCompleteView"

    const-string v46, "com.osp.app.signin.ui.UserValidateCheck"

    const-string v47, "com.samsung.android.biometrics.service.enroll.IntelligentScanEnrollActivity"

    const-string v48, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    const-string v49, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    const-string v50, "com.samsung.android.settings.biometrics.UseBiometricsLockSettingsGeneric"

    const-string v51, "com.samsung.android.settings.face.FaceFasterRecognition"

    const-string v52, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    const-string v53, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    const-string v54, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    const-string v55, "com.samsung.android.settings.smartscan.SmartScanIntroduce"

    const-string v56, "com.android.settings.enterprise.ActionDisabledByAdminDialog"

    const-string v57, "com.samsung.android.knox.containercore.knoxkeyguard.LockdownActivity"

    const-string v58, "com.android.settings.password.SetNewPasswordActivity"

    const-string v59, "com.android.systemui.keyguard.KioskWorkLockActivity"

    const-string v60, "com.android.settings.password.ConfirmDeviceCredentialActivity$InternalActivity"

    const-string v61, "com.android.settings.password.ConfirmLockPattern"

    const-string v62, "com.android.settings.password.ConfirmLockPassword"

    const-string v63, "com.android.settings.Settings$RegisterIrisSettingsActivity"

    const-string v64, "com.samsung.android.settings.biometrics.iris.IrisLockSettings"

    const-string v65, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity"

    .line 159
    filled-new-array/range {v0 .. v65}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 234
    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "password_policy"

    .line 240
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object p0
.end method


# virtual methods
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

    .line 1183
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1185
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

    .line 1187
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed getDataForbidden!!!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaximumCharacterOccurences()I
    .locals 2

    .line 1264
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
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

    .line 1268
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMaxRepeatedCharacters!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumCharacterSequenceLength()I
    .locals 2

    .line 1015
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
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

    .line 1019
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMaximumCharacterSequenceLength!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumFailedPasswordsForDeviceDisable()I
    .locals 2

    .line 851
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 853
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

    .line 855
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMaximumFailedPasswordsForDeviceDisable!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 2

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 935
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

    .line 937
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getNumericSequencesForbidden!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumCharacterChangeLength()I
    .locals 2

    .line 1100
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1102
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

    .line 1104
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getMinCharacterChangeLength!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPasswordChangeTimeout()I
    .locals 2

    .line 663
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
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

    .line 667
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .locals 1

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
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

    .line 516
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasForbiddenCharacterSequence(Ljava/lang/String;)Z
    .locals 1

    .line 546
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
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

    .line 550
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenData(Ljava/lang/String;)Z
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
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

    .line 585
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenNumericSequence(Ljava/lang/String;)Z
    .locals 1

    .line 529
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
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

    .line 533
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
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

    .line 568
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with misc policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasMaxRepeatedCharacters(Ljava/lang/String;)Z
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
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

    .line 603
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricAuthenticationEnabled(I)Z
    .locals 1

    .line 1883
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
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

    .line 1887
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with password policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1891
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PasswordPolicy.isBiometricAuthenticationEnabled : getService() == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isChangeRequested()I
    .locals 2

    .line 678
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
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

    .line 682
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChangeRequestedForInner()I
    .locals 2

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedForInner()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 697
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClearLockAllowed()Z
    .locals 2

    .line 2261
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2263
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isClearLockAllowed()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2265
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMultifactorAuthenticationEnabled()Z
    .locals 2

    .line 1681
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1683
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

    .line 1685
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .locals 1

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
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

    .line 621
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 2

    .line 1403
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1405
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

    .line 1407
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with password policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setPwdChangeRequested(I)Z
    .locals 1

    .line 735
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
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

    .line 739
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPwdChangeRequestedForInner(I)Z
    .locals 1

    .line 755
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 757
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequestedForInner(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 759
    sget-object p1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
