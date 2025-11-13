.class public Lcom/samsung/android/settings/biometrics/face/FaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static mIsKeepEnrollSession:Z


# instance fields
.field public final mAlternativeRemovalCallback:Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

.field public mAnchorPreference:Landroidx/preference/Preference;

.field public mBrightenScreen:Landroidx/preference/SwitchPreference;

.field public mChallenge:J

.field public mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

.field public mEmptyView:Landroid/view/View;

.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

.field public mGkPwHandle:J

.field public mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

.field public mHasEnrolled:Z

.field public mIdentifyFace:Z

.field public mIntent:Landroid/content/Intent;

.field public mIsAfw:Z

.field public mIsBiometricsSettingsDestroy:Z

.field public mIsKnox:Z

.field public mIsRemoveAndRegister:Z

.field public mIsRunRegister:Z

.field public mLaunchedConfirm:Z

.field public mLockConfirmed:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNeedFmmPopup:Z

.field public mOpenEyes:Landroidx/preference/SwitchPreference;

.field public mPreviousStage:Ljava/lang/String;

.field public mRecognizeWithMask:Landroidx/preference/SwitchPreference;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public final mRemovalCallback:Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

.field public mSensorId:I

.field public mStayOnLockScreen:Landroidx/preference/SwitchPreference;

.field public mToken:[B

.field public mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mUnificationProfileId:I

.field public mUserId:I

.field public mWallet24Service:Lcom/samsung/android/settings/biometrics/Wallet24Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveAndRegister:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsBiometricsSettingsDestroy:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUnificationProfileId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAlternativeRemovalCallback:Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    return-void
.end method


# virtual methods
.method public final cancelAndSessionEnd$1()V
    .locals 6

    const-string v0, "cancelAndSessionEnd() "

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    if-nez v0, :cond_5

    const-string v0, "Close the session and finish the activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "finishFaceSettings()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mWallet24Service:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mBound:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/Wallet24Service;->unbindService()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mWallet24Service:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-string/jumbo v0, "onDestroy: revokeChallenge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsBiometricsSettingsDestroy:Z

    if-eqz v0, :cond_4

    const-string v0, "lock_screen_face_menu"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_3
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "screen_lock_force_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    :cond_5
    const-string p0, "Keep the session and activity"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public final createPreferenceHierarchy$3()V
    .locals 9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    if-eqz v0, :cond_0

    const-string v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v0, 0x7f170194

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :goto_b0

    const-string v5, "Face recognition"

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_b0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "setFaceSettingsPreference : hasEnrolledFace[true]"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "faceList is null or size is 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    const-string v5, "key_facelock_register"

    goto :goto_2

    :cond_4
    const-string v5, "key_facelock_remove"

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v5

    const-string v6, "key_facelock_remove_alternative"

    const-string v7, "key_facelock_register_alternative"

    if-eqz v5, :cond_7

    if-nez v0, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    move-object v6, v7

    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    const-string v4, "key_facelock_unlock"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    const-string v5, "isFaceScreenLock : "

    invoke-static {v5, v1, v4}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v5, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v5

    if-ne v5, v3, :cond_9

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_8
    :goto_4
    const-string/jumbo v5, "setFaceSettingsPreference : Screen lock switch disable by MDM!"

    invoke-static {v1, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const/16 v8, 0x80

    invoke-static {v6, v8, v7}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    :cond_a
    const-string v5, "key_facelock_stay_on_lock_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    const/4 v7, 0x0

    if-eqz v6, :cond_d

    sget-boolean v6, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v6, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v8}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v3

    goto :goto_7

    :cond_b
    move v4, v2

    :goto_7
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v6, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    :cond_d
    :goto_8
    const-string v4, "key_face_recognize_mask"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v5, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result v5

    if-ne v5, v3, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_9

    :cond_f
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    :cond_10
    :goto_9
    const-string v2, "key_facelock_open_eyes"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v3, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_a

    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v3, v5, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    :cond_12
    :goto_a
    const-string v2, "key_facelock_brighten_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_14

    sget-boolean v4, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v4, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0, v4, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    :cond_14
    :goto_b
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    const-string/jumbo v0, "setFaceSettingsPreference : No supported application"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inset_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method public final deleteFace(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "FcstFaceSettings"

    const-string p1, "There is no face data to remove !!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1423ad

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    const v1, 0x7f1423aa

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1423a5

    const v3, 0x7f1423a9

    goto/16 :goto_1

    :cond_2
    const v3, 0x7f1409d2

    if-eqz p1, :cond_3

    const v1, 0x7f1423a7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1423a8

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mWallet24Service:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    const v4, 0x7f1423af

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mWallet24Service:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mAppList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1423ae

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1423ac

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f14213a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v2

    :cond_5
    move v2, v4

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;ZZ)V

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V

    const-string p1, "Cancel"

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v1, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/app/Dialog;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

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

    const/16 p0, 0x20d0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170194

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_lockscreen"

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "==onActivityResult requestCode : "

    const-string v1, " resultCode : "

    const-string v2, "FcstFaceSettings"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    const-wide/16 v3, 0x0

    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gk_pw_handle"

    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIntent:Landroid/content/Intent;

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "GkPwHandle : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-string v1, "challenge"

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {p3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    const-string/jumbo v1, "sensor_id"

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    :cond_2
    const-string v1, "biometrics_settings_destroy"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsBiometricsSettingsDestroy:Z

    if-eqz v1, :cond_3

    const-string/jumbo p1, "onActivityResult: Finish Settings"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd$1()V

    return-void

    :cond_3
    const/16 v1, 0xc9

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq p1, v1, :cond_a

    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p0, "Stay on Lock screen finished!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    const-string p0, "Biometrics disclaimer finished!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    :cond_4
    if-ne p2, v5, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveAndRegister:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    sget-boolean p3, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "face_recognize_mask"

    invoke-static {p1, p3, v6, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mHasEnrolled:Z

    goto :goto_0

    :cond_6
    const-string p1, "Registration fail!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    if-eq p2, p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mHasEnrolled:Z

    if-nez p1, :cond_8

    const-string p1, "lock_screen_face_menu"

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {p0, v0, p3}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd$1()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveAndRegister:Z

    goto :goto_1

    :cond_9
    const-string/jumbo p1, "onActivityResult : KNOX_CHOOSE_LOCK_GENERIC_REQUEST"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p3, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_a
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    if-ne p2, v5, :cond_b

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_b

    const-string/jumbo p1, "onActivityResult : CONFIRM_REQUEST"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->requestToken(Z)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_c
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f140645

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, -0x2710

    const-string/jumbo v3, "sensor_id"

    const-string v4, "challenge"

    const-string v5, "hw_auth_token"

    const-string v6, "gk_pw_handle"

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_3

    const-string/jumbo v9, "previousStage"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    const-string v9, "identifyFace"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    const-string v9, "isAfw"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    const-string v9, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    const-string/jumbo v9, "need_fmm_popup"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mIsAfw : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    const-string v11, "mUserId : "

    invoke-static {v9, v10, v0, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mNeedFmmPopup : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    const-string v11, "GkPwHandle : "

    invoke-static {v9, v10, v0, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_2

    iput-object v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    iget-wide v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {v1, v4, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    invoke-virtual {v1, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    :cond_2
    const-string/jumbo v9, "unification_profile_credential"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v9, "unification_profile_id"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUnificationProfileId:I

    goto :goto_0

    :cond_3
    const-string v1, "args is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    iget-wide v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {p1, v4, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    const-string/jumbo v1, "waitingForLockConfirm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    const-string/jumbo v1, "waitingForRegistration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    const-string v1, "lock_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/samsung/android/settings/biometrics/Wallet24Service;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/biometrics/Wallet24Service;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mWallet24Service:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    new-instance v1, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mHasEnrolled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->createPreferenceHierarchy$3()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mHasEnrolled:Z

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->requestToken(Z)V

    goto :goto_1

    :cond_5
    const-string p1, "FaceSettings_unlock_switch"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    cmp-long v1, v3, v7

    const/4 v3, 0x0

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    if-nez v1, :cond_9

    const-string v1, "Launch ConfirmLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    sput-boolean p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v4, 0xc9

    iput v4, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iput-boolean p1, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean p1, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean p1, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    if-eq v4, v2, :cond_7

    iput v4, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_7
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_8

    iput-boolean p1, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    :cond_8
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    if-nez p1, :cond_a

    const-string p1, "Launch ConfirmLock - Fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    sput-boolean v3, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->requestToken(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    :cond_a
    :goto_1
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
    .locals 3

    const-string v0, "==onDestroy()"

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    :cond_0
    const-string v0, "lock_screen_face_menu"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "onDestroy: remove GatekeeperPasswordHandle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->removeGatekeeperPasswordHandle(J)V

    :cond_2
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

    const/16 v1, 0x20d0

    const/16 v2, 0x20d1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd$1()V

    :cond_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FcstFaceSettings"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-string v6, "0"

    const-string v7, "1"

    const/16 v8, 0x20d0

    const/4 v9, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "launchChooseLock"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getBiometricsChooseLockGenericIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "request_gk_pw_handle"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "for_face"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "hide_insecure_options"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "fromSetupWizard"

    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "face_register_external"

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    const-string/jumbo v0, "set_biometric_lock"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x10000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p2, 0xbb9

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Activity Not Found !"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    if-eqz p2, :cond_1

    move-object v6, v7

    :cond_1
    const/16 p1, 0x20d4

    invoke-static {v8, p1, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    const-string v0, "FaceSettings_unlock_switch"

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_11

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_11

    invoke-virtual {p0, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_4
    if-eqz p2, :cond_11

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    return v9

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    if-eqz p2, :cond_6

    move-object v6, v7

    :cond_6
    const/16 p1, 0x20f5

    invoke-static {v8, p1, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    if-nez p1, :cond_9

    :cond_8
    move p1, v9

    goto :goto_1

    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->semShouldRemoveTemplate()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_a

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace(ZZ)V

    return v9

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "face_recognize_mask"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    if-eqz p2, :cond_b

    move-object v6, v7

    :cond_b
    const/16 p0, 0x2108

    invoke-static {v8, p0, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    if-eqz p2, :cond_d

    move-object v6, v7

    :cond_d
    const/16 p0, 0x20ff

    invoke-static {v8, p0, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    if-eqz p2, :cond_f

    move-object v6, v7

    :cond_f
    const/16 p0, 0x20ee

    invoke-static {v8, p0, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_2

    :cond_10
    const-string p0, "key:"

    invoke-static {p0, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_2
    return v3
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==onPreferenceTreeClick : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20d0

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "key_facelock_register_alternative"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_1
    const-string v6, "key_face_about_face_recognition"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_2
    const-string v6, "key_facelock_remove_alternative"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "key_facelock_remove"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :sswitch_4
    const-string v6, "key_facelock_register"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v2

    :goto_0
    packed-switch v5, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x20fd

    invoke-static {p1, v4, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const-string p1, "FaceSettings_register_alternative"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x20d2

    invoke-static {p1, v4, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

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

    const-string v0, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x100

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "fromSettingsOption"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3e9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo p0, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20fe

    invoke-static {v0, v4, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2101

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace(ZZ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20d3

    invoke-static {v0, v4, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20d6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace(ZZ)V

    goto :goto_1

    :pswitch_4
    const-string p1, "FaceSettings_register"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :goto_1
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x388c4de6 -> :sswitch_4
        -0x16f51245 -> :sswitch_3
        -0x94cd7 -> :sswitch_2
        0x11649189 -> :sswitch_1
        0x55f8e108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "==onResume()"

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isEnabledBiometricsMenuInDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updatePreferences$5()V

    const-string v0, "key_facelock_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "Face recognition"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Unlock your phone using face recognition."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const-string v0, "key_facelock_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "Stay on Lock screen"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Remain on the Lock screen after unlocking with face recognition."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    const-string v0, "key_face_recognize_mask"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "Recognize with mask"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Keep using face recognition while you're wearing a mask."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    const-string v0, "key_facelock_open_eyes"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "Require open eyes"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Face recognition only works when your eyes are open."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    const-string v0, "key_facelock_brighten_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "Brighten screen"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Temporarily increase screen brightness for better recognition."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    const-string v0, "key_facelock_register"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v3, "Add face data"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Register your face so you can unlock with face recognition."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    const-string v0, "key_facelock_remove"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v3, "Remove face data"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Delete the face recognition data stored on this device."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    const-string v0, "key_facelock_register_alternative"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v3, "Add alternative appearance"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Save another look to improve recognition accuracy."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    const-string v0, "key_facelock_remove_alternative"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v3, "Remove alternative appearance"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Delete the additional appearance you registered."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_d
    const-string v0, "key_facelock_advanced_access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v3, "Advanced access control"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Add extra protection for sensitive content."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_e
    const-string v0, "key_facelock_touch_dynamics_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v3, "Touch dynamics"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Use touch dynamics with face recognition for added security."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_f
    const-string v0, "key_face_about_biometrics_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v3, "About Biometrics unlock"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Learn how biometrics protect your data."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_10
    const-string v0, "key_face_about_face_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v3, "About face recognition"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Information about using face recognition on your phone."

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_11
    const-string v0, "inset_face_biometrics_security_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v3, "Face recognition options"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

:cond_12
    const-string v0, "inset_facelock_advanced_access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v3, "Advanced access control"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

:cond_13
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    const-string/jumbo v0, "startFmmBackupPasswordPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v3, 0x7d0

    :try_start_0
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Exception occured!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "challenge"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "sensor_id"

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "gk_pw_handle"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "waitingForLockConfirm"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "waitingForRegistration"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lock_confirmed"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final requestToken(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v1, :cond_0

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    :cond_0
    return-void
.end method

.method public final runRegister(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f140645

    const-string v2, "FcstFaceSettings"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "identifyFace"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUnificationProfileId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "unification_profile_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "unification_profile_credential"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz p1, :cond_1

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "challenge"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p1, "sensor_id"

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "runRegister already called : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    invoke-static {p1, p0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "runRegister called : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/16 p1, 0x3e8

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final startActivityForResultWrapper(ILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivityForResultWrapper:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_knox"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final updatePreferences$5()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->createPreferenceHierarchy$3()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v2, "8420"

    iput-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    const/16 v2, 0x20d0

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v0, 0x7f141295

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mEmptyView:Landroid/view/View;

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mEmptyView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->hideMenuList(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Z)V

    return-void
.end method
