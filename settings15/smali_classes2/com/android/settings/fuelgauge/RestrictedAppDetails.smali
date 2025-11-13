.class public Lcom/android/settings/fuelgauge/RestrictedAppDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final EXTRA_APP_INFO_LIST:Ljava/lang/String; = "app_info_list"


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field public mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 v0, 0x0

    const v1, 0x7f141f04

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {p2, p0, v0, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    const/4 v1, 0x7

    invoke-direct {p2, v1, v0, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    iput-object p1, p2, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    :goto_0
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(I)V

    const-string p0, "battery_tip"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "metrics_key"

    const/16 p2, 0x505

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RestrictedAppDetails"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x505

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17012a

    return p0
.end method

.method public final onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 2

    instance-of v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "restrict_app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_info_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->refreshUi()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public refreshUi()V
    .locals 15

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    iget-object v4, v2, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v4, "uid"

    const-string v6, "time_stamp_ms"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    const-string v6, "action"

    const-string v8, "action_type = ? "

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v6, "uid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "time_stamp_ms"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/SparseLongArray;->append(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_3

    new-instance v8, Lcom/android/settings/widget/AppCheckBoxPreference;

    invoke-direct {v8, v1}, Lcom/android/settings/widget/AppCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    :try_start_3
    iget-object v10, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v12, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v10, v11, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v12, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v13, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v14, 0x46

    invoke-virtual {v11, v14, v12, v13}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-ne v11, v0, :cond_1

    move v11, v0

    goto :goto_2

    :cond_1
    move v11, v4

    :goto_2
    invoke-virtual {v8, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v12, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v13, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    sget-object v14, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v14, 0x80

    :try_start_4
    invoke-virtual {v11, v12, v14, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual {v10, v12, v13}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    :try_start_5
    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_3
    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v10, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, v9}, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget v10, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    const-wide/16 v11, -0x1

    invoke-virtual {v3, v10, v11, v12}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-eqz v10, :cond_2

    sub-long v10, v5, v13

    long-to-double v10, v10

    sget-object v12, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v1, v10, v11, v4, v12}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f141f03

    invoke-virtual {p0, v11, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v10, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    const-string v8, "RestrictedAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t find package: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v9, v8}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/2addr v7, v0

    goto/16 :goto_1

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    goto :goto_7

    :goto_5
    if-eqz v5, :cond_4

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    monitor-exit v2

    throw p0
.end method
