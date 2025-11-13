.class public Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EmergencyBroadcastPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mEmeregencyAlerts:Landroidx/preference/Preference;

.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPrefKey:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p3, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    const-string/jumbo p2, "user"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V

    return-void
.end method

.method private isCellBroadcastAppLinkEnabled()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110114

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {v2}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mEmeregencyAlerts:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "com.google.android.cellbroadcastreceiver"

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->getInstallPackage(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.android.cellbroadcastreceiver.CellBroadcastSettings"

    const-string v2, "android.intent.action.MAIN"

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mEmeregencyAlerts:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.cellbroadcastreceiver.module"

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mEmeregencyAlerts:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public getInstallPackage(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PrefControllerMixin"

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 99
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string/jumbo p0, "no package "

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 121
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x743

    const p1, 0xe870

    .line 122
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->isCellBroadcastAppLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_config_cell_broadcasts"

    .line 137
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 111
    instance-of p0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez p0, :cond_0

    return-void

    .line 114
    :cond_0
    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo p0, "no_config_cell_broadcasts"

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    return-void
.end method
