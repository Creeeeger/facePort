.class public final Lcom/android/settings/fuelgauge/BatterySettingsStorage;
.super Lcom/android/settingslib/datastore/BackupRestoreStorage;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/Observable;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/settingslib/datastore/DataObservable;

.field public final mApplication:Landroid/app/Application;

.field public final mDeviceBuildInfoMap:Landroid/util/ArrayMap;

.field public mOptimizationModeBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;-><init>()V

    new-instance v0, Lcom/android/settingslib/datastore/DataObservable;

    invoke-direct {v0}, Lcom/android/settingslib/datastore/DataObservable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->$$delegate_0:Lcom/android/settingslib/datastore/DataObservable;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mDeviceBuildInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final addObserver$1(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->$$delegate_0:Lcom/android/settingslib/datastore/DataObservable;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/datastore/DataObservable;->addObserver$1(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final createBackupRestoreEntities()Ljava/util/List;
    .locals 11

    const-string v0, "BatterySettingsStorage"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    array-length v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getFullPowerList() size=%d in %d/ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "no data found in the getFullPowerList()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "backupFullPowerList() failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v1

    new-instance v4, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;

    const-string v2, "device_build_brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v4, p0, v2, v5}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;

    const-string v2, "device_build_product"

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {v5, p0, v2, v6}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;

    const-string v2, "device_build_manufacture"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v7}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;

    const-string v2, "device_build_fingerprint"

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v7, p0, v2, v8}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "device_build_metadata_1"

    invoke-direct {v8, p0, v1, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;

    const-string v1, "device_build_metadata_2"

    invoke-direct {v9, p0, v1, v3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;

    invoke-direct {v10, p0, v0}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;-><init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/util/List;)V

    filled-new-array/range {v4 .. v10}, [Lcom/android/settingslib/datastore/BackupRestoreEntity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enableBackup(Lcom/android/settingslib/datastore/BackupContext;)Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final enableRestore()Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "BatteryBackupHelper"

    return-object p0
.end method

.method public final notifyChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->$$delegate_0:Lcom/android/settingslib/datastore/DataObservable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datastore/DataObservable;->notifyChange(I)V

    return-void
.end method

.method public final onRestoreFinished()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    sget-object v1, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker;->sBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const-string v1, "invoke verifySaverConfiguration()"

    const-string v2, "BatterySettingsMigrateChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "low_power_trigger_level"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x14

    if-ge v3, v5, :cond_0

    if-lez v3, :cond_0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Reset invalid scheduled battery level from: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mOptimizationModeBytes:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mOptimizationModeBytes:[B

    if-eqz v0, :cond_3

    array-length p0, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final removeObserver$1(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->$$delegate_0:Lcom/android/settingslib/datastore/DataObservable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datastore/DataObservable;->removeObserver$1(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;)V

    return-void
.end method

.method public final wrapBackupOutputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    return-object p2
.end method

.method public final wrapRestoreInputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p2
.end method
