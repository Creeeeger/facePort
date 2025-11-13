.class public final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmAccessedFromAutoRevoke(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    const-string v0, "AppButtonsPrefCtl"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "sessionId: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmSessionId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " uninstalling "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with uid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mgetUid(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reached from auto revoke"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmSessionId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mgetUid(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p1

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIJLjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_0
    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iput-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmDpm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mstopListeningToPackageRemove(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    const-class v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mgetPackageNameForMetric(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x369

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmRequestRemoveDeviceAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mstopListeningToPackageRemove(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.da.daagent"

    const-string v3, "com.samsung.android.da.daagent.RemoveDualIM"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "packageName"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "archive_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableOverridedPackages:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DisableOverrided package : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUninstallBlocked(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v4

    invoke-static {v0, v4, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v3

    :goto_2
    if-eqz p1, :cond_8

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_c

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$misDisabledUntilUsed(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mshowDialogInner(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    goto/16 :goto_4

    :cond_a
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mrequireAuthAndExecute(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;)V

    goto :goto_4

    :cond_b
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mgetPackageNameForMetric(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x36b

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$msetGoogleCoreControl(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmPm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, v0, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_c
    const/high16 p0, 0x800000

    and-int/2addr p0, v4

    if-nez p0, :cond_d

    invoke-virtual {p1, v1, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->restrict(IIZLjava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    :cond_f
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateUninstallButton()V

    :goto_4
    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.unarchive.action"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v0, v2, p1, v3, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    :try_start_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageInstaller;->requestUnarchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f141ef5

    invoke-static {v0, v1, p0, p1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    :goto_5
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mgetPackageNameForMetric(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6ef

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmPm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_6

    :cond_10
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_6

    :cond_11
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mshowDialogInner(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    :goto_6
    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p1

    if-nez p1, :cond_12

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.da.daagent"

    const-string v2, "com.samsung.android.da.daagent.RemoveDualIM"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "archive_button"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p0

    const/16 v0, 0x4159

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    :cond_12
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.archive.action"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v0, v2, p1, v3, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    :try_start_4
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageInstaller;->requestArchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1403da

    invoke-static {v0, v1, p0, p1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
