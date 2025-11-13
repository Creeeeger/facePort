.class public final Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final TAG:Ljava/lang/String; = "HibernationSwitchPrefController"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mHibernationEligibility:I

.field private mHibernationEligibilityLoaded:Z

.field private mIsPackageExemptByDefault:Z

.field mIsPackageSet:Z

.field private mIsSupportedArchive:Z

.field private mPackageName:Ljava/lang/String;

.field private mPackageUid:I

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;


# direct methods
.method public static synthetic $r8$lambda$O5stTCjNdPk_erNGItNwDqSGfI0(Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;Landroidx/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->lambda$updateState$0(Landroidx/preference/Preference;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibility:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsSupportedArchive:Z

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class p2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionControllerManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    return-void
.end method

.method private static hibernationTargetsPreSApps()Z
    .locals 3

    const-string v0, "app_hibernation_targets_pre_s_apps"

    const/4 v1, 0x0

    const-string v2, "app_hibernation"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isAppEligibleForHibernation()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibilityLoaded:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibility:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isHibernationEnabled()Z
    .locals 3

    const-string v0, "app_hibernation_enabled"

    const/4 v1, 0x1

    const-string v2, "app_hibernation"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$updateState$0(Landroidx/preference/Preference;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibility:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibilityLoaded:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->isHibernationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsPackageSet:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isPackageHibernationExemptByUser()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsPackageSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageUid:I

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    const-string v4, "android:auto_revoke_permissions_if_unused"

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsPackageExemptByDefault:Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
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

    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const-string v0, "newState : "

    const-string v1, "Target Preference : "

    const/4 v2, 0x0

    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "HibernationSwitchPrefController"

    if-eqz p1, :cond_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v0, "android:auto_revoke_permissions_if_unused"

    iget v1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageUid:I

    const/4 v3, 0x1

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {p1, v0, v1, v4}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/apphibernation/AppHibernationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apphibernation/AppHibernationManager;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Landroid/apphibernation/AppHibernationManager;->setHibernatingForUser(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Landroid/apphibernation/AppHibernationManager;->setHibernatingGlobally(Ljava/lang/String;Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    instance-of p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return v2
.end method

.method public refreshUi()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->refreshUi()V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->setPackage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 6

    const-string v0, "HibernationSwitchPrefController"

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageUid:I

    invoke-static {}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->hibernationTargetsPreSApps()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v2, :cond_1

    move p1, v5

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsPackageExemptByDefault:Z

    iput-boolean v5, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsPackageSet:Z

    const-string p1, "mIsPackageSet true"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Package ["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not found!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsPackageSet:Z

    const-string p0, "mIsPackageSet false"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setSupportedArchive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsSupportedArchive:Z

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAppEligibleForHibernation : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->isAppEligibleForHibernation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HibernationSwitchPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "!isPackageHibernationExemptByUser : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->isPackageHibernationExemptByUser()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mHibernationEligibilityLoaded : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibilityLoaded:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mIsSupportedArchive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    const v2, 0x7f143077

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    const v2, 0x7f143074

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->isAppEligibleForHibernation()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->isPackageHibernationExemptByUser()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->isAppEligibleForHibernation()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mHibernationEligibilityLoaded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getHibernationEligibility(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
