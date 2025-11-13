.class public final Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncDataPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_sync_personal_account_data"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->removeDualAppManagedProfiles(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Landroidx/preference/SecSwitchPreference;

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

    const p0, 0x7f140514

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f14023b

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    :goto_0
    return-void
.end method
