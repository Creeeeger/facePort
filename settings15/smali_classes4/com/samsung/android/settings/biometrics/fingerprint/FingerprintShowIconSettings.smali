.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButtonLockAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

.field public mButtonLockNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

.field public mButtonLockTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

.field public mButtonScreenOffAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

.field public mButtonScreenOffNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

.field public mButtonScreenOffTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

.field public mContext:Landroid/content/Context;

.field public mIsFromUsefulFeature:Z

.field public mPowerManager:Landroid/os/PowerManager;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelAndSessionEnd$5()V
    .locals 3

    const-string v0, "FpstFingerprintShowIconSettings"

    const-string v1, "Cancel session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "reason"

    const-string v2, "cancelsession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final disableScreenOffSetting(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mIsFromUsefulFeature:Z

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-class p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2060

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintShowIconSettings"

    const-string/jumbo v0, "onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    const p1, 0x7f17019b

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "button_lock_always"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    const-string p1, "button_lock_tap"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    const-string p1, "button_lock_never"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p1

    const-string v0, "button_screen_off_always"

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    const-string p1, "button_screen_off_tap"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    const-string p1, "button_screen_off_never"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    :goto_0
    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->disableScreenOffSetting(Z)V

    :cond_1
    new-instance p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->disableScreenOffSetting(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    const-string v1, "fingerprint_useful_feature"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mIsFromUsefulFeature:Z

    :cond_3
    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1423d0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->cancelAndSessionEnd$5()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintShowIconSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->cancelAndSessionEnd$5()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintShowIconSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->updatePreference$10()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dd7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070dd6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070dd9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final updatePreference$10()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintLockIconValue(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonLockNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffAlways:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffTap:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mButtonScreenOffNever:Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_1
    return-void
.end method
