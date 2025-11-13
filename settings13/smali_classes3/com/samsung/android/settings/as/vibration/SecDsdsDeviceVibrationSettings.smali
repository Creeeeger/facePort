.class public Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecDsdsDeviceVibrationSettings.java"


# instance fields
.field private mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

.field private mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

.field private mFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private isRingtoneHasHaptic(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 p1, 0x80

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 150
    invoke-static {p0}, Landroid/media/RingtoneManager;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDeviceVibrationSummary()V
    .locals 15

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    if-ge v12, v9, :cond_4

    if-nez v12, :cond_0

    const-string v1, "ringtone_vibration_sep_index"

    const-string v2, "sync_vibration_with_ringtone"

    goto :goto_1

    :cond_0
    const-string v1, "ringtone_vibration_sep_index_2"

    const-string v2, "sync_vibration_with_ringtone_2"

    :goto_1
    move-object v14, v2

    const v2, 0xc373

    .line 110
    invoke-static {v7, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 113
    :try_start_0
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "vibration_pattern=?"

    new-array v5, v13, [Ljava/lang/String;

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    move-object v1, v7

    .line 113
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 115
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "vibration_name"

    .line 116
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 118
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 113
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :cond_2
    :goto_4
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_3

    .line 126
    invoke-static {v7, v14, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v13, :cond_3

    .line 127
    invoke-direct {p0, v12}, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->isRingtoneHasHaptic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_sync_with_ringtone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v12

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_5

    aget-object v1, v10, v11

    .line 134
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    if-eqz p0, :cond_6

    aget-object v0, v10, v13

    .line 137
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecDSDeviceVibrationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfac

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 48
    sget p0, Lcom/android/settings/R$xml;->as_dual_device_vibration_pattern_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    const-string v0, "call_vibration"

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p1, "call_vibration_2"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "from"

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mFrom:Ljava/lang/String;

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->getDeviceVibrationSummary()V

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->configureActionBar()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibrationPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 178
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vibration_type"

    .line 179
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mFrom:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "from"

    .line 181
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "com.android.settings"

    const-string v3, "com.samsung.android.settings.as.vibration.VibPickerActivity"

    .line 183
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->mCallVibration2Preference:Landroidx/preference/SecPreferenceScreen;

    if-ne p1, v1, :cond_3

    const-string p1, "dual_sim_enabled"

    .line 185
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SecDSDeviceVibrationSettings"

    const-string v1, "No Activity found to handle Intent"

    .line 189
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public onResume()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->updateState(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;->getDeviceVibrationSummary()V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
