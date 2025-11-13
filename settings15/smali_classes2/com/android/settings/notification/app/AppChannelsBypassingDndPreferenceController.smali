.class public final Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final KEY:Ljava/lang/String; = "zen_mode_bypassing_app_channels_list"


# instance fields
.field public mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

.field public mChannelGroupNames:Ljava/util/Map;

.field public mChannels:Ljava/util/List;

.field public mDuplicateChannelNames:Ljava/util/Set;

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# virtual methods
.method public final areAllChannelsBypassing()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotification(Landroid/app/NotificationChannel;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotification(Landroid/app/NotificationChannel;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/2addr v3, v4

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    const-string v0, "zen_mode_bypassing_app_channels_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v0, 0x7f143856

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v1, v1, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$1;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_bypassing_app_channels_list"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showNotification(Landroid/app/NotificationChannel;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
