.class public Lcom/android/settings/notification/app/BlockPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;


# direct methods
.method public static synthetic $r8$lambda$u5VRgxIZW7JTWDHAZVENN4XiBjA(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/app/BlockPreferenceController;->lambda$updateState$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/notification/app/BlockPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method

.method private static synthetic lambda$updateState$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "block"

    return-object p0
.end method

.method getSwitchBarText()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_content_block_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/app/BlockPreferenceController;->isIncludedInFilter()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method isIncludedInFilter()Z
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    const-string v0, "importance"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 9

    const/4 p1, 0x1

    xor-int/2addr p2, p1

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/AppUtils;->isDeepSleepingEnable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 153
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 154
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 155
    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 156
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->cancelDisablePolicy(Landroid/content/pm/ApplicationInfo;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_app_notification_deep_sleeping_toast_text:I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    aput-object v4, p1, v1

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const v0, 0x8cb8

    const-string v2, ";on"

    const-string v3, ";off"

    const-string/jumbo v4, "turnOnOff"

    const-string v5, "from"

    if-eqz p1, :cond_7

    .line 160
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p2, :cond_1

    if-nez p1, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v1, -0x3e8

    goto :goto_0

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 170
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    .line 173
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v6, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p1, v6, v1}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 174
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eq v1, p2, :cond_5

    .line 175
    iput-boolean p2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 176
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    xor-int/lit8 v7, p2, 0x1

    invoke-virtual {v1, v6, p1, v7}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 180
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel settings"

    .line 181
    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NSTE0021"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 186
    :cond_7
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_3

    .line 189
    :cond_8
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p1, :cond_a

    .line 190
    iget-boolean v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 191
    iput-boolean p2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 192
    iget-object v6, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v7, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    xor-int/lit8 v8, p2, 0x1

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    if-eq v1, p2, :cond_a

    .line 194
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel list"

    .line 195
    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NSTE0005"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/android/settings/notification/app/BlockPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 87
    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz p1, :cond_a

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/app/BlockPreferenceController;->getSwitchBarText()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->show()V

    .line 93
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/AppUtils;->isDeepSleepingEnable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setSwitchBarEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setSwitchBarEnabled(Z)V

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setSwitchBarEnabled(Z)V

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->packageBlockable:Z

    if-nez v3, :cond_4

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v2, :cond_4

    .line 117
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setSwitchBarEnabled(Z)V

    .line 126
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_6

    .line 127
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v3, :cond_5

    .line 128
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    .line 127
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 129
    :cond_6
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_8

    .line 130
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 132
    :cond_8
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    .line 136
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 137
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x20

    if-le v0, v2, :cond_a

    .line 138
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/notification/app/BlockPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/app/BlockPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    .line 139
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 140
    :cond_9
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "PrefControllerMixin"

    const-string v0, "Exception"

    .line 144
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    return-void
.end method
