.class public final Lcom/android/settings/users/MultiUserSwitchBarController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

.field final mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/MainSwitchBarController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p3

    iget-boolean v0, p3, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/MainSwitchBarController;->setChecked(Z)V

    iget-boolean v0, p3, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v0, :cond_0

    const-string p3, "no_user_switch"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/MainSwitchBarController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p3, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v0, :cond_1

    const-string p3, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/MainSwitchBarController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p3, Lcom/android/settings/users/UserCapabilities;->mIsMain:Z

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/MainSwitchBarController;->setEnabled(Z)V

    :goto_0
    iput-object p0, p2, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    return-void
.end method

.method public final onSwitchToggled(Z)Z
    .locals 3

    const-string v0, "Toggling multi-user feature enabled state to: "

    const-string v1, "MultiUserSwitchBarCtrl"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_switcher_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x60

    const v2, 0xe0a6

    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUI$4()V

    :cond_0
    return v0
.end method
