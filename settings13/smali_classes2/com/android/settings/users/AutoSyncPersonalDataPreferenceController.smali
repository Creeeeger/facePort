.class public Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncDataPreferenceController;
.source "AutoSyncPersonalDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    .line 43
    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_sync_personal_account_data"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/account/AccountUtils;->removeDualAppManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 71
    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    if-nez p0, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_0

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    if-nez p0, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 54
    check-cast p1, Landroidx/preference/SecSwitchPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->isSecureFolderActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget p0, Lcom/android/settings/R$string;->account_settings_menu_auto_sync:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 60
    sget p0, Lcom/android/settings/R$string;->account_settings_menu_auto_sync_personal:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    :goto_0
    return-void
.end method
