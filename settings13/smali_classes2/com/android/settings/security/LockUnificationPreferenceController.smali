.class public Lcom/android/settings/security/LockUnificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockUnificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHost:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mProfileUserId:I

.field private mRequireNewDevicePassword:Z

.field private final mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$rlu4HqBFbB9XlJvY5BrKyCkP-xk(Lcom/android/settings/security/LockUnificationPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->lambda$startUnification$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHost(Lcom/android/settings/security/LockUnificationPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munifyLocks(Lcom/android/settings/security/LockUnificationPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    const-string/jumbo v0, "unification"

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 116
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 117
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 118
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 121
    sget v0, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-static {p2, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 122
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 123
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 124
    iput-object p3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 128
    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method private synthetic lambda$startUnification$0()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title_profile:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private promptForNewDeviceLockAndThenUnify()V
    .locals 3

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string/jumbo v2, "unification_profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v2, "unification_profile_credential"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 377
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 378
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->lock_settings_picker_title:I

    .line 379
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 380
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTransitionType(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private showRemoveBiometricsDialogIfNeeded()Z
    .locals 4

    .line 280
    iget-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mRequireNewDevicePassword:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 284
    invoke-virtual {v0, v3}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    return v1

    .line 290
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->getInstance()Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    move-result-object v0

    .line 291
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->setUserId(I)V

    .line 292
    new-instance v1, Lcom/android/settings/security/LockUnificationPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/LockUnificationPreferenceController$1;-><init>(Lcom/android/settings/security/LockUnificationPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->setDialogButtonClickListener(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;)V

    .line 306
    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "biometric_removal_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method private startUnifyLocks()V
    .locals 1

    .line 273
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->showRemoveBiometricsDialogIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    :cond_0
    return-void
.end method

.method private unifyKeepingDeviceLock()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3, p0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    return-void
.end method

.method private unifyLocks()V
    .locals 2

    .line 312
    iget-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mRequireNewDevicePassword:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->promptForNewDeviceLockAndThenUnify()V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyKeepingDeviceLock()V

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 319
    iput-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 323
    iput-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_2
    return-void
.end method

.method private ununifyLocks()V
    .locals 3

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 239
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 240
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTransitionType(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    const/4 v2, -0x1

    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    .line 219
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 220
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    return v0

    :cond_0
    const/16 v3, 0x81

    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    .line 225
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 227
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->startUnifyLocks()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 136
    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 137
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 138
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 153
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 157
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isAvailableWithMultiWindowForKnox(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 161
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 163
    invoke-virtual {p1, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 166
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    move v0, p2

    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mRequireNewDevicePassword:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->startUnification()V

    goto :goto_0

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 171
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x82

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    .line 175
    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_5

    .line 179
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    :cond_5
    :goto_0
    return p2
.end method

.method public startUnification()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/security/LockUnificationPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/security/LockUnificationPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/LockUnificationPreferenceController;)V

    const-string v2, "Settings.WORK_PROFILE_SET_UNLOCK_LAUNCH_PICKER_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 255
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x81

    .line 256
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->startUnifyLocks()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 187
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    .line 190
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_settings_profile_unification_summary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string/jumbo v4, "no_unified_password"

    .line 196
    invoke-static {v2, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 195
    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 198
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-static {p1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->shouldDisableOneLockForUser(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->knox_onelock_settings_not_allowed_twostep:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 201
    invoke-static {v2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 200
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    iget p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-static {p1}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
