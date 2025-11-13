.class public final synthetic Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    const-string v0, "SecDeviceAdminAdd"

    if-nez p1, :cond_2

    const-string/jumbo p1, "onClick : Action button is disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p1

    const-string/jumbo v0, "no_remove_managed_profile"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdding:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "onClick : Activate the app"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "rampart_blocked_device_admin_apps"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->addAndFinish()V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "onClick : Delete all apps and data in this profile"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    invoke-static {p0, p1, v0}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mShowRemoveDialog:Z

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstalling:Z

    if-eqz p1, :cond_6

    const-string/jumbo p1, "onClick : Uninstall the app"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez p1, :cond_7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mWaitingForRemoveMsg:Z

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$2;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return-void
.end method
