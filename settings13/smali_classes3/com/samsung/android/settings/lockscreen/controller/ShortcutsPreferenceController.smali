.class public Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ShortcutsPreferenceController.java"


# static fields
.field private static final LOCKSCREEN_SHORTCUTS_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ShortcutPreferenceController"


# instance fields
.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isLockScreenDisabled()Z
    .locals 1

    .line 128
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method private setShortcutSummary(Z)V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->sec_lock_settings_menu_disabled_power_saving_mode_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->power_saving_mode:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v0

    .line 138
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v2

    if-eqz p1, :cond_5

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-direct {v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;-><init>()V

    invoke-static {p1, v1, v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    move-result-object p1

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    new-instance v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-direct {v5}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    move-result-object v3

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 146
    iget-object v4, p1, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 148
    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object p1, p1, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 150
    iget-object p1, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v0, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    .line 141
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->isLockScreenDisabled()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.settings.ShortcutSettings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ShortcutPreferenceController"

    const-string v0, "ActivityNotFoundException in ShortcutSettings"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/16 p0, 0x1130

    const/16 p1, 0x1145

    .line 88
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_show_shortcut"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_show_shortcut"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->setShortcutSummary(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updatePreference()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->setShortcutSummary(Z)V

    const/4 v0, 0x2

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v5, "isLockScreenViewAllowed"

    invoke-static {v1, v0, v5, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 115
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
