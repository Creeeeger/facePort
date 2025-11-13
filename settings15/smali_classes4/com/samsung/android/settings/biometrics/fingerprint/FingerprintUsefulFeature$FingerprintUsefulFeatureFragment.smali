.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintUsefulFeatureFragment"
.end annotation


# static fields
.field public static mIsAlwaysOnSetting:Z

.field public static mIsFinished:Z

.field public static mIsShowIconSetting:Z


# instance fields
.field public mAlwaysOn:Landroidx/preference/SwitchPreference;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field public mFingerEffect:Landroidx/preference/SwitchPreference;

.field public mFingerUnlock:Landroidx/preference/SwitchPreference;

.field public mGkPwHandle:J

.field public mIsFingerUnlockOn:Z

.field public mPreviousStage:Ljava/lang/String;

.field public mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

.field public mStayOnLockScreen:Landroidx/preference/SwitchPreference;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    return-void
.end method


# virtual methods
.method public final finishFingerprintUsefulFeature(I)V
    .locals 2

    const-string v0, "FpstFingerprintUsefulFeature"

    const-string v1, "finishFingerprintsUsefulFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFinished:Z

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

    const-string v2, "FpstFingerprintUsefulFeature"

    if-nez v0, :cond_0

    const-string p1, "intent is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->finishFingerprintUsefulFeature(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    const-string v3, "gk_pw_handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mGkPwHandle:J

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mPreviousStage:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "unlock_state"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    goto :goto_0

    :cond_1
    const-string p1, "fingerprint_register_external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "User ID : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f14240e

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->finishFingerprintUsefulFeature(I)V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 8

    const-string v0, "FpstFingerprintUsefulFeature"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sendFingerprintFeatureLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerUnlock:Landroidx/preference/SwitchPreference;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "0"

    const-string v3, "1"

    const-wide/16 v4, 0x0

    const/16 v6, 0x205e

    if-eqz v1, :cond_1

    :try_start_1
    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/16 v7, 0x2020

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const/16 v7, 0x2047

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const/16 v7, 0x2063

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    const/16 v7, 0x2054

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintLockIconValue(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2061

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerEffect:Landroidx/preference/SwitchPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_6

    move-object v2, v3

    :cond_6
    const/16 v1, 0x2058

    invoke-static {v6, v1, v4, v5, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    const-string/jumbo v2, "sendFingerprintsFeatureLogging: error fail to send  SA logging"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_5
    const-string/jumbo v1, "setFinishValue : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFinished:Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPause : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFinished:Z

    const-string v2, "FpstFingerprintUsefulFeature"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsAlwaysOnSetting:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsShowIconSetting:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->finishFingerprintUsefulFeature(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsShowIconSetting:Z

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsAlwaysOnSetting:Z

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    const-string v1, "==onPreferenceChange : "

    const-string v2, "FpstFingerprintUsefulFeature"

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
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, p2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, p2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_b

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, v2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setStayOnLockScreen(Landroid/content/Context;IZ)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string p0, "FpstFingerprintSettingsUtils"

    const-string/jumbo p1, "setFingerprintScreenOffIconValue: not supported device"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p2, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p2, v2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {p2, p1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintEffectValue(Landroid/content/Context;IZ)V

    goto :goto_3

    :cond_a
    const-string p0, "Wrong preference"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return v1
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==onPreferenceTreeClick : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set_always_on_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fingerprint_useful_feature"

    const-string v2, "android.intent.extra.USER_ID"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsAlwaysOnSetting:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

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

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "show_fingerprint_icon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsShowIconSetting:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

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

    :cond_1
    return v3
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintUsefulFeature"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v1, 0x7f17019c

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v1, "com.samsung.android.biometrics.app.setting"

    const-string/jumbo v2, "setFingerprintUsefulFeaturePreference"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "fingerprint_useful_description_text"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v4, 0x7f14240b

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v4, 0x7f14240d

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_2
    :goto_0
    const-string/jumbo v2, "set_screen_lock"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerUnlock:Landroidx/preference/SwitchPreference;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v2, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerUnlock:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerUnlock:Landroidx/preference/SwitchPreference;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()V

    const-string/jumbo v2, "set_always_on"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setFingerprintUsefulFeaturePreference : resources exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_5

    const-string/jumbo v6, "sec_fingerprint_always_on_summary"

    const-string/jumbo v7, "string"

    invoke-virtual {v2, v6, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v2, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    const-string/jumbo v1, "set_always_on_type"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v1, "stay_on_lock_screen"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    :cond_7
    const-string/jumbo v1, "screen_off_icon"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v1

    const-string/jumbo v2, "screen_off_icon_aod"

    if-eqz v1, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "iconOptionType : "

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    const v2, 0x7f0300e4

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    iput-object v2, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    iget-object v2, v0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_a
    :goto_4
    const-string/jumbo v0, "show_fingerprint_icon"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "fingerprint_effect"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mFingerEffect:Landroidx/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "key_face_enroll_tip"

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "fingerprint_register_external"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    const/16 v1, 0x100

    iput v1, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mBiometricType:I

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mGkPwHandle:J

    iput-wide v1, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mGkPwHandle:J

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mUserId:I

    iput p0, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mUserId:I

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_5
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "unlock_state"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mIsFingerUnlockOn:Z

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

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;)V

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
