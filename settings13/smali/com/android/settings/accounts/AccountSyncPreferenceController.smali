.class public Lcom/android/settings/accounts/AccountSyncPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountSyncPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mPreference:Landroidx/preference/Preference;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private launchSamsungAccountSyncSetting()V
    .locals 2

    .line 171
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungSyncSettingLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "account_sync"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 73
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "account_sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v0, "com.osp.app.signin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "com.samsung.android.scloud"

    invoke-static {p1, v2, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->launchSamsungAccountSyncSetting()V

    return v0

    .line 82
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    const-string v2, "account"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x8

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->account_sync_title:I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v0
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 123
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method updateSummary(Landroidx/preference/Preference;)V
    .locals 11

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 137
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 141
    array-length v4, v1

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_6

    .line 142
    aget-object v8, v1, v5

    .line 143
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v10, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 147
    invoke-static {v9, v10, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 150
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v8, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    .line 153
    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v9

    xor-int/2addr v9, v3

    if-nez v9, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v6, v2

    move v7, v6

    :cond_6
    if-nez v7, :cond_7

    .line 161
    sget p0, Lcom/android/settings/R$string;->account_sync_summary_all_off:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_7
    if-ne v7, v6, :cond_8

    .line 163
    sget p0, Lcom/android/settings/R$string;->account_sync_summary_all_on:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 165
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->account_sync_summary_some_on:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
