.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public mButtonCoverMainScreens:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mButtonCoverScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mButtonMainScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mButtonOff:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mIsFromUsefulFeature:Z

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelAndSessionEnd()V
    .locals 3

    const-string v0, "FpstFingerprintAlwaysOnSettings"

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

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mIsFromUsefulFeature:Z

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

    const/16 p0, 0x205d

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "onCreate()"

    const-string v0, "FpstFingerprintAlwaysOnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f170198

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mUserId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mUserId:I

    const-string v1, "fingerprint_useful_feature"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mIsFromUsefulFeature:Z

    :cond_0
    const-string p1, "com.samsung.android.biometrics.app.setting"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "sec_fingerprint_always_on_summary"

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "summary"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initPreference : resources exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "button_off"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonOff:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string p1, "button_cover_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonCoverScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string p1, "button_main_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonMainScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string p1, "button_cover_main_screens"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonCoverMainScreens:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1423d0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintAlwaysOnSettings"

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRadioButtonClicked : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FpstFingerprintAlwaysOnSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "button_cover_screen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "button_main_screen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "button_cover_main_screens"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    move v0, v2

    goto :goto_1

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnTypeValue(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->updatePreference$9()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3b2d194a -> :sswitch_2
        0x24bfd025 -> :sswitch_1
        0x2a5821e1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintAlwaysOnSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->updatePreference$9()V

    return-void
.end method

.method public final updatePreference$9()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonOff:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonCoverScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonMainScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonCoverMainScreens:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mUserId:I

    sget-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_always_on_type"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const-string v8, "FpstFingerprintSettingsUtils"

    if-ne v3, v5, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "fingerprint_always_on"

    invoke-static {v3, v9, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const-string v9, "getFingerprintAlwaysOnDbValue : "

    invoke-static {v3, v9, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v9, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    if-ne v3, v5, :cond_1

    if-eqz v9, :cond_0

    :goto_0
    move v1, v6

    goto :goto_1

    :cond_0
    move v1, v7

    goto :goto_1

    :cond_1
    if-ne v3, v4, :cond_2

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnTypeValue(Landroid/content/Context;II)V

    move v3, v1

    :cond_3
    const-string v0, "Get Fingerprint Always On Type : "

    invoke-static {v3, v0, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonCoverMainScreens:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonMainScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonCoverScreen:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintAlwaysOnSettings;->mButtonOff:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    return-void
.end method
