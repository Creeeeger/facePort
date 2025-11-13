.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mAllowBackgroundUsagePreference:Lcom/android/settingslib/PrimarySwitchPreference;

.field public mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mLogStringBuilder:Ljava/lang/StringBuilder;

.field mOptimizationMode:I

.field public mPowerUsageTimeController:Lcom/android/settings/fuelgauge/PowerUsageTimeController;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/content/Context;ILcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extra_package_name"

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mAppLabel:Ljava/lang/String;

    const-string v4, "extra_label"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mIconId:I

    const-string v4, "extra_icon_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mUid:I

    const-string v3, "extra_uid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v3, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mBackgroundTimeMs:J

    const-string v1, "extra_background_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mForegroundTimeMs:J

    const-string v1, "extra_foreground_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mScreenOnTimeMs:J

    const-string v1, "extra_screen_on_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mSlotInformation:Ljava/lang/String;

    const-string v3, "extra_slot_time"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mUsagePercent:Ljava/lang/String;

    const-string v3, "extra_power_usage_percent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mConsumedPower:I

    const-string v3, "extra_power_usage_amount"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mShowTimeInformation:Z

    const-string v3, "extra_show_time_info"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mAnomalyHintPrefKey:Ljava/lang/String;

    const-string v3, "extra_anomaly_hint_pref_key"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mAnomalyHintText:Ljava/lang/String;

    const-string v3, "extra_anomaly_hint_text"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mIsUserEntry:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    goto :goto_1

    :cond_1
    iget p2, p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    :goto_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x7f14059f

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/content/Context;ILcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mUsagePercent:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mAppLabel:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mSlotInformation:Ljava/lang/String;

    iget-wide p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    long-to-int p3, p3

    iput p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mUid:I

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppIconId()I

    move-result p3

    iput p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mIconId:I

    iget-wide p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    double-to-int p3, p3

    iput p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mConsumedPower:I

    iput-boolean p5, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mShowTimeInformation:Z

    if-eqz p5, :cond_0

    iget-wide p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iput-wide p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mForegroundTimeMs:J

    iget-wide p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v1, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    add-long/2addr p3, v1

    iput-wide p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mBackgroundTimeMs:J

    iget-wide p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    iput-wide p3, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mScreenOnTimeMs:J

    iput-object p6, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mAnomalyHintPrefKey:Ljava/lang/String;

    iput-object p7, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mAnomalyHintText:Ljava/lang/String;

    :cond_0
    const/4 p3, 0x2

    iget p2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumerType:I

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->mIsUserEntry:Z

    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/content/Context;ILcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/core/instrumentation/Instrumentable;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    const-string v0, "AdvancedPowerDetail"

    const-string v1, "userHandle.getIdentifier() : "

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "extra_package_name"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_power_usage_percent"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "extra_uid"

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, p2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot find package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v1, 0x7f14059f

    invoke-virtual {p2, v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object v2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p3, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "extra_package_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v5, v13

    move-object v7, p0

    move-object v9, v4

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v13, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    const-string v5, "extra_show_time_info"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageTimeController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/fuelgauge/PowerUsageTimeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerUsageTimeController:Lcom/android/settings/fuelgauge/PowerUsageTimeController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;

    invoke-direct {p0, p1, v2, v4}, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedPowerDetail"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170112

    return p0
.end method

.method public final handleDialogClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method public initFooter()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isDisabledForOptimizeModeOnly()Z

    move-result v1

    const v2, 0x7f1416e9

    if-eqz v1, :cond_0

    const v1, 0x7f1416eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1416f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f1416e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAllowBackgroundUsagePreference:Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initHeader()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, v3, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput v0, v3, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    const-string v4, "extra_icon_id"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v3, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/AppUtils;->getIconWithoutCache(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerUsageTimeController:Lcom/android/settings/fuelgauge/PowerUsageTimeController;

    if-eqz v0, :cond_2

    const-string v0, "extra_slot_time"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "extra_screen_on_time"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "extra_background_time"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "extra_anomaly_hint_pref_key"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "extra_anomaly_hint_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerUsageTimeController:Lcom/android/settings/fuelgauge/PowerUsageTimeController;

    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->handleScreenTimeUpdated(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allow_background_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/PrimarySwitchPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAllowBackgroundUsagePreference:Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAllowBackgroundUsagePreference:Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mLogStringBuilder:Ljava/lang/StringBuilder;

    const-string v3, ", onPause mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x759

    goto :goto_0

    :cond_2
    const/16 v1, 0x75a

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Leave with mode: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdvancedPowerDetail"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "allow_background_usage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    sget-object p2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->APPLY:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "allow_background_usage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p0, 0x807

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initFooter()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mLogStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final shouldSkipForInitialSUW()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
