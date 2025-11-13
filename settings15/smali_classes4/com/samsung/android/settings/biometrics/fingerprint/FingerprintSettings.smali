.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static mIsKeepEnrollSession:Z

.field public static mIsPreferenceClicked:Z

.field public static final mScreenOffIconOptionSummaryString:[I


# instance fields
.field public items:Ljava/util/List;

.field public mAddFingerprint:Landroidx/preference/PreferenceScreen;

.field public mAlwaysOn:Landroidx/preference/SwitchPreference;

.field public final mAuthenticationCallback:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;

.field public mChallenge:J

.field public mEmptyView:Landroid/view/View;

.field public mEnrolledFingerCount:I

.field public mFastRecognition:Landroidx/preference/SwitchPreference;

.field public mFingerEffect:Landroidx/preference/SwitchPreference;

.field public mFingerprintCancel:Landroid/os/CancellationSignal;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mGkPwHandle:J

.field public mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

.field public final mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

.field public mHasEnrolled:Z

.field public mIntent:Landroid/content/Intent;

.field public mIsAfw:Z

.field public mIsBiometricsSettingsDestroy:Z

.field public mIsKnox:Z

.field public mIsRegisteredFromEntry:Z

.field public mIsRunRegister:Z

.field public final mIsSupportFpAlwaysOn:Z

.field public mLaunchedConfirm:Z

.field public mLockConfirmed:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaskViewToken:Landroid/os/IBinder;

.field public mNeedFmmPopup:Z

.field public mPreviousStage:Ljava/lang/String;

.field public mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field public mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mSamsungAccount:Landroidx/preference/SwitchPreference;

.field public mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

.field public mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

.field public mScreenOffIcon:Landroidx/preference/SwitchPreference;

.field public mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

.field public mShowFingerprintIcon:Landroidx/preference/SecPreferenceScreen;

.field public mStayOnLockScreen:Landroidx/preference/SwitchPreference;

.field public mToken:[B

.field public mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mUnificationProfileId:I

.field public mUserId:I

.field public mWebSignIn:Landroidx/preference/SwitchPreference;

.field public through_onpreferencechange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f1423f0

    const v1, 0x7f1423ee

    const v2, 0x7f1423ef

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconOptionSummaryString:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    iput-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsBiometricsSettingsDestroy:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    const/16 v2, -0x2710

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUnificationProfileId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAuthenticationCallback:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;

    return-void
.end method

.method public static setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_samsungaccount_confirmed"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FpstFingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setUseFingerprintForSA(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_used_samsungaccount"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FpstFingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final cancelAndSessionEnd$2()V
    .locals 2

    const-string v0, "cancelAndSessionEnd() "

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->stopFingerprintAuth()V

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    if-nez v0, :cond_0

    const-string v0, "Close the session and finish the activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_0

    :cond_0
    const-string p0, "Keep the session and activity"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final checkMobileKeyboard()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkMobileKeyboard. return : "

    const-string v2, ", isAdded() :"

    invoke-static {v1, v2, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final createPreferenceHierarchy$5()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "FpstFingerprintSettings"

    if-eqz v0, :cond_0

    const-string v4, "createPreferenceHierarchy : remove all"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v0, 0x7f170197

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v4, "com.samsung.android.biometrics.app.setting"

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "device_provisioned"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v6

    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v9, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v9}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    const-string v9, "check_added_fingerprints"

    if-nez v0, :cond_2

    invoke-virtual {v1, v9}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    const-string v10, "key_fingerprint_add"

    invoke-virtual {v1, v10}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAddFingerprint:Landroidx/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iput v2, v0, Landroidx/preference/PreferenceManager;->mStorage:I

    const/4 v11, 0x0

    iput-object v11, v0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "setFingerprintPreference : resources exception = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v11

    :goto_1
    const-string/jumbo v13, "set_screen_lock"

    invoke-virtual {v1, v13}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v2, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricsLockDBValue(Landroid/content/Context;II)V

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v2, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricsLockDBValue(Landroid/content/Context;II)V

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v14}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v14}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    const-string/jumbo v0, "setFingerprintPreference : Screen lock switch disable by MDM!"

    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v14}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    iget v15, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const/16 v7, 0x20

    invoke-static {v14, v7, v15}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    iget v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1423f7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    goto :goto_6

    :cond_7
    invoke-virtual {v1, v13}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_8
    :goto_6
    const-string/jumbo v0, "set_always_on"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreference;

    iput-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz v7, :cond_10

    iget-boolean v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz v7, :cond_f

    if-eqz v8, :cond_9

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    goto/16 :goto_a

    :cond_9
    if-eqz v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v7, "string"

    if-eqz v0, :cond_b

    const-string/jumbo v0, "sec_fingerprint_always_on_summary_dex"

    invoke-virtual {v12, v0, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    const-string/jumbo v0, "sec_fingerprint_always_on_summary"

    invoke-virtual {v12, v0, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_a

    :cond_e
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_a

    :cond_f
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    :cond_10
    :goto_a
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    const-string/jumbo v0, "set_always_on_type"

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "stay_on_lock_screen"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_12

    iget-boolean v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-nez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    :cond_11
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    :cond_12
    const-string/jumbo v0, "screen_off_icon_aod"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SecDropDownPreference;

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v8, :cond_13

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    goto/16 :goto_c

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v0

    const-string v4, "iconOptionType : "

    invoke-static {v0, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    const/4 v7, 0x3

    new-array v12, v7, [Ljava/lang/CharSequence;

    const v13, 0x7f1423eb

    invoke-virtual {v1, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const v13, 0x7f1423ed

    invoke-virtual {v1, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    const v13, 0x7f1423ec

    invoke-virtual {v1, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-virtual {v4, v12}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v14

    iput-object v7, v4, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    sget-object v7, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconOptionSummaryString:[I

    aget v7, v7, v0

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    sub-int/2addr v14, v0

    invoke-virtual {v4, v14}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz v6, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/4 v4, 0x0

    goto :goto_b

    :cond_15
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto :goto_c

    :goto_b
    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto :goto_c

    :cond_16
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    :cond_17
    :goto_c
    const-string/jumbo v0, "screen_off_icon"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_18

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    :cond_18
    const-string/jumbo v0, "show_fingerprint_icon"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SecPreferenceScreen;

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mShowFingerprintIcon:Landroidx/preference/SecPreferenceScreen;

    if-eqz v4, :cond_19

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mShowFingerprintIcon:Landroidx/preference/SecPreferenceScreen;

    :cond_19
    const-string/jumbo v0, "support_web_signin"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v7, "com.sec.android.app.sbrowser"

    invoke-static {v4, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-boolean v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v4, :cond_1d

    iget-boolean v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v4, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "fingerprint_webpass"

    const/4 v12, 0x0

    invoke-static {v4, v7, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v2

    goto :goto_d

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "getFingerprintVerification :"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move v0, v2

    goto :goto_10

    :cond_1d
    :goto_f
    const-string/jumbo v4, "setFingerprintPreference : Remove Web Sign-In"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1e
    const/4 v0, 0x0

    :goto_10
    const-string/jumbo v4, "support_samsung_account"

    invoke-virtual {v1, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreference;

    iput-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    if-eqz v7, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-string v12, "com.osp.app.signin"

    invoke-static {v7, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/security/SecurityUtils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_24

    :cond_1f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_24

    iget-boolean v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v7, :cond_24

    iget-boolean v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-nez v7, :cond_24

    sget-boolean v7, Lcom/samsung/android/settings/Rune;->SUPPORT_DISABLE_ACCOUNTS_SETTINGS:Z

    if-eqz v7, :cond_20

    goto :goto_15

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v0

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setFingerprintPreference : Samsung Account  isSAVerified : "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , isSASignedIn : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_21

    if-eqz v4, :cond_21

    move v12, v2

    goto :goto_11

    :cond_21
    const/4 v12, 0x0

    :goto_11
    invoke-static {v7, v12}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_22

    if-eqz v4, :cond_22

    move v12, v2

    goto :goto_12

    :cond_22
    const/4 v12, 0x0

    :goto_12
    invoke-static {v7, v12}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_23

    if-eqz v4, :cond_23

    move v0, v2

    goto :goto_13

    :cond_23
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v7, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    move v0, v2

    goto :goto_16

    :cond_24
    :goto_15
    const-string/jumbo v7, "setFingerprintPreference : Remove Samsung Account"

    invoke-static {v3, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    :cond_25
    :goto_16
    const-string v4, "fast_recognition"

    invoke-virtual {v1, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreference;

    iput-object v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    if-eqz v7, :cond_26

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()V

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v4, "security_option"

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    :cond_26
    if-nez v0, :cond_27

    const-string/jumbo v0, "setFingerprintPreference : No supported application"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inset_application"

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_27
    if-eq v5, v2, :cond_28

    const-string/jumbo v0, "setFingerprintPreference : SUW Remove reigster category"

    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v1, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_28
    const-string v0, "fingerprint_effect"

    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_2c

    if-nez v8, :cond_2b

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_17

    :cond_29
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_18

    :cond_2a
    :goto_17
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_18

    :cond_2b
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    :cond_2c
    :goto_18
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string v0, "key_fingerprint_icon_and_animation_style"

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v0, :cond_2d

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    :cond_2d
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_33

    if-eqz v0, :cond_33

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v4, 0x0

    :goto_19
    iget v5, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v4, v5, :cond_2f

    move v5, v4

    :goto_1a
    if-lez v5, :cond_2e

    iget-object v6, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    iget-object v8, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    if-le v6, v8, :cond_2e

    iget-object v6, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    :cond_2e
    add-int/2addr v4, v2

    goto :goto_19

    :cond_2f
    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v5, v4, :cond_30

    const-string v4, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_30

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v6, "]"

    invoke-static {v4, v5, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_32

    const/4 v4, 0x0

    :goto_1b
    iget v5, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v4, v5, :cond_31

    iget-object v5, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addFingerprintItemPreferences : fid["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], Name["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], Gid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v2

    goto :goto_1b

    :cond_31
    const/4 v7, 0x0

    :goto_1c
    iget v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v7, v4, :cond_34

    iget-object v4, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "key_fingerprint_item_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v4, v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    const v4, 0x7f0d08b1

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v5}, Landroidx/preference/Preference;->setPersistent()V

    const v4, 0x7f080847

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b00a4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/2addr v7, v2

    goto :goto_1c

    :cond_32
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v0, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_33
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v0, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_1d
    iget v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result v2

    if-lt v0, v2, :cond_35

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAddFingerprint:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_35

    invoke-virtual {v1, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "updateAddPreference : Remove mAddFingerprint"

    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final finishFingerprintSettings()V
    .locals 5

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "finishFingerprintSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsBiometricsSettingsDestroy:Z

    if-eqz v0, :cond_2

    const-string v0, "lock_screen_fingerprint_menu"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "screen_lock_force_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getFingerprintSamsungAccountVerification()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_used_samsungaccount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getFingerprintSamsungAccountVerification :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpstFingerprintSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2016

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170197

    return p0
.end method

.method public final getReasonIsCancelSession(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cancelsession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsBiometricsSettingsDestroy:Z

    return p1
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_lockscreen"

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    const-string v5, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    const-string v6, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    const-string v7, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    const-string/jumbo v8, "onActivityResult : "

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "==onActivityResult requestCode : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " resultCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FpstFingerprintSettings"

    invoke-static {v10, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    sput-boolean v9, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    const-string v11, "biometrics_settings_destroy"

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_3

    invoke-static/range {p3 .. p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "gk_pw_handle"

    invoke-virtual {v3, v14, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-eqz v16, :cond_0

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIntent:Landroid/content/Intent;

    iput-wide v14, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "GkPwHandle : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v12, "hw_auth_token"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    if-eqz v12, :cond_2

    iput-object v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    const-string v12, "challenge"

    iget-wide v13, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {v3, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    :cond_2
    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsBiometricsSettingsDestroy:Z

    if-eqz v12, :cond_3

    const-string/jumbo v1, "onActivityResult: Finish Settings"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    return-void

    :cond_3
    const/16 v12, 0x65

    const-string v13, "fingerprint_used_samsungaccount"

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-eq v1, v12, :cond_18

    const/16 v4, 0x66

    if-eq v1, v4, :cond_13

    const/16 v5, 0xc9

    if-eq v1, v5, :cond_11

    const/16 v5, 0x7d0

    if-eq v1, v5, :cond_10

    const-string v5, "fingerprint_settings_set_screen_lock"

    const/16 v6, 0xbb9

    if-eq v1, v6, :cond_f

    const/16 v6, 0x3e8

    if-eq v1, v6, :cond_4

    const/16 v6, 0x3e9

    if-eq v1, v6, :cond_4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v1, "Show fingerprint icon finished!"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getReasonIsCancelSession(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    goto/16 :goto_3

    :pswitch_1
    const-string v1, "Fingerprint always on finished!"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getReasonIsCancelSession(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    goto/16 :goto_3

    :pswitch_2
    const-string v1, "activity. FINGERPRINT_RENAME_REQUEST"

    invoke-static {v10, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getReasonIsCancelSession(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "Biometrics disclaimer finished!"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_4
    const-string v1, "activity. FINGERPRINT_MULTI_SELECT"

    invoke-static {v10, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getReasonIsCancelSession(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    goto/16 :goto_3

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "onActivityResult: Finish Fingerprint Settings"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    return-void

    :cond_5
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "reset runRegister"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    :cond_6
    if-eq v2, v14, :cond_a

    if-ne v2, v15, :cond_7

    goto :goto_0

    :cond_7
    if-nez v2, :cond_9

    if-eqz v3, :cond_8

    const-string v1, "enrollResult"

    invoke-virtual {v3, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v15, :cond_8

    sput-boolean v9, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    return-void

    :cond_8
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHasEnrolled:Z

    if-nez v1, :cond_1c

    const-string v1, "lock_screen_fingerprint_menu"

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v9, v3}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_3

    :cond_9
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_1c

    :try_start_0
    const-string v1, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v10, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_a
    :goto_0
    iput-boolean v15, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHasEnrolled:Z

    if-eqz v3, :cond_b

    :try_start_1
    const-string/jumbo v1, "previousStage"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    const-string/jumbo v2, "support_web_signin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "previos stage is WebSingin"

    invoke-static {v10, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_d
    const-string/jumbo v2, "support_samsung_account"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "Is_From_SA_Verify"

    const-string/jumbo v3, "s5d189ajvs"

    const-string v5, "client_id"

    if-eqz v1, :cond_e

    :try_start_2
    const-string v1, "SamsungAccountSignedIn is TRUE."

    invoke-static {v10, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "client_secret"

    const-string v4, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_e
    const-string v1, "SamsungAccountSignedIn is FALSE."

    invoke-static {v10, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "mypackage"

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "OSP_VER"

    const-string v7, "OSP_02"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "MODE"

    const-string v5, "ADD_ACCOUNT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    const-string v0, "data is null!!"

    invoke-static {v10, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v1, "onActivityResult : KNOX_CHOOSE_LOCK_GENERIC_REQUEST"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v15}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_10
    const-string v0, "FMM Dialog finished!"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    iput-boolean v9, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    if-ne v2, v14, :cond_12

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    const-string/jumbo v1, "onActivityResult : CONFIRM_REQUEST"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v15, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    invoke-virtual {v0, v15}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->requestToken$1()V

    goto/16 :goto_3

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_3

    :cond_13
    if-eq v2, v14, :cond_16

    if-ne v2, v15, :cond_14

    goto :goto_2

    :cond_14
    :try_start_3
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v13, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_15

    move v9, v15

    :cond_15
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_16
    :goto_2
    :try_start_4
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v13, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_17

    move v9, v15

    :cond_17
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_18
    if-ne v2, v14, :cond_1a

    :try_start_5
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v13, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_19

    move v9, v15

    :cond_19
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1a
    :try_start_6
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v13, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_1b

    move v9, v15

    :cond_1b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isBlockedInMultiWindowMode(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f142127

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f140646

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, -0x2710

    const-string v5, "challenge"

    const-string v6, "hw_auth_token"

    const/4 v7, 0x0

    const-string v8, "gk_pw_handle"

    if-eqz v1, :cond_2

    const-string/jumbo v9, "previousStage"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    const-string v9, "fingerprint_registered_from_fingerprint"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    const-string v9, "isAfw"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string v9, "is_knox"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    const-string v9, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const-string/jumbo v9, "need_fmm_popup"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mIsAfw : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mIsKnox : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mIsRegisteredFromEntry : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mUserId : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GkPwHandle : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mNeedFmmPopup : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_1

    iput-object v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    iget-wide v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {v1, v5, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    :cond_1
    const-string/jumbo v9, "unification_profile_credential"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v9, "unification_profile_id"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUnificationProfileId:I

    goto :goto_0

    :cond_2
    const-string v1, "args is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    iget-wide v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {p1, v5, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {p1, v8, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    const-string/jumbo v1, "waitingForLockConfirm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    const-string v1, "lock_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "fingerprint"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const v1, 0x7f1423d8

    const/4 v5, 0x1

    if-nez p1, :cond_4

    const-string p1, "FingerprintManager is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semIsTemplateDbCorrupted()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Finger DB is Corrupted - Remove all fingerprints."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void

    :cond_5
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHasEnrolled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->createPreferenceHierarchy$5()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHasEnrolled:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-nez v0, :cond_b

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Z)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_1

    :cond_6
    const-string p1, "fingerprint_settings_set_screen_lock"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister$1(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-wide v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    cmp-long p1, v8, v2

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    if-nez p1, :cond_a

    const-string p1, "Launch ConfirmLock"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    sput-boolean v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0xc9

    iput v1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iput-boolean v5, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v5, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v5, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    if-eq v1, v4, :cond_8

    iput v1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_8
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v5, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    :cond_9
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    if-nez p1, :cond_b

    const-string p1, "Launch ConfirmLock - Fail"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    sput-boolean v7, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->requestToken$1()V

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    :cond_b
    :goto_1
    return-void

    :cond_c
    const-string p1, "Fingerprint hardware is not detected."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1423dd

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 5

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v2, :cond_1

    const-string v2, "lock_screen_fingerprint_menu"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "onDestroy: remove GatekeeperPasswordHandle"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->removeGatekeeperPasswordHandle(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_guide_shown"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    sget-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string/jumbo v3, "setFingerprintSettingsCreateValue : false"

    const-string v4, "FpstFingerprintSettingsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_settings_create"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2016

    const/16 v2, 0x2017

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd$2()V

    :cond_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    const-string v1, "==onPreferenceChange : "

    const-string v2, "FpstFingerprintSettings"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "support_web_signin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    const/16 v5, 0x2016

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2021

    invoke-static {v5, v1, v3, v4, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v6, :cond_3

    const-string/jumbo p1, "startDisclaimerFromWebSignin"

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister$1(Ljava/lang/String;)V

    :goto_1
    move v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :goto_2
    return v6

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto/16 :goto_8

    :cond_4
    const-string/jumbo v0, "support_samsung_account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x201e

    invoke-static {v5, v0, v3, v4, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result p0

    return p0

    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p0, "SAMSUNGACCOUNT value is false "

    invoke-static {v2, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_6
    const-string/jumbo v0, "set_screen_lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "launchKnoxChooseLock"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getBiometricsChooseLockGenericIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "request_gk_pw_handle"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "for_fingerprint"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "hide_insecure_options"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "fingerprint_register_external"

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v6

    const-string/jumbo v0, "set_biometric_lock"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x10000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p2, 0xbb9

    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p0, "Activity Not Found !"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v7

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2020

    invoke-static {v5, v0, v3, v4, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, p0, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    goto/16 :goto_8

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto :goto_5

    :cond_12
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    :cond_13
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_16

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    move v7, v6

    :cond_14
    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    :cond_15
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_16
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mShowFingerprintIcon:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_17
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_18
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_23

    invoke-virtual {p0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_19
    const-string p1, "Launch the FingerprintLockSettings"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "fingerprint_settings_set_screen_lock"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister$1(Ljava/lang/String;)V

    return v7

    :cond_1a
    const-string/jumbo v0, "set_always_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2047

    invoke-static {v5, v0, v3, v4, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto/16 :goto_8

    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_23

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_1c
    const-string/jumbo v0, "stay_on_lock_screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setStayOnLockScreen(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2063

    invoke-static {v5, p1, v3, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto/16 :goto_8

    :cond_1d
    const-string/jumbo v0, "screen_off_icon_aod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mScreenOffIconAod :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 p2, p1, 0x2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    sget-object v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconOptionSummaryString:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2054

    invoke-static {v5, p1, v3, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto/16 :goto_8

    :cond_1e
    const-string/jumbo v0, "screen_off_icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FpstFingerprintSettingsUtils"

    if-eqz v0, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    sget-boolean p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string/jumbo p1, "setFingerprintScreenOffIconValue: not supported device"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2049

    invoke-static {v5, p1, v3, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto/16 :goto_8

    :cond_1f
    const-string v0, "fast_recognition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()V

    const-string/jumbo p1, "setFingerprintFastRecognition: not ultrasonic display fingerprint sensor device"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_7

    :cond_20
    const/4 v7, 0x3

    :goto_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x204a

    invoke-static {v5, p1, v3, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_8

    :cond_21
    const-string v0, "fingerprint_effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintEffectValue(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2058

    invoke-static {v5, p1, v3, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_8

    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unknown key:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_8
    return v6
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==onPreferenceTreeClick : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSwitchPreference;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    if-eqz v0, :cond_0

    const-string/jumbo p0, "onPreferenceTreeClick : Other preferece already clicked"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "onPreferenceTreeClick : SwitchPreference tree clicked!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    instance-of v4, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    const-string v5, "android.intent.extra.USER_ID"

    const/16 v6, 0x2016

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x201a

    invoke-static {v0, v6, v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x201b

    invoke-static {v0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ne v4, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startRenameFingerprint : fId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "selected_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "isAfw"

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "key_fingerprint_add"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "show_fingerprint_icon"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    const-string v7, "key_fingerprint_icon_and_animation_style"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "set_always_on_type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "check_added_fingerprints"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "key_fingerprint_about_fingerprints"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move v4, v3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v7, "support_samsung_account"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    move v4, v2

    :goto_1
    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->stopFingerprintAuth()V

    const-string p1, "FingerprintSettings_register"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister$1(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x201c

    invoke-static {p0, v6, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    goto/16 :goto_3

    :pswitch_1
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 v2, 0x3f3

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 v0, 0x2060

    iput v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_2
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_3
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 v2, 0x3f2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 v0, 0x205d

    iput v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_4
    const-string p1, "FingerprintSettingsUtils.KEY_CHECK_ADDED_FINGERPRINTS clicked"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2048

    invoke-static {p1, v6, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v0, 0x7f1423c5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v0, 0x7f140fb1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p1, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p1, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v0, 0x7f142126

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    sget-boolean p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAuthenticationCallback:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    goto :goto_3

    :cond_d
    :goto_2
    const-string/jumbo p0, "registerAuthenticate : Skip"

    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2050

    invoke-static {p1, v6, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const-string/jumbo p1, "startBiometricsDisclaimer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "BIOMETRICS_LOCK_TYPE"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "fromSettingsOption"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3f0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo p0, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result p0

    return p0

    :cond_e
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    :goto_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77be5188 -> :sswitch_6
        -0x2b0a764 -> :sswitch_5
        0xa985185 -> :sswitch_4
        0x309be8e7 -> :sswitch_3
        0x58e46ee3 -> :sswitch_2
        0x5c803bf6 -> :sswitch_1
        0x7b32d4e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isEnabledBiometricsMenuInDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DesktopMode or MultiWindowMode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->createPreferenceHierarchy$5()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v1, :cond_a

    new-instance v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    const/16 v4, 0x2016

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v5, "com.samsung.android.samsungpass"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v6, "8221"

    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v4, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v1, 0x7f141295

    iput v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-boolean v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string v5, "FpstFingerprintSettingsUtils"

    if-nez v1, :cond_6

    const-string v1, "isFingerprintSupportSamsungPay : context is null"

    invoke-static {v5, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    const-string v6, "com.samsung.android.spay"

    invoke-static {v1, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_7

    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const-string v7, "com.samsung.android.spay.is_stub"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_0
    move v7, v3

    goto :goto_2

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get information of SamsungPay, NameNotFound : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    move v7, v1

    :goto_2
    const-string v8, "isFingerprintSupportSamsungPay MeataData : "

    const-string v9, ", Package : "

    invoke-static {v8, v1, v9, v7, v5}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_a

    if-eqz v7, :cond_a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v6, "8223"

    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v4, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "GET_global"

    const-string/jumbo v7, "samsungwallet_open_quickaccess"

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "wallet_app_status"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v1, v3, :cond_9

    const v1, 0x7f142409

    goto :goto_3

    :catch_1
    :cond_9
    const v1, 0x7f141299

    :goto_3
    iput v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_c

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEmptyView:Landroid/view/View;

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEmptyView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    xor-int/2addr v3, v5

    invoke-static {v1, v4, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->hideMenuList(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    if-eqz v1, :cond_d

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    const-string/jumbo v1, "startFmmBackupPasswordPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v3, 0x7d0

    :try_start_2
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v3, "Exception occured!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_6
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "challenge"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "gk_pw_handle"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "waitingForLockConfirm"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lock_confirmed"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final requestToken$1()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v0

    const v2, 0x186c8

    if-eq v0, v2, :cond_2

    const v2, 0x186c9

    if-eq v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fingerprint sensor status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FpstFingerprintSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1423dd

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1423d8

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x186ce

    const v5, 0x7f1423db

    if-ne v0, v4, :cond_0

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1423d3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v1, 0x186cd

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1423d2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-nez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    :cond_3
    return-void
.end method

.method public final runRegister$1(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    const-string v1, "FpstFingerprintSettings"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "fingerIndex"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz p1, :cond_2

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "challenge"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUnificationProfileId:I

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_3

    const-string/jumbo v2, "unification_profile_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "unification_profile_credential"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "runRegister already called : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "runRegister called : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :try_start_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez p1, :cond_5

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_5
    const/16 p1, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string/jumbo p0, "runRegister : reset mIsPreferenceClicked value"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    return-void
.end method

.method public final setEnableScreenOffIcon(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    const v0, 0x7f142118

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final setFingerprintVerification(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_webpass"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setFingerprintVerification: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FpstFingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final showMobileKeyboardToastMsg()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1423ba

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1423e2

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final startActivityForResultWrapper$1(ILandroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivityForResultWrapper:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_knox"

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p0, "startActivityForResultWrapper : reset mIsPreferenceClicked value"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    :goto_0
    return-void
.end method

.method public final startDisclaimerFromSamsungAccount()Z
    .locals 8

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startDisclaimerFromSamsungAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "support_samsung_account"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister$1(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Is_From_SA_Verify"

    const-string/jumbo v3, "s5d189ajvs"

    const-string v4, "client_id"

    const-string v5, "com.osp.app.signin"

    const-string v6, "SamsungAccountSignedIn is TRUE."

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v3, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "mypackage"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v5, "OSP_02"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v3, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper$1(ILandroid/content/Intent;)V

    :goto_1
    return v7
.end method

.method public final stopFingerprintAuth()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v2, "stopFingerprintAuth cancel()"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    :cond_1
    return-void
.end method
