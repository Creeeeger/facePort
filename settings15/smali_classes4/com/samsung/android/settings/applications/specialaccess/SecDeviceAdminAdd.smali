.class public Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public detailDialog:Landroidx/appcompat/app/AlertDialog;

.field public mActionButton:Landroid/widget/Button;

.field public mAddMsg:Landroid/widget/TextView;

.field public mAddMsgEllipsized:Z

.field public mAddMsgExpander:Landroid/widget/ImageView;

.field public mAddMsgText:Ljava/lang/String;

.field public mAdding:Z

.field public mAddingProfileOwner:Z

.field public mAdminDescription:Landroid/widget/TextView;

.field public mAdminIcon:Landroid/widget/ImageView;

.field public mAdminName:Landroid/widget/TextView;

.field public mAdminPolicies:Landroid/view/ViewGroup;

.field public mAdminPoliciesInitialized:Z

.field public mAdminWarning:Landroid/widget/TextView;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public mCancelButton:Landroid/widget/Button;

.field public mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mHandler:Landroid/os/Handler;

.field public mIsCalledFromSupportDialog:Z

.field public mLayoutInflaternflater:Landroid/view/LayoutInflater;

.field public mRefreshing:Z

.field public mRestrictedIcon:Landroid/widget/ImageView;

.field public mShowRemoveDialog:Z

.field public mShowWarningDialog:Z

.field public mSupportMessage:Landroid/widget/TextView;

.field public final mToken:Landroid/os/IBinder;

.field public mUninstallButton:Landroid/widget/Button;

.field public mUninstalling:Z

.field public mWaitingForRemoveMsg:Z

.field public final restrictedActionClickListener:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgEllipsized:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstalling:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mShowWarningDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mShowRemoveDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->restrictedActionClickListener:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;

    return-void
.end method

.method public static logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_0

    const/16 p0, 0x2fe

    :goto_0
    move v2, p0

    goto :goto_1

    :cond_0
    const/16 p0, 0x2ff

    goto :goto_0

    :goto_1
    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v1, 0x204

    const/4 v3, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addAndFinish()V
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x16059

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->insertListEventLogging(Z)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->clearForceAppStandby(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception trying to activate admin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecDeviceAdminAdd"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final addDeviceAdminPolicies(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v0, :cond_6

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    if-eqz v0, :cond_0

    iget v3, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    :goto_1
    if-eqz v0, :cond_1

    iget v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    goto :goto_2

    :cond_1
    iget v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v4, ""

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v4

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mLayoutInflaternflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d07fd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0b44

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0b45

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x8

    if-eqz v2, :cond_4

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v3, v4, :cond_3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminPoliciesInitialized:Z

    :cond_6
    return-void
.end method

.method public final continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->insertListEventLogging(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mShowWarningDialog:Z

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final insertListEventLogging(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "pkgname"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    :goto_0
    const-string/jumbo p1, "newValue"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x204

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xf48

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public final isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z
    .locals 0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "Bad "

    const-string v1, "Unable to retrieve device policy "

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string p1, "device_policy"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "appops"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mLayoutInflaternflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const-string v3, "SecDeviceAdminAdd"

    if-eqz v2, :cond_0

    const-string p1, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const/4 v6, 0x1

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda17;

    invoke-direct {v8, v4}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No component specified in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    iput-boolean v6, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstalling:Z

    :cond_3
    if-eqz v2, :cond_6

    const-string v7, "android.app.action.SET_PROFILE_OWNER"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddingProfileOwner:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p1, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v6

    if-nez v8, :cond_6

    const-string p1, "Cannot set a non-system app as a profile owner"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot find the package "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    :goto_1
    const-string p1, "Unknown or incorrect caller"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    const/16 v7, 0x80

    :try_start_1
    invoke-virtual {p1, v4, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v9, 0x8000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_8

    move v8, v5

    goto :goto_3

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    move v9, v5

    :goto_4
    if-ge v9, v8, :cond_a

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :try_start_2
    iput-object v7, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance p1, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p1, p0, v10}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_6

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Request to add invalid device admin: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_b
    :goto_8
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :try_start_3
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const-string p1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_f

    iput-boolean v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRefreshing:Z

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Requested admin is already being removed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object p1

    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_e

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v1, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_d

    iput-boolean v6, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRefreshing:Z

    goto :goto_a

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRefreshing:Z

    if-nez p1, :cond_f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgText:Ljava/lang/String;

    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->addAndFinish()V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyManager;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to set non-default profile owner post-setup "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_12
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v3, "Settings.SET_PROFILE_OWNER_DIALOG_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v1, 0x7f0d0561

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)V

    new-instance v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const v3, 0x7f1402ea

    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f1408bf

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    const v0, 0x7f0a00a9

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00bf

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Settings.NEW_DEVICE_ADMIN_WARNING_SIMPLIFIED"

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_13
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_14

    const p1, 0x7f14025b

    goto :goto_b

    :cond_14
    const p1, 0x7f1402a2

    :goto_b
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const p1, 0x7f0d088e

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)V

    new-instance p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00b5

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00b7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00b2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a0bc7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v2, "Settings.SET_PROFILE_OWNER_POSTSETUP_WARNING"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00a7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00a8

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->toggleMessageEllipsis(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00be

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00b8

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a00bc

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a02cf

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a10b1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v2, "Settings.UNINSTALL_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a006f

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a0ca6

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->restrictedActionClickListener:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a0ca7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRestrictedIcon:Landroid/widget/ImageView;

    return-void

    :catch_4
    move-exception p1

    goto :goto_c

    :catch_5
    move-exception p1

    goto :goto_d

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const v1, 0x7f140d33

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const v1, 0x7f140d30

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onResume()V
    .locals 9

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRestrictedIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRefreshing:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_e

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdding:Z

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z

    move-result v4

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v6, "Settings.WORK_PROFILE_ADMIN_POLICIES_WARNING"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/16 v6, 0xa

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v6, "Settings.REMOVE_WORK_PROFILE"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "no_remove_managed_profile"

    invoke-static {p0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v5, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mRestrictedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_6
    const-string v4, "Settings.REMOVE_DEVICE_ADMIN"

    if-nez v3, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v3, v8}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;Ljava/lang/CharSequence;I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "Settings.ACTIVE_DEVICE_ADMIN_WARNING"

    invoke-virtual {v6, v8, v7, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f14025b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstalling:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v6, "Settings.REMOVE_AND_UNINSTALL_DEVICE_ADMIN"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    invoke-virtual {v5, v4, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sprint.ms.cdm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/16 v7, 0xb

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v7, "Settings.USER_ADMIN_POLICIES_WARNING"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v3

    if-ne v3, v1, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v5, 0x7f1402ae

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v7, "Settings.DEVICE_ADMIN_POLICIES_WARNING"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    invoke-virtual {v5, v4, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    :goto_7
    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_e
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v3, v7}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;Ljava/lang/CharSequence;I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, "Settings.NEW_DEVICE_ADMIN_WARNING"

    invoke-virtual {v5, v7, v6, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v5, "Settings.ACTIVATE_DEVICE_ADMIN_APP"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;

    const/16 v6, 0x9

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V

    const-string v6, "Settings.ACTIVATE_THIS_DEVICE_ADMIN_APP"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    const v4, 0x7f0a0545

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAdding:Z

    :cond_10
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final toggleMessageEllipsis(Landroid/widget/TextView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgEllipsized:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/16 v0, 0xf

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz p0, :cond_3

    const p0, 0x1080346

    goto :goto_2

    :cond_3
    const p0, 0x1080345

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
