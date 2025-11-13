.class public Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceUsefulFeatureFragment"
.end annotation


# static fields
.field public static mIsFinished:Z


# instance fields
.field public mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mFaceUnlock:Landroidx/preference/SwitchPreference;

.field public mGkPwHandle:J

.field public mIsFaceUnlockOn:Z

.field public mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

.field public mPreviousStage:Ljava/lang/String;

.field public mRecognizeWithMask:Landroidx/preference/SwitchPreference;

.field public mStayOnLockScreen:Landroidx/preference/SwitchPreference;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    return-void
.end method


# virtual methods
.method public final finishFaceUsefulFeature(I)V
    .locals 2

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "finishFaceUsefulFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FcstFaceUsefulFeature"

    if-nez v0, :cond_0

    const-string p1, "intent is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finishFaceUsefulFeature(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    const-string v3, "gk_pw_handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mGkPwHandle:J

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mPreviousStage:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "unlock_state"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    goto :goto_0

    :cond_1
    const-string p1, "face_register_external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "User ID : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f140645

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finishFaceUsefulFeature(I)V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 8

    const-string v0, "FcstFaceUsefulFeature"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sendFaceFeatureLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFaceUnlock:Landroidx/preference/SwitchPreference;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    const-string v4, "0"

    const-string v5, "1"

    const/16 v6, 0x20e8

    if-eqz v1, :cond_1

    :try_start_1
    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const/16 v7, 0x20d4

    invoke-static {v6, v7, v2, v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_1
    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_2

    move-object v1, v5

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    const/16 v7, 0x20f5

    invoke-static {v6, v7, v2, v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_3

    move-object v1, v5

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    const/16 v7, 0x2108

    invoke-static {v6, v7, v2, v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_4
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    const/16 v7, 0x20ff

    invoke-static {v6, v7, v2, v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_7

    move-object v4, v5

    :cond_7
    const/16 v1, 0x20ee

    invoke-static {v6, v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    const-string/jumbo v2, "sendFaceFeatureLogging: error fail to send  SA logging"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_6
    const-string/jumbo v1, "setFinishValue : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPause : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    const-string v2, "FcstFaceUsefulFeature"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finishFaceUsefulFeature(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "=====onPreferenceChange : "

    const-string v2, " - "

    invoke-static {v1, v0, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFaceUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "face_recognize_mask"

    invoke-static {p1, v0, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_5
    const-string p0, "Wrong preference"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FcstFaceUsefulFeature"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v1, 0x7f170195

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "setFaceUsefulFeaturePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "key_facelock_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFaceUnlock:Landroidx/preference/SwitchPreference;

    const-string v0, "key_facelock_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    const-string v1, "key_face_recognize_mask"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    const-string v2, "key_facelock_open_eyes"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    const-string v3, "key_facelock_brighten_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFaceUnlock:Landroidx/preference/SwitchPreference;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v4, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFaceUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mFaceUnlock:Landroidx/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    invoke-virtual {v4, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_0
    sget-boolean v4, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v4, v6}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v6}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "key_fingerprint_enroll_tip"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "face_register_external"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iput v4, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mBiometricType:I

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mGkPwHandle:J

    iput-wide v1, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mGkPwHandle:J

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    iput p0, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mUserId:I

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_6
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "unlock_state"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFaceUnlockOn:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0a0299

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0810

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a02af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
