.class public final Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-object v2, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;Landroid/util/KeyValueListParser;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string v3, "BatteryTipLoader"

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryInfo(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v2

    iget-object v3, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-direct {v4, v3, v1, p0, v2}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string v4, "No feature factory configured"

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    move p0, v6

    goto :goto_0

    :cond_0
    move p0, v5

    :goto_0
    iget v7, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->pluggedStatus:I

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    new-instance v9, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;

    const/16 v10, 0x8

    invoke-direct {v9, v10, p0, v6}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    iput-boolean v7, v9, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;->mIsPluggedIn:Z

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "IncompatibleChargerDetector"

    invoke-static {v3, p0}, Lcom/android/settingslib/Utils;->containsIncompatibleChargers(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "detect() state= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isIncompatibleCharging: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/IncompatibleChargerTip;

    const/16 v7, 0xa

    invoke-direct {p0, v7, v9, v6}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBatterySettingsFeatureProvider()Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x10e00d5

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    iget v4, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    if-gt v4, p0, :cond_3

    move p0, v8

    goto :goto_3

    :cond_3
    move p0, v6

    :goto_3
    iget-boolean v4, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryEnabled:Z

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    move v4, v8

    goto :goto_4

    :cond_4
    move v4, v6

    :goto_4
    iget-boolean v1, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testLowBatteryTip:Z

    if-nez v1, :cond_6

    iget-boolean v1, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v6

    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    if-eqz v8, :cond_7

    move v5, v6

    :cond_7
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;->mPowerSaveModeOn:Z

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    return-void
.end method
