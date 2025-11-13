.class public Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WorkProfileSecuritySettings.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings$1;-><init>(Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v1, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p2, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p2, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WorkProfileSecuritySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$xml;->sec_work_profile_security_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 86
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    .line 87
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/security/LockUnificationPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/android/settings/R$string;->lock_settings_profile_title:I

    const-string v0, "security_category_profile"

    const-string v1, "Settings.WORK_PROFILE_SECURITY_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    .line 50
    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "key_about_unlock_biometrics"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 55
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WorkProfileSecuritySettings"

    const-string p1, "Receiver is already registered "

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WorkProfileSecuritySettings"

    const-string v1, "Receiver is already unregistered "

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public updateFingerprintPreference()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public updateUnificationPreference()V
    .locals 0

    .line 109
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
