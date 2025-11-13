.class public Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public mAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mLastAllAppsOption:Ljava/lang/String;

.field public mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mSwipeUp:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.DisplaySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d08

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fold_lock_behavior_setting"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLastAllAppsOption:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "sleep_on_fold_key"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLastAllAppsOption:Ljava/lang/String;

    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x1d08

    const/16 v0, 0x1d09

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    const p1, 0x7f1701a2

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "front_screen_apps_preview"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a07d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string/jumbo v0, "sec_front_screen_apps_radio_button_never"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string/jumbo v0, "sec_front_screen_apps_radio_button_always"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string/jumbo v0, "sec_front_screen_apps_radio_button_swipe_up"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSwipeUp:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    if-eqz p1, :cond_2

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->refreshUI$2()V

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSwipeUp:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "selective_stay_awake_key"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "stay_awake_on_fold_key"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "sleep_on_fold_key"

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fold_lock_behavior_setting"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLastAllAppsOption:Ljava/lang/String;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLastAllAppsOption:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->refreshUI$2()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public final refreshUI$2()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLastAllAppsOption:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v0, v3

    goto :goto_2

    :sswitch_0
    const-string/jumbo v0, "selective_stay_awake_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string/jumbo v0, "sleep_on_fold_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "stay_awake_on_fold_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSwipeUp:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAlways:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f5e9c9f -> :sswitch_2
        -0x3834bde7 -> :sswitch_1
        -0x283fe57e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
