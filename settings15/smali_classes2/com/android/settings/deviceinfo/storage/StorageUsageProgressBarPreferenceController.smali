.class public Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageProgressCtrl"


# instance fields
.field mIsUpdateStateFromSelectedStorageEntry:Z

.field private mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field private mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field private final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field mTotalBytes:J

.field private mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

.field mUsedBytes:J


# direct methods
.method public static synthetic $r8$lambda$IuzbvCBxSnVwt1j3PquF0KzePdo(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->lambda$getStorageStatsAndUpdateUi$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$i6RHJNDZlERKxKFNmWIuhbBMutE(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->lambda$getStorageStatsAndUpdateUi$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/StorageStatsManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    return-void
.end method

.method private getStorageStatsAndUpdateUi()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalSize:J

    iput-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalUsedSize:J

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private synthetic lambda$getStorageStatsAndUpdateUi$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private lambda$getStorageStatsAndUpdateUi$1()V
    .locals 4

    const-string v0, "Mounted public storage has null root path: "

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    goto :goto_1

    :cond_2
    const-string v1, "StorageProgressCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->getStorageStatsAndUpdateUi()V

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f142d9e

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSummary(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f142d93

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSummary(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mTotalSummary:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mTotalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
