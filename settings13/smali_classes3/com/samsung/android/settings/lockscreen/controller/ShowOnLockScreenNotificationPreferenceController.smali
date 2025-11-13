.class public Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ShowOnLockScreenNotificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenNotifPref"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Lcom/android/settings/RestrictedListPreference;

.field private final mSettingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 59
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 60
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private adminAllowsNotifications()Z
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 2

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getLockscreenSilentNotificationsEnabled()Z
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_silent_notifications"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 167
    invoke-static {p0, p4, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    new-instance p4, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {p4, p2, p3, p0}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 172
    invoke-virtual {p1, p4}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mPreference:Lcom/android/settings/RestrictedListPreference;

    if-eqz p0, :cond_1

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mPreference:Lcom/android/settings/RestrictedListPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->adminAllowsNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->getLockscreenNotificationsEnabled()Z

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->getLockscreenSilentNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_alerting_option:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_all_option:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 143
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 145
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_all_option:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_silent_notifications"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_all_event_logging:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 156
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_alerting_event_logging:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/16 v0, 0x114c

    .line 158
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x117a

    .line 159
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v0, v2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v1
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method setDpm(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->mPreference:Lcom/android/settings/RestrictedListPreference;

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->clearRestrictedItems()V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->lock_screen_notifs_show_all_option:I

    .line 93
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    .line 98
    invoke-direct {p0, v0, v3, v5, v6}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 101
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->lock_screen_notifs_show_alerting_option:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0, v0, v3, v7, v6}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->adminAllowsNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->getLockscreenNotificationsEnabled()Z

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;->getLockscreenSilentNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    .line 127
    invoke-virtual {v0, p0}, Landroidx/preference/SecListPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
