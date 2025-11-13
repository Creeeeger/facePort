.class public Lcom/android/settings/users/MultiUserSwitchBarController;
.super Ljava/lang/Object;
.source "MultiUserSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

.field final mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mUserCapabilities:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    .line 56
    iput-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    .line 57
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    .line 58
    iget-boolean v0, p3, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 60
    iget-boolean v0, p3, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string/jumbo v0, "no_user_switch"

    .line 62
    invoke-static {p1, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 65
    iget-boolean p1, p3, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez p1, :cond_1

    .line 66
    invoke-virtual {p3}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 65
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 68
    :goto_1
    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggling multi-user feature enabled state to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiUserSwitchBarCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_switcher_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x60

    const v2, 0xe0a6

    .line 87
    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0, p1}, Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;->onMultiUserSwitchChanged(Z)V

    :cond_0
    return v0
.end method
