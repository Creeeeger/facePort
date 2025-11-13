.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;,
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;
    }
.end annotation


# static fields
.field static final CHOOSE_LOCK_BEFORE_BIOMETRIC_REQUEST:I = 0x67

.field static final CHOOSE_LOCK_REQUEST:I = 0x66

.field static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field static final SKIP_FINGERPRINT_REQUEST:I = 0x68


# instance fields
.field private mAppLockBackupKey:Ljava/lang/String;

.field private mCallerAppName:Ljava/lang/String;

.field private mChooseLockRequestCode:I

.field public mChoosePref:I

.field private mChoosePrefFinishCase:Z

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForAppLockBackupKey:Z

.field protected mForBiometrics:Z

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFace:Z

.field protected mForFingerprint:Z

.field private mForPrivateModeBackupKey:Z

.field private mFromBioScreenLock:Z

.field private mFromBioSettings:Z

.field private mFromChinaSUW:Z

.field private mFromPwdNotification:Z

.field private mFromSetupWizard:Z

.field private mGkPwHandle:J

.field private mIdentifyBiometrics:Z

.field private mIsCallingAppAdmin:Z

.field private mIsDualDarDoEnforcePwdChangeOngoing:Z

.field private mIsEnforcedPwdChanged:Z

.field private mIsFromDualDarDo:Z

.field private mIsFromSecureFolderReset:Z

.field private mIsManagedProfile:Z

.field private mIsOnelockOngoing:Z

.field private mIsSetNewPassword:Z

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mNightModeIsSet:I

.field private mOnlyEnforceDevicePasswordRequirement:Z

.field private mPasswordConfirmed:Z

.field private mRequestGatekeeperPasswordHandle:Z

.field private mRequestedMinComplexity:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mUnificationProfileId:I

.field private mUseBioSession:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mWaitingForConfirmation:Z


# direct methods
.method public static synthetic $r8$lambda$V92QYKVJc8fSilqgUlwLf5uBURk(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->lambda$showSensorErrorDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fX6TAGmxeki6FIV0S--1KfQ-K2Q(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->lambda$updateActivityTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nMGNQ_NPkh9kTd0zj3BFqg6Prig(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->lambda$showSensorErrorDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$upPOg8hVX9vnqiYp-EwRGAZxYTs(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->lambda$updateActivityTitle$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$minterceptFinishIfNeeded(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->interceptFinishIfNeeded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetUnlockMethod(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setSearchIndexDataProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 214
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    .line 262
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 263
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    const/16 v1, -0x2710

    .line 279
    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/4 v1, 0x0

    .line 290
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    .line 298
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 299
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    .line 302
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    .line 305
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    .line 306
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    .line 307
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    .line 308
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromChinaSUW:Z

    .line 309
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    .line 310
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    .line 311
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    .line 312
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    .line 317
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    .line 337
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    .line 338
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    .line 374
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDualDarDoEnforcePwdChangeOngoing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1921
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1926
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1928
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz p4, :cond_0

    .line 1929
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1930
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private finishIfRequired(Landroid/app/Activity;)V
    .locals 2

    .line 912
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_0
    return-void
.end method

.method private finishWithResult(ILandroid/content/Intent;)V
    .locals 1

    .line 1589
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void
.end method

.method private getDefaultTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 732
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    .line 737
    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 738
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_pattern:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_knox_confirm_pattern_title:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 740
    :cond_2
    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 741
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_pin_jpn:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 743
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_pin:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 744
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_knox_confirm_pin_title:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 745
    :cond_5
    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 746
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_password:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 747
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_knox_confirm_password_title:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_7
    return-object p1
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .locals 3

    const/16 v0, 0x66

    const/high16 v1, 0x80000

    if-lt p1, v1, :cond_0

    .line 2467
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(Lcom/android/internal/widget/LockscreenCredential;)Landroid/content/Intent;

    move-result-object p1

    .line 2468
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_2

    :cond_0
    const/high16 v1, 0x20000

    const/16 v2, 0x2711

    if-lt p1, v1, :cond_3

    const/high16 v1, 0x60000

    if-gt p1, v1, :cond_3

    .line 2470
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 2473
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    .line 2476
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2477
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2480
    :cond_1
    iput v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_2

    .line 2478
    :cond_2
    :goto_0
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_2

    :cond_3
    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_6

    .line 2486
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object p1

    .line 2489
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    .line 2492
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2493
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v1, :cond_4

    goto :goto_1

    .line 2496
    :cond_4
    iput v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_2

    .line 2494
    :cond_5
    :goto_1
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :cond_7
    :goto_2
    return-object p1
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 3

    .line 2153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2154
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 2156
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isDualDarDoUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo p0, "unlock_set_two_factor"

    return-object p0

    .line 2162
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2163
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-object p0

    .line 2165
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2167
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    .line 2166
    invoke-static {p0}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2168
    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 2

    .line 2558
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2565
    :goto_0
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 2568
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2569
    sget p0, Lcom/android/settings/R$string;->sec_change_locktype_non_secure_fp_workspace:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_fingerprint:I

    :goto_1
    return p0

    :cond_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 2571
    sget p0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_face:I

    return p0

    .line 2573
    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2574
    sget p0, Lcom/android/settings/R$string;->sec_change_locktype_non_secure_bio_workspace:I

    goto :goto_2

    :cond_4
    sget p0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric:I

    :goto_2
    return p0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 0

    .line 2551
    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->unlock_disable_frp_warning_title_profile:I

    goto :goto_0

    .line 2552
    :cond_0
    sget p0, Lcom/android/settings/R$string;->unlock_disable_frp_warning_title:I

    :goto_0
    return p0
.end method

.method private hasEnrolledFaces(I)Z
    .locals 0

    .line 1184
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasEnrolledFingerprints(I)Z
    .locals 0

    .line 1180
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasManagedProfileFace(Landroid/content/Context;I)Z
    .locals 7

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasManagedProfileFace : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    .line 1214
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1215
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1217
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1220
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1221
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1222
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 1223
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static hasManagedProfileFingerprints(Landroid/content/Context;I)Z
    .locals 7

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasManagedProfileFingerprints : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 1192
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 1193
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1195
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1198
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1199
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1200
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 1201
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private interceptFinishIfNeeded()Z
    .locals 6

    .line 869
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result p0

    if-lt p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isDualDarDoUser()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 874
    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 875
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    .line 876
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordChangeTimeout(Landroid/content/Context;I)I

    move-result v3

    if-gtz v3, :cond_4

    if-eq v0, v2, :cond_5

    :cond_4
    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_0

    :cond_6
    move v4, v1

    :goto_0
    if-lt v0, v2, :cond_7

    if-eqz v4, :cond_7

    .line 882
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 883
    invoke-virtual {v5}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDualDarDoEnforcePwdChangeOngoing:Z

    if-nez v5, :cond_7

    return v2

    :cond_7
    if-ne v0, v2, :cond_8

    if-nez v4, :cond_8

    .line 890
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->scheduleNextPwdChange(II)V

    const/16 v0, 0x64

    .line 891
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    :cond_8
    return v1
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 0

    .line 2634
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 2635
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showSensorErrorDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "ChooseLockGenericFragment"

    const-string/jumbo p1, "showSensorErrorDialog"

    .line 1323
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$showSensorErrorDialog$4(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1324
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$updateActivityTitle$0()Ljava/lang/String;
    .locals 1

    .line 780
    sget v0, Lcom/android/settings/R$string;->lock_settings_picker_update_profile_lock_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateActivityTitle$1()Ljava/lang/String;
    .locals 1

    .line 785
    sget v0, Lcom/android/settings/R$string;->lock_settings_picker_new_profile_lock_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 5

    .line 1342
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "device_policy"

    .line 1343
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 1345
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1346
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1347
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1348
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1352
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object p2

    .line 1353
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    const-string v1, "for_cred_req_boot"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1360
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 1361
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v1

    .line 1364
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSetupEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 1369
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    const-string v0, "for_fingerprint"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1371
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    const-string v0, "for_face"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    const-string v0, "for_biometrics"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1378
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x67

    goto :goto_0

    :cond_0
    const/16 p2, 0x65

    .line 1376
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1382
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_2

    .line 1384
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    .line 1387
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    :goto_1
    return-void
.end method

.method private onActivityResultWhenKnoxEnabled(IILandroid/content/Intent;)V
    .locals 8

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult When Knox reqCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2712

    const/16 v2, 0x2711

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    if-ne p1, v0, :cond_1

    .line 1599
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    if-eqz v4, :cond_1

    .line 1600
    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 1601
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDualDarDoEnforcePwdChangeOngoing:Z

    .line 1602
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 1603
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1604
    iget v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v7, "android.intent.extra.USER_ID"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "isEnforcedPwdChanged"

    .line 1605
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "isEnforcedPwdChangedForDualDarDo"

    .line 1606
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1607
    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1608
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_1
    if-ne p2, v3, :cond_2

    .line 1614
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    .line 1617
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    const/4 v4, 0x0

    if-ne p1, v2, :cond_6

    if-eq p2, v3, :cond_3

    if-eqz p2, :cond_4

    .line 1620
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo p3, "setPwdChangeRequested"

    invoke-static {p1, p2, p3, v4}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    .line 1625
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->resetUcmKeyguard(I)V

    .line 1629
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1630
    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->setHasChooseLockResult(Z)V

    .line 1631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onActivityResult() - ChooseLock result updated("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasChooseLockResult()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChooseLockGenericFragment.SDP"

    .line 1631
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1637
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v2, "switch_fingerprint"

    const/4 v5, -0x1

    if-ne p1, v0, :cond_a

    .line 1641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "two factor result : code : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v5, :cond_7

    .line 1644
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    .line 1645
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    const-string/jumbo p1, "two factor : SET"

    .line 1646
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1648
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_2

    :cond_7
    if-ne p2, v3, :cond_8

    .line 1650
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string p3, "knox_finger_print_plus"

    invoke-static {p1, p3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "two factor : LATER"

    .line 1651
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1653
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo p1, "two factor Not set successfully"

    .line 1655
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_9

    .line 1659
    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1660
    sget p2, Lcom/android/settings/R$string;->status_registered:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1662
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_2

    :cond_a
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_f

    .line 1665
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_16

    .line 1667
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-ne p2, v5, :cond_c

    .line 1669
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1670
    iget-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p3}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1671
    sget p3, Lcom/android/settings/R$string;->sec_status_added:I

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1673
    :cond_b
    sget p3, Lcom/android/settings/R$string;->status_registered:I

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1675
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p3, v3, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1677
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 1678
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_d
    if-ne p2, v5, :cond_e

    .line 1680
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1682
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_2

    :cond_f
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_12

    const-string/jumbo p1, "switch_face"

    .line 1686
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_16

    .line 1688
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-ne p2, v5, :cond_10

    .line 1690
    sget p3, Lcom/android/settings/R$string;->status_registered:I

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1691
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1692
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p3, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1694
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_16

    if-ne p2, v5, :cond_11

    .line 1696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1698
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_2

    :cond_12
    const/16 p2, 0x2719

    if-ne p1, p2, :cond_15

    if-eqz p3, :cond_13

    const-string/jumbo p1, "unlockMethodToSet"

    .line 1703
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_13
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_14

    .line 1706
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    :cond_14
    return-void

    .line 1710
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_16
    :goto_2
    return-void
.end method

.method private removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1935
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1936
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private resetUcmKeyguard(I)V
    .locals 0

    .line 2790
    invoke-static {p1}, Lcom/samsung/android/settings/ucm/UCMUtils;->getKeyguardStorageForUser(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2791
    invoke-static {p1}, Lcom/samsung/android/settings/ucm/UCMUtils;->resetUcmKeyguardSettingsAsUser(I)Z

    :cond_0
    return-void
.end method

.method private scheduleNextPwdChange(II)V
    .locals 6

    .line 899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 900
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const/high16 v5, 0x14000000

    .line 901
    invoke-static {v2, v4, p2, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v2, "alarm"

    .line 905
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 906
    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 907
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->setPwdChangeRequested(Landroid/content/Context;II)V

    return-void
.end method

.method private setInformText()V
    .locals 3

    const-string v0, "inform_text"

    .line 2011
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;

    if-eqz v0, :cond_2

    .line 2014
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_0

    .line 2015
    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_chooselock_help_text_1:I

    goto :goto_0

    .line 2016
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v1, :cond_1

    .line 2017
    sget v1, Lcom/android/settings/R$string;->sec_face_chooselock_help_text_1:I

    goto :goto_0

    .line 2019
    :cond_1
    sget v1, Lcom/android/settings/R$string;->sec_intelligentscan_chooselock_help_text_1:I

    .line 2021
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    const-string/jumbo v2, "sec-roboto-light"

    .line 2022
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2023
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_biometrics_choose_lock_header_description_color:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->setTitleColor(I)V

    const/4 p0, 0x1

    .line 2024
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method private setPreferenceSummaryByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1915
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1916
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2118
    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2120
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static setSearchIndexDataProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;
    .locals 1

    .line 2685
    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>()V

    return-object v0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 5

    const v0, 0x16058

    .line 2639
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2641
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockType;->fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2643
    sget-object v3, Lcom/android/settings/password/ChooseLockGeneric$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 2660
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "set two-factor for knox"

    .line 2661
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2663
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2664
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v1, "password"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "request_gk_pw_handle"

    .line 2665
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2666
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string/jumbo v1, "requested_min_complexity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2668
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const-string v1, "device_password_requirement_only"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2671
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    const/16 v0, 0x2712

    .line 2672
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v4

    .line 2655
    :pswitch_1
    iget p1, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    return v4

    .line 2646
    :pswitch_2
    iget p1, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, v1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    return v4

    .line 2679
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered unknown unlock method to set: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setWarningText()V
    .locals 6

    const-string/jumbo v0, "warning_text"

    .line 2029
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;

    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_lockscreen_ppp_help_text_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->setTitleColor(I)V

    const-string/jumbo v1, "sec-roboto-light"

    const/4 v2, 0x1

    .line 2032
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2033
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2036
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2037
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2038
    sget v3, Lcom/android/settings/R$string;->sec_biometrics_chooselock_description_common_workspace:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2039
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->sec_biometrics_chooselock_title_workspace:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showSensorErrorDialog(II)V
    .locals 2

    .line 1318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1319
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    .line 1320
    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_attention:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settings/R$string;->sec_face_attention:I

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 1321
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda2;-><init>()V

    .line 1322
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1323
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1324
    new-instance p2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1325
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1327
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Activity is null. Skip showSensorErrorDialog for type = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p1, "Fingerprint"

    goto :goto_1

    :cond_2
    const-string p1, "Face"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseLockGenericFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private skipBiometricsAuthentication()Z
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 699
    :goto_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v1

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1
.end method

.method private startFaceLockSettings(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "startFaceLockSettings()"

    .line 1282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_0

    .line 1284
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "isHardwareDetected() of Face is FALSE."

    .line 1285
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(II)V

    return-void

    .line 1290
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    .line 1291
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lock_screen_face"

    .line 1292
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "knox_lock_screen_face"

    .line 1293
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1294
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1296
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string v1, "identifyFace"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1298
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string/jumbo v1, "requested_min_complexity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    iget-wide v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mGkPwHandle:J

    const-string p1, "gk_pw_handle"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1302
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_3

    const-string/jumbo v1, "unification_profile_id"

    .line 1303
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1304
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v1, "unification_profile_credential"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1308
    :cond_3
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-nez p2, :cond_5

    .line 1309
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 1310
    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x2718

    .line 1313
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 p1, 0x3ec

    .line 1311
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method private startFactoryResetProtectionWarningDialogActivity(Ljava/lang/String;)V
    .locals 3

    .line 2798
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2799
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v1

    const-string/jumbo v2, "titleRes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2800
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    const-string/jumbo v2, "messageRes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "unlockMethodToSet"

    .line 2801
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2802
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x2719

    .line 2803
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;Z)V
    .locals 5

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFingerprintLockSettings() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "isFingerprintDisabled() = TRUE"

    .line 1236
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "isHardwareDetected() of Fingerprint is FALSE."

    .line 1242
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(II)V

    return-void

    .line 1247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    .line 1248
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "knox_fingerprint_entry"

    .line 1249
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    :goto_0
    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1252
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string v3, "identifyFingerprint"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1253
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1254
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    const-string v3, "is_secure_folder"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1255
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->getOwnerUserId()I

    move-result v1

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1256
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string/jumbo v3, "requested_min_complexity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1258
    iget-wide v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mGkPwHandle:J

    const-string v1, "gk_pw_handle"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1260
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_4

    const-string/jumbo v3, "unification_profile_id"

    .line 1261
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1262
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v3, "unification_profile_credential"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1266
    :cond_4
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-nez p2, :cond_6

    .line 1268
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 1269
    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 p2, 0x2718

    .line 1273
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1274
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    if-nez p2, :cond_7

    const-string p2, "lock_screen_fingerprint"

    .line 1275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, "mKnoxIdentifyOnly"

    .line 1270
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2713

    .line 1271
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateActivityTitle()V
    .locals 4

    .line 766
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    return-void

    .line 772
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_2

    .line 776
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const-string v3, "Settings.LOCK_SETTINGS_UPDATE_PROFILE_LOCK_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const-string v3, "Settings.LOCK_SETTINGS_NEW_PROFILE_LOCK_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 798
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 799
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setExtraTitle()V

    :cond_3
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 6

    .line 2125
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 2126
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2128
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2131
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2133
    invoke-virtual {v0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2135
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2136
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2138
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    sget v3, Lcom/android/settings/R$string;->current_screen_lock:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$color;->sec_widget_color_primary:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 2141
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p0, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, p0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2144
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2145
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updatePreferenceText()V
    .locals 3

    .line 2090
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 2092
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2091
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2094
    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected addPreferences()V
    .locals 2

    .line 1943
    sget v0, Lcom/android/settings/R$xml;->sec_security_settings_picker:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 1949
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_1

    .line 1950
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_chooselock_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 1951
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setInformText()V

    .line 1952
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setWarningText()V

    goto :goto_0

    :cond_1
    const-string v0, "inform_text"

    .line 1954
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "warning_text"

    .line 1955
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method protected alwaysHideInsecureScreenLockTypes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected canRunBeforeDeviceProvisioned()Z
    .locals 2

    .line 806
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "persistent_data_block"

    .line 812
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz p0, :cond_2

    .line 816
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getDataBlockSize()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method protected disableUnusablePreferences()V
    .locals 11

    .line 2179
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 2180
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    .line 2181
    iget-object v6, v5, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 2182
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 2183
    instance-of v7, v6, Lcom/android/settingslib/RestrictedPreference;

    if-nez v7, :cond_0

    instance-of v8, v6, Landroidx/preference/SwitchPreference;

    if-nez v8, :cond_0

    instance-of v8, v6, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-nez v8, :cond_0

    instance-of v8, v6, Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v8, :cond_5

    .line 2189
    :cond_0
    iget-object v8, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v8, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v8, v5}, Lcom/android/settings/password/LockTypePolicy;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v3

    .line 2190
    :goto_1
    iget-object v10, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v10, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v10, v5}, Lcom/android/settings/password/LockTypePolicy;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    if-nez v8, :cond_3

    .line 2193
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_3
    if-nez v9, :cond_5

    if-eqz v7, :cond_4

    .line 2196
    move-object v5, v6

    check-cast v5, Lcom/android/settingslib/RestrictedPreference;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 2198
    :cond_4
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public finish()V
    .locals 1

    .line 859
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->interceptFinishIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 862
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method protected getBiometricEnrollIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 1716
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p1, "skip_intro"

    const/4 v0, 0x1

    .line 1718
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 685
    const-class p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getInternalActivityClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;",
            ">;"
        }
    .end annotation

    .line 820
    const-class p0, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    return-object p0
.end method

.method protected getLockManagedPasswordIntent(Lcom/android/internal/widget/LockscreenCredential;)Landroid/content/Intent;
    .locals 1

    .line 2206
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->createIntent(ZLcom/android/internal/widget/LockscreenCredential;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPasswordIntent(I)Landroid/content/Intent;
    .locals 5

    .line 2210
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;-><init>(Landroid/content/Context;)V

    .line 2212
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordType(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 2214
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordComplexity()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 2215
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 2213
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordRequirement(ILandroid/app/admin/PasswordMetrics;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 2216
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    .line 2217
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForFace(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    .line 2218
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2219
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    .line 2221
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_2

    .line 2222
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2223
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2228
    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2230
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntentForUnlock - Secured password required for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChooseLockGenericFragment.SDP"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 2233
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2234
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setKnoxPasswordSecured(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    goto :goto_0

    .line 2237
    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2240
    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_5

    .line 2241
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2244
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    if-eqz v1, :cond_6

    .line 2245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setSetupWizard(Landroid/content/Context;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2248
    :cond_6
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordLengthRange(II)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2250
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "knox_userId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2251
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setKnoxUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2253
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2254
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPrivateBackupKey(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2255
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setAppLockBackupKey(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2256
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setFromScreenLock(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2257
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setScreenLockBio(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2258
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setSettingsBio(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2259
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v1, :cond_8

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz p0, :cond_a

    :cond_8
    const/high16 p0, 0x20000

    if-ne p1, p0, :cond_9

    goto :goto_2

    :cond_9
    move v2, v3

    .line 2260
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setIsPIN(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 2264
    :cond_a
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 4

    .line 2268
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 2270
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    .line 2271
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForFace(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    .line 2272
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2273
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    .line 2275
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_2

    .line 2276
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2277
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2282
    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v1, :cond_4

    .line 2284
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentForUnlock - Secured password required for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooseLockGenericFragment.SDP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 2287
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    const/4 v1, 0x1

    .line 2288
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setKnoxPasswordSecured(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    goto :goto_0

    .line 2291
    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2294
    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_5

    .line 2295
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2299
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    if-eqz v1, :cond_6

    .line 2300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setSetupWizard(Landroid/content/Context;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2303
    :cond_6
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "knox_userId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2304
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setKnoxUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2306
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2307
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPrivateBackupKey(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2308
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setAppLockBackupKey(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2309
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setFromScreenLock(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2310
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setScreenLockBio(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2311
    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setSettingsBio(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 2314
    :cond_8
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1b

    return p0
.end method

.method protected getSetupEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 2325
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_lockscreen"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1393
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult : requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1395
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-wide/16 v2, 0x0

    .line 1399
    iput-wide v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mGkPwHandle:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/16 v5, 0x64

    if-ne p1, v5, :cond_5

    if-ne p2, v4, :cond_5

    .line 1404
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mGkPwHandle:J

    .line 1406
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p3, :cond_0

    const-string/jumbo p2, "password"

    .line 1408
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 1409
    :cond_0
    iput-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 1411
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p2}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "is_knox_password_secured"

    .line 1413
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 1415
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult - Password secured for user "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "ChooseLockGenericFragment.SDP"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 1418
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 1419
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v1

    .line 1418
    invoke-static {p2, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 1423
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 1424
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p2, :cond_4

    .line 1425
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1426
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 1427
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    .line 1426
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_1

    .line 1429
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1433
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p2}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 1434
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setExtraTitle()V

    goto/16 :goto_7

    :cond_5
    const/16 v5, 0x66

    const-string/jumbo v6, "screen_lock_force_destroy"

    if-eq p1, v5, :cond_16

    const/16 v5, 0x65

    if-ne p1, v5, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 v1, 0x2718

    if-ne p1, v1, :cond_a

    if-ne p2, v4, :cond_7

    .line 1520
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 1522
    :cond_7
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    .line 1523
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1524
    invoke-direct {p0, v4, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    :cond_8
    const-string/jumbo p2, "switch_face"

    .line 1526
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_9

    .line 1528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p3, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    const-string/jumbo p2, "switch_fingerprint"

    .line 1530
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_20

    .line 1532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p3, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1537
    :cond_a
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x67

    if-ne p1, v1, :cond_d

    if-ne p2, v3, :cond_d

    .line 1541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricEnrollIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p3, :cond_c

    .line 1548
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1551
    :cond_c
    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1552
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_7

    :cond_d
    const/16 v1, 0x68

    if-ne p1, v1, :cond_f

    if-eqz p2, :cond_20

    if-ne p2, v3, :cond_e

    move p2, v4

    .line 1557
    :cond_e
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    :cond_f
    const/16 v1, 0x1f5

    if-ne p1, v1, :cond_10

    return-void

    :cond_10
    const/16 v1, 0x2719

    if-ne p1, v1, :cond_14

    if-nez p2, :cond_11

    .line 1564
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-eqz p3, :cond_13

    .line 1565
    invoke-virtual {p3, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1566
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_11
    if-eqz p3, :cond_12

    const-string/jumbo p1, "unlockMethodToSet"

    .line 1570
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v2, :cond_13

    .line 1573
    invoke-direct {p0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    :cond_13
    :goto_2
    return-void

    .line 1580
    :cond_14
    invoke-direct {p0, v0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 1538
    :cond_15
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResultWhenKnoxEnabled(IILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 1439
    :cond_16
    :goto_4
    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v5, :cond_17

    .line 1446
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    :cond_17
    if-ne p2, v3, :cond_1e

    .line 1451
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v3}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1452
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    goto :goto_5

    .line 1453
    :cond_18
    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    if-nez v3, :cond_1c

    .line 1454
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "enable_one_lock_ongoing"

    invoke-static {v3, v5, v0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1455
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsOnelockOngoing:Z

    if-eqz v3, :cond_19

    .line 1456
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    .line 1459
    :cond_19
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v3}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1462
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1461
    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1464
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    :cond_1a
    if-eqz v2, :cond_1b

    .line 1467
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-ne v3, v4, :cond_1b

    .line 1468
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10000000

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v0, v3, v5, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "alarm"

    .line 1471
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 1472
    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1b
    if-eqz v2, :cond_1c

    .line 1475
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_1c

    .line 1476
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 1483
    :cond_1c
    :goto_5
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->resetUcmKeyguard(I)V

    .line 1486
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    if-nez v0, :cond_1d

    .line 1487
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    if-nez v0, :cond_1d

    :try_start_0
    const-string v0, "Lock"

    .line 1489
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmDialogIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1491
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurs when excuting fmmIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_1d
    :goto_6
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    goto :goto_7

    .line 1502
    :cond_1e
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-eqz p3, :cond_1f

    .line 1503
    invoke-virtual {p3, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1504
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    .line 1511
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_20

    .line 1514
    invoke-direct {p0, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    :cond_20
    :goto_7
    if-nez p1, :cond_21

    .line 1582
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p1, :cond_21

    .line 1583
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 397
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 400
    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "ChooseLockGenericFragment"

    if-nez v2, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->canRunBeforeDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Refusing to start because device is not provisioned"

    .line 402
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 406
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 412
    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string v5, "device_policy"

    .line 414
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 415
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v5, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 416
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    const-string v5, "android.app.action.SET_NEW_PASSWORD"

    .line 417
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v1, :cond_3

    const-string v4, "fromDualDarDoScreenLock"

    .line 418
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v7

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    .line 421
    instance-of v4, v0, Lcom/android/settings/password/ScreenLockSuggestionActivity;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/password/ScreenLockSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p0, "ScreenLockSuggestionActivity is not supported "

    .line 422
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 432
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 433
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 435
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 431
    invoke-static {v3, v4, v1, v5}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 438
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    if-eqz v3, :cond_5

    .line 439
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDualDarDoInnerAuthUserId(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 443
    :cond_5
    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 444
    iput v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 447
    :cond_6
    new-instance v3, Lcom/android/settings/password/LockTypePolicy;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/android/settings/password/LockTypePolicy;-><init>(Landroid/content/Context;ILandroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 451
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->initializeStreamCipher()J

    move-result-wide v3

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate - StreamCipher initialized with handle("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooseLockGenericFragment.SDP"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->setHasChooseLockResult(Z)V

    const-string/jumbo v3, "onCreate() - KnoxStatus initialized"

    .line 455
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "confirm_credentials"

    .line 460
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 461
    instance-of v5, v0, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    const-string v8, " : "

    const-string v9, "is_knox_password_secured"

    const-string/jumbo v10, "password"

    if-eqz v5, :cond_7

    xor-int/lit8 v11, v3, 0x1

    .line 462
    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 463
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 466
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v11}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez p1, :cond_9

    .line 468
    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 470
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onCreate - Password secured for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_9

    .line 473
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 474
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v12

    .line 473
    invoke-static {v11, v12, v13}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_9

    .line 479
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v11, :cond_8

    move v11, v6

    goto :goto_3

    :cond_8
    move v11, v7

    .line 481
    :goto_3
    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    :cond_9
    :goto_4
    const-string/jumbo v11, "request_gk_pw_handle"

    .line 484
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    const-string v11, "for_fingerprint"

    .line 486
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    const-string v11, "for_face"

    .line 488
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    const-string v11, "for_biometrics"

    .line 490
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    const-string/jumbo v11, "requested_min_complexity"

    .line 493
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string v11, "device_password_requirement_only"

    .line 495
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const-string v11, "is_calling_app_admin"

    .line 499
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsCallingAppAdmin:Z

    if-eqz v1, :cond_a

    const-string v11, "for_cred_req_boot"

    .line 500
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v6

    goto :goto_5

    :cond_a
    move v11, v7

    :goto_5
    iput-boolean v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 502
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_b

    const-string/jumbo v11, "unification_profile_credential"

    .line 505
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const/16 v11, -0x2710

    const-string/jumbo v12, "unification_profile_id"

    .line 507
    invoke-virtual {v1, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    :cond_b
    const-string v1, "fromSetupWizard"

    .line 513
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    const-string v1, "forPrivateBackupKey"

    .line 514
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    const-string v1, "forAppLockBackupKey"

    .line 515
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v1, :cond_c

    move v1, v6

    goto :goto_6

    :cond_c
    move v1, v7

    .line 516
    :goto_6
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    const-string v1, "fromChinaSUW"

    .line 517
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromChinaSUW:Z

    const-string/jumbo v1, "screen_lock_bio"

    .line 518
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    const-string/jumbo v1, "settings_bio"

    .line 519
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    .line 520
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->skipBiometricsAuthentication()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string/jumbo v1, "statusbar"

    .line 521
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 522
    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v11, "fromScreenLock"

    if-eqz v1, :cond_f

    const-string v12, ":settings:fragment_args_key"

    .line 525
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 526
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    move v1, v7

    goto :goto_8

    :cond_e
    :goto_7
    move v1, v6

    :goto_8
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    .line 528
    :cond_f
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 531
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    :cond_10
    const-string v1, "isEnforcedPwdChanged"

    .line 537
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 538
    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    move v1, v7

    goto :goto_a

    :cond_12
    :goto_9
    move v1, v6

    :goto_a
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    .line 539
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    if-eqz v1, :cond_13

    const-string v1, "isEnforcedPwdChangedForDualDarDo"

    .line 540
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    if-eqz v1, :cond_13

    .line 542
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDualDarDoInnerAuthUserId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 543
    new-instance v11, Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-direct {v11, v0, v1, v12}, Lcom/android/settings/password/LockTypePolicy;-><init>(Landroid/content/Context;ILandroid/content/Intent;)V

    iput-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    :cond_13
    const-string v1, "fromPwdNotification"

    .line 547
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromPwdNotification:Z

    const-string v1, "isOneLockOngoing"

    .line 548
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsOnelockOngoing:Z

    const-string v1, "isFromSecureFolderReset"

    .line 549
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSecureFolderReset:Z

    .line 554
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v11, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    :cond_14
    if-eqz p1, :cond_15

    const-string/jumbo v1, "password_confirmed"

    .line 563
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v1, "waiting_for_confirmation"

    .line 564
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 565
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string v1, "gk_pw_handle"

    .line 568
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mGkPwHandle:J

    .line 571
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 572
    invoke-virtual {p1, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 574
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCreate(savedInst) - Password secured for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_15

    .line 577
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 578
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v8

    .line 577
    invoke-static {v1, v8, v9}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 585
    :cond_15
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v1, :cond_18

    :cond_16
    if-eqz v5, :cond_17

    xor-int/lit8 v1, v3, 0x1

    .line 587
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/lit8 v1, v3, 0x1

    .line 588
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 590
    :cond_17
    sget v1, Lcom/android/settings/R$string;->sec_backup_key_for_privatemode:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 606
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    .line 607
    new-instance v1, Lcom/android/settings/password/ChooseLockGenericController$Builder;

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/settings/password/ChooseLockGenericController$Builder;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    .line 609
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setAppRequestedMinComplexity(I)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    .line 610
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setEnforceDevicePasswordRequirementOnly(Z)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    .line 611
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setProfileToUnify(I)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->alwaysHideInsecureScreenLockTypes()Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "hide_insecure_options"

    .line 613
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_b

    :cond_19
    move v3, v7

    goto :goto_c

    :cond_1a
    :goto_b
    move v3, v6

    .line 612
    :goto_c
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setHideInsecureScreenLockTypes(Z)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->build()Lcom/android/settings/password/ChooseLockGenericController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 616
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController;->setForFingerprint(Z)V

    .line 617
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    invoke-virtual {v1, v3}, Lcom/android/settings/password/LockTypePolicy;->setUnificationProfileId(I)V

    .line 623
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController;->isComplexityProvidedByAdmin()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_d

    :cond_1b
    const-string v1, "caller_app_name"

    .line 624
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    .line 626
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 628
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1c

    goto :goto_e

    :cond_1c
    move v6, v7

    .line 629
    :goto_e
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 630
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p1, :cond_28

    .line 631
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    invoke-direct {p0, p1, v7}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_14

    .line 634
    :cond_1d
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v1, :cond_26

    .line 635
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x64

    .line 637
    invoke-virtual {v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 638
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 639
    invoke-virtual {v0, v6}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 640
    invoke-virtual {v0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 641
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 643
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v6

    goto :goto_f

    :cond_1e
    move v0, v7

    :goto_f
    if-eqz v0, :cond_1f

    .line 644
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_1f

    move v0, v6

    goto :goto_10

    :cond_1f
    move v0, v7

    .line 646
    :goto_10
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-nez v3, :cond_20

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v3, :cond_21

    .line 650
    :cond_20
    invoke-virtual {v1, v6}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 653
    :cond_21
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v3}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v3}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v3

    if-nez v3, :cond_22

    .line 654
    invoke-virtual {v1, v6}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 656
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v3, :cond_22

    .line 657
    invoke-virtual {v1, v6}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setKnoxWorkProfileSecurity(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 660
    :cond_22
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getDefaultTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    if-nez v0, :cond_24

    .line 662
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_11

    .line 666
    :cond_23
    iput-boolean v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_14

    .line 663
    :cond_24
    :goto_11
    iput-boolean v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p1, :cond_25

    goto :goto_12

    :cond_25
    move v6, v7

    .line 664
    :goto_12
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    goto :goto_14

    .line 668
    :cond_26
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSecureFolderReset:Z

    if-eqz v1, :cond_28

    .line 669
    iput-boolean v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 671
    sget v1, Lcom/android/settings/R$string;->pref_lock_type_title_sfolder:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    if-eqz p1, :cond_27

    goto :goto_13

    :cond_27
    move v6, v7

    .line 673
    :goto_13
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 676
    :cond_28
    :goto_14
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setExtraTitle()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 920
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 923
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    if-eqz p1, :cond_1

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 927
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 757
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateActivityTitle()V

    .line 758
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 5

    .line 2507
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 2508
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 2509
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    .line 2511
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "switch_fingerprint"

    .line 2516
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 2518
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2521
    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    .line 2522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$integer;->sec_secure_folder_status_lock_type:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCurrentLockTypeSummaryEnglish(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 2521
    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    .line 2525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$integer;->sec_secure_folder_status_fingerprint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    .line 2524
    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 2530
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 2535
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2536
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2537
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 934
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 935
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 937
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishIfRequired(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string p0, "ChooseLockGenericFragment"

    const-string p1, "If knox user or Dex stand alone mode, enable multi window"

    .line 940
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 970
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 974
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v1, :cond_2

    .line 975
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-nez v1, :cond_1

    .line 976
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mNightModeIsSet:I

    if-eq v0, v1, :cond_0

    .line 977
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mNightModeIsSet:I

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 982
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UseBioPref : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChooseLockGenericFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 991
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/ScreenLockType;->fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    .line 992
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 993
    sget-object v1, Lcom/android/settings/password/ChooseLockGeneric$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_c

    :cond_0
    if-nez p2, :cond_1

    .line 1086
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1, p2, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroidx/preference/Preference;ZI)V

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->showResetDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_c

    .line 1094
    :cond_1
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string/jumbo v0, "sf_reset_with_samsung_account"

    invoke-static {p1, v0, p2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_c

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 1041
    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    const-string v3, "knox_lock_screen_face"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_7

    .line 1043
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p2

    xor-int/2addr p2, v2

    .line 1044
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/android/settings/password/LockTypePolicy;->getOwnerUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    if-nez p2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1048
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2, v0, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1049
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_c

    .line 1046
    :cond_6
    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 1052
    :cond_7
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1053
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_c

    :cond_8
    if-eqz p2, :cond_d

    .line 1057
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p2, :cond_c

    .line 1058
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    .line 1070
    :cond_9
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1071
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_c

    .line 1060
    :cond_a
    :goto_3
    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1061
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1062
    invoke-direct {p0, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    const-string p2, "lock_screen_face"

    .line 1065
    invoke-direct {p0, p2, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;Z)V

    .line 1067
    :goto_4
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v1

    :cond_c
    const-string p0, "ChooseLockGenericFragment"

    const-string p1, "mFaceManager is null!"

    .line 1074
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1077
    :cond_d
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1078
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_c

    .line 995
    :cond_e
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    const-string v3, "knox_fingerprint_entry"

    if-eqz v0, :cond_15

    if-eqz p2, :cond_13

    .line 997
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p2

    xor-int/2addr p2, v2

    .line 998
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/android/settings/password/LockTypePolicy;->getOwnerUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move v0, v1

    goto :goto_6

    :cond_10
    :goto_5
    move v0, v2

    :goto_6
    if-nez p2, :cond_12

    if-eqz v0, :cond_11

    goto :goto_7

    .line 1002
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2, v0, v4, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    .line 1003
    move-object p2, p1

    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_8

    .line 1000
    :cond_12
    :goto_7
    invoke-direct {p0, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;Z)V

    goto :goto_8

    .line 1006
    :cond_13
    move-object p2, p1

    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1007
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2, v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1010
    :goto_8
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p2}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1011
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "1"

    goto :goto_9

    :cond_14
    const-string p1, "0"

    .line 1012
    :goto_9
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$integer;->sec_secure_folder_choose_lock_type_screen_id:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1013
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$integer;->sec_secure_folder_select_fingerprint_event_id:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 1012
    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    if-eqz p2, :cond_19

    .line 1018
    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result p2

    const-string v0, "lock_screen_fingerprint"

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_a

    .line 1030
    :cond_16
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1031
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    goto :goto_c

    .line 1020
    :cond_17
    :goto_a
    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1021
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1022
    invoke-direct {p0, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;Z)V

    goto :goto_b

    .line 1025
    :cond_18
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;Z)V

    .line 1027
    :goto_b
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v1

    .line 1034
    :cond_19
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1035
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1a
    :goto_c
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 1109
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "unlock_set_none"

    .line 1117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1118
    :cond_1
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    .line 1123
    :cond_2
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 1124
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFingerprints(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFace(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v2, v1

    .line 1126
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 1128
    invoke-virtual {v3}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    .line 1133
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startFactoryResetProtectionWarningDialogActivity(Ljava/lang/String;)V

    return v1

    :cond_9
    const-string/jumbo v0, "unlock_skip_fingerprint"

    .line 1140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "unlock_skip_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "unlock_skip_biometrics"

    .line 1141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    const-string/jumbo v0, "unlock_set_fingerprint"

    .line 1161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    if-ne v0, v1, :cond_b

    return v1

    .line 1167
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1142
    :cond_c
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1143
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getInternalActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1147
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/2addr v0, v1

    const-string v2, "confirm_credentials"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1148
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string/jumbo v2, "requested_min_complexity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1150
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const-string v2, "device_password_requirement_only"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    const-string v2, "caller_app_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_d

    const-string/jumbo v2, "password"

    .line 1154
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_d
    const/16 v0, 0x68

    .line 1157
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v1
.end method

.method public onResume()V
    .locals 3

    .line 947
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mNightModeIsSet:I

    .line 951
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 957
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->lock_screen_disable_samsung_dex:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    .line 962
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishIfRequired(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1724
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1726
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v1, "password_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1727
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string/jumbo v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1728
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_1

    .line 1731
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    const-string/jumbo v1, "password"

    if-eqz v0, :cond_0

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState - Secured password required for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChooseLockGenericFragment.SDP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1734
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    const-string v1, "is_knox_password_secured"

    .line 1735
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1741
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1748
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mGkPwHandle:J

    const-string p0, "gk_pw_handle"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setExtraTitle()V
    .locals 2

    .line 706
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 711
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_choose_lock_generic_sf_header_default:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_choose_lock_generic_work_profile_header_default:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromDualDarDo:Z

    if-eqz v1, :cond_3

    .line 718
    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title_ddado:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 721
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 724
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method updatePreferencesOrFinish(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 1754
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1756
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v2, "lockscreen.password_type"

    .line 1757
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "ChooseLockGenericFragment"

    const-string v2, "Ignoring PASSWORD_TYPE_KEY because device is not file encrypted"

    .line 1761
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 1765
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1767
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1769
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 1770
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences()V

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 1772
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 1775
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 1778
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 1779
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v5

    const-string v6, "fingerprint_category"

    const-string/jumbo v7, "switch_face"

    const-string/jumbo v8, "switch_fingerprint"

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v5, :cond_6

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v5, :cond_6

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromSetupWizard:Z

    if-nez v5, :cond_6

    .line 1780
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v5}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1781
    invoke-virtual {v0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 1784
    :cond_5
    invoke-virtual {v0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    sget v9, Lcom/android/settings/R$string;->biometrics:I

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_3

    .line 1782
    :cond_6
    :goto_2
    invoke-direct {v0, v1, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1787
    :goto_3
    invoke-virtual {v0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1788
    invoke-virtual {v0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1789
    invoke-virtual {v0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreference;

    .line 1791
    iget-object v10, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v10, v4, v11}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v10

    if-ne v10, v4, :cond_7

    move v10, v4

    goto :goto_4

    :cond_7
    move v10, v2

    .line 1793
    :goto_4
    invoke-virtual {v5, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1795
    iget v10, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v0, v10}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v10

    if-eqz v10, :cond_8

    sget v10, Lcom/android/settings/R$string;->biometrics_registered:I

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    .line 1796
    :goto_5
    invoke-virtual {v5, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1799
    :cond_9
    invoke-virtual {v0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1800
    invoke-virtual {v0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1801
    invoke-virtual {v0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreference;

    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v10, v11}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1804
    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1805
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    .line 1807
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v10, v11}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceLockSetForUser(Landroid/content/Context;I)Z

    move-result v10

    invoke-virtual {v5, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1809
    :goto_6
    iget v10, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v0, v10}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces(I)Z

    move-result v10

    if-eqz v10, :cond_b

    sget v10, Lcom/android/settings/R$string;->biometrics_registered:I

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 1810
    :goto_7
    invoke-virtual {v5, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1813
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v10, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v5, v10}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->supportFaceLockOnBioPrompt(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1815
    invoke-direct {v0, v1, v7}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1817
    invoke-direct {v0, v1, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1822
    :cond_d
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v5}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v5

    const-string/jumbo v10, "reset_secure_folder_category"

    const-string/jumbo v11, "pref_locktype_description"

    const-string v12, "biometrics_category"

    const-string/jumbo v13, "switch_reset_with_sa"

    const-string/jumbo v14, "pref_biometrics_description"

    if-nez v5, :cond_e

    .line 1823
    invoke-direct {v0, v1, v12}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1824
    invoke-direct {v0, v1, v14}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1825
    invoke-direct {v0, v1, v11}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1826
    invoke-direct {v0, v1, v13}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1827
    invoke-direct {v0, v1, v10}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_9

    .line 1829
    :cond_e
    invoke-direct {v0, v1, v14}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v0, v13}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 1831
    invoke-virtual {v0, v13}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1832
    invoke-virtual {v0, v13}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreference;

    .line 1833
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1834
    sget v15, Lcom/android/settings/R$string;->sec_reset_with_samsung_account_jpn:I

    invoke-virtual {v5, v15}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1836
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    iget v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string/jumbo v9, "sf_reset_with_samsung_account"

    invoke-static {v15, v9, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v4, :cond_10

    move v2, v4

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    .line 1837
    :goto_8
    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1841
    :cond_11
    :goto_9
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v2, :cond_19

    if-eqz v1, :cond_18

    .line 1843
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1844
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1845
    sget v2, Lcom/android/settings/R$string;->sec_text_security_title_b2c_jpn:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a

    .line 1847
    :cond_12
    sget v2, Lcom/android/settings/R$string;->sec_text_security_title_b2c:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;ILjava/lang/String;)V

    :goto_a
    const-string/jumbo v2, "unlock_set_pattern"

    .line 1850
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1852
    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    .line 1853
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v3, v2, 0x1

    .line 1854
    invoke-direct {v0, v1, v12, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x2

    .line 1855
    invoke-direct {v0, v1, v14, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferenceswithOrder(Landroidx/preference/PreferenceScreen;Ljava/lang/String;I)V

    goto :goto_b

    .line 1857
    :cond_13
    invoke-direct {v0, v1, v12}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1858
    invoke-direct {v0, v1, v14}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1862
    :cond_14
    :goto_b
    iget v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_15

    sget v2, Lcom/android/settings/R$string;->sec_status_added:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :cond_15
    const/4 v9, 0x0

    .line 1863
    :goto_c
    invoke-direct {v0, v1, v8, v9}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummaryByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object v2

    .line 1866
    sget-object v3, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    move v2, v4

    :goto_e
    if-nez v2, :cond_19

    const-string/jumbo v2, "unlock_set_fingerprint"

    .line 1868
    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1869
    invoke-direct {v0, v1, v8}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1870
    invoke-direct {v0, v1, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1871
    invoke-direct {v0, v1, v12}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1872
    invoke-direct {v0, v1, v14}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1873
    invoke-direct {v0, v1, v11}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1874
    invoke-direct {v0, v1, v13}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1875
    invoke-direct {v0, v1, v10}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_f

    .line 1879
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1886
    :cond_19
    :goto_f
    iput-boolean v4, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 1888
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1889
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromPwdNotification:Z

    if-nez v2, :cond_1a

    .line 1890
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->ENFORCE_POLICY:Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->showPolicyDialog(Landroid/content/Context;Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;)V

    goto :goto_10

    .line 1891
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFromPwdNotification:Z

    if-nez v2, :cond_1b

    .line 1892
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->RESET_POLICY:Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->showPolicyDialog(Landroid/content/Context;Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;)V

    .line 1905
    :cond_1b
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1906
    invoke-direct {v0, v1, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1907
    invoke-direct {v0, v1, v8}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1908
    invoke-direct {v0, v1, v7}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreferenceByKey(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method updateUnlockMethodAndFinish(IZZ)V
    .locals 7

    .line 2344
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_11

    const/4 v0, -0x1

    .line 2349
    iput v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    .line 2351
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    .line 2352
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2354
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "show_options_button"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2355
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2357
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "choose_lock_generic_extras"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2364
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    if-ne p1, v0, :cond_2

    .line 2366
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x67

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    .line 2365
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2370
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_3
    if-nez p1, :cond_10

    .line 2383
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_6

    .line 2384
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2385
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_5

    .line 2386
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2387
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2386
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 2389
    :cond_5
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1, v1, p3, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_2

    .line 2392
    :cond_6
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_7

    .line 2393
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3, p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 2394
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2395
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2394
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 2397
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v1, 0x101

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, v1, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricsLockDBValue(Landroid/content/Context;II)V

    .line 2401
    :cond_8
    :goto_2
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_9

    .line 2402
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 2406
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    .line 2407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    .line 2409
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedPwdChanged:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsOnelockOngoing:Z

    if-eqz p1, :cond_c

    .line 2410
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    .line 2414
    :cond_c
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isOnlyDevicePasswordAdminEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 2417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2416
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2419
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    goto :goto_3

    :cond_d
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_e

    .line 2422
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-ne v3, v0, :cond_e

    .line 2423
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x10000000

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v2, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v3, "alarm"

    .line 2426
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 2427
    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    if-eqz p1, :cond_f

    .line 2430
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-lez v0, :cond_f

    .line 2431
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 2436
    :cond_f
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->resetUcmKeyguard(I)V

    .line 2440
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "universal_lock_switch_state"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2441
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "interaction_control_exit_locked"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_to_app_exit_locked"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2444
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 2446
    invoke-direct {p0, p3, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finishWithResult(ILandroid/content/Intent;)V

    :cond_10
    return-void

    .line 2345
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to update password without confirming it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
