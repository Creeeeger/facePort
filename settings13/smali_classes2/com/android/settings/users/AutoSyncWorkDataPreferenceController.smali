.class public Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.source "AutoSyncWorkDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    .line 43
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfileWithDisabled(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_sync_work_account_data"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    .line 79
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/account/AccountUtils;->removeDualAppManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/account/AccountUtils;->removeNonKnoxManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSepLiteDevice(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/account/AccountUtils;->isSecureFolderActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    if-nez p0, :cond_4

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 55
    check-cast p1, Landroidx/preference/SecSwitchPreference;

    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget p0, Lcom/android/settings/R$string;->account_settings_menu_auto_sync_securefolder:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 61
    sget p0, Lcom/android/settings/R$string;->account_settings_menu_auto_sync_work:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    :goto_0
    return-void
.end method
