.class public final Lcom/android/settings/users/UserCapabilities;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCanAddGuest:Z

.field public mCanAddRestrictedProfile:Z

.field public mCanAddUser:Z

.field public mDisallowAddUser:Z

.field public mDisallowAddUserSetByAdmin:Z

.field public mDisallowSwitchUser:Z

.field public mEnabled:Z

.field public mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public mIsAdmin:Z

.field public mIsEphemeral:Z

.field public mIsGuest:Z

.field public mIsMain:Z

.field public mUserSwitcherEnabled:Z


# direct methods
.method public static create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;
    .locals 5

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v1, Lcom/android/settings/users/UserCapabilities;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    iput-boolean v2, v1, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mIsMain:Z

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/users/UserCapabilities;->mIsEphemeral:Z

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    :goto_0
    iput-boolean v2, v1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {v1, p0}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    return-object v1

    :cond_3
    :goto_1
    iput-boolean v4, v1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserCapabilities{mEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowSwitchUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUserSetByAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserSwitcherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAddUserCapabilities(Landroid/content/Context;)V
    .locals 6

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_add_user"

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    iput-boolean v4, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-nez v1, :cond_3

    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v1, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "add_users_when_locked"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    move p1, v3

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v4

    :goto_4
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    const-string p1, "android.os.usertype.full.GUEST"

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v3, v4

    :cond_7
    iput-boolean v3, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    const-string p1, "no_user_switch"

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    return-void
.end method
