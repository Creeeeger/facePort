.class public final Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sBatteryOptimizeModeList:Ljava/util/List;

.field public static sBatteryUnrestrictModeList:Ljava/util/List;


# instance fields
.field mAllowListed:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public final mContext:Landroid/content/Context;

.field mMode:I

.field public final mPackageName:Ljava/lang/String;

.field mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x46

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    return-void
.end method

.method public static getAppOptimizationMode(IZ)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p1, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstalledApplications(Landroid/content/Context;Landroid/content/pm/IPackageManager;)Landroid/util/ArraySet;
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x408200

    goto :goto_1

    :cond_1
    const-wide/32 v2, 0x8200

    :goto_1
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BatteryOptimizeUtils"

    const-string v0, "getInstalledApplications() is failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method public static isSystemOrDefaultApp(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->sBatteryUnrestrictModeList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03009f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->sBatteryUnrestrictModeList:Ljava/util/List;

    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->sBatteryUnrestrictModeList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, p3, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resetAppOptimizationModeInternal(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 9

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getInstalledApplications(Landroid/content/Context;Landroid/content/pm/IPackageManager;)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "BatteryBackupHelper"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object v0, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->notifyChange(I)V

    invoke-virtual {p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x46

    invoke-virtual {p2, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p3, v3, v2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, p3, v1, v2}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const/4 v3, 0x3

    move-object v2, p0

    move-object v6, p4

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageStateInternal(Landroid/content/Context;IILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "BatteryOptimizeUtils"

    const-string p1, "no data found in the getInstalledApplications()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAppUsageStateInternal(Landroid/content/Context;IILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V
    .locals 6

    const-string v0, "BatteryOptimizeUtils"

    if-nez p1, :cond_0

    const-string p0, "set unknown app optimization mode."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5, p3}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->getPackageNameWithUserId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_3

    const/16 v1, 0x9

    goto :goto_2

    :cond_3
    if-ne v3, v2, :cond_4

    move v1, v4

    :cond_4
    :goto_2
    :try_start_0
    invoke-virtual {p4, p2, v3, v1, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(IIILjava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p5, p2, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->addApp(ILjava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_5
    invoke-virtual {p5, p2, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->removeApp(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "set OPTIMIZATION MODE failed for "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, -0x1

    :goto_4
    if-gez v3, :cond_6

    const-string p1, "Apply optimize setting ERROR"

    goto :goto_5

    :cond_6
    invoke-static {v3, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\tStandbyMode: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", allowListed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p2, p6, v5, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->writeLog(Landroid/content/SharedPreferences;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    if-eq p6, p1, :cond_8

    invoke-static {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p1, "BatteryBackupHelper"

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    check-cast p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    sget-object p1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESTORE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    if-ne p6, p1, :cond_7

    const/4 v2, 0x3

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->notifyChange(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final getAppOptimizationMode(Z)I
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    invoke-virtual {p1, v1, v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x46

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "refresh %s state, allowlisted = %s, mode = %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryOptimizeUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result p0

    return p0
.end method

.method public final isDisabledForOptimizeModeOnly()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->sBatteryOptimizeModeList:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->sBatteryOptimizeModeList:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->sBatteryOptimizeModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSystemOrDefaultApp()Z
    .locals 10

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const-string v1, "BatteryOptimizeUtils"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "getAllPackagesFromBatteryOptimizationWhiteList"

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "allow list app: true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :cond_2
    if-eqz v2, :cond_3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v3, "failed to get allow list by MDM."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    invoke-static {v1, v2, v0, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public final setAppUsageState(ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result v0

    if-ne v0, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "set the same optimization mode for: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const-string p2, "BatteryOptimizeUtils"

    invoke-static {p1, p0, p2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    move v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageStateInternal(Landroid/content/Context;IILjava/lang/String;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    return-void
.end method
