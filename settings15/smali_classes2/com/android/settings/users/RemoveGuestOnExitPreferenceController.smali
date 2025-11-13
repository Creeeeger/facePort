.class public Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;
    }
.end annotation


# static fields
.field private static final REMOVE_GUEST_ON_EXIT_DEFAULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoveGuestOnExitPreferenceController"

.field private static final TAG_CONFIRM_GUEST_REMOVE:Ljava/lang/String; = "confirmGuestRemove"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mParentFragment:Landroidx/fragment/app/Fragment;

.field private final mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$smsetChecked(Landroid/content/Context;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->setChecked(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isChecked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remove_guest_on_exit"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static setChecked(Landroid/content/Context;Z)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remove_guest_on_exit"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Landroid/os/UserManager;->isGuestUserAlwaysEphemeral()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/UserManager;->isGuestUserAllowEphemeralStateChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x4

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->setChecked(Landroid/content/Context;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1, p2}, Landroid/os/UserManager;->setUserEphemeral(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->setChecked(Landroid/content/Context;Z)Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unused guest, id="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Mark ephemeral as "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " failed !!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mHandler:Landroid/os/Handler;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    sget-object v3, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;

    invoke-direct {v3}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;-><init>()V

    iput-object p0, v3, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mHandler:Landroid/os/Handler;

    iput-boolean p2, v3, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mEnabling:Z

    iput v0, v3, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mGuestUserId:I

    invoke-virtual {v3, v1, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    iput-object p1, v3, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "confirmGuestRemove"

    invoke-virtual {v3, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object p0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
