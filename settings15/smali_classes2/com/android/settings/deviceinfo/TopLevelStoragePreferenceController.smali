.class public Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;


# direct methods
.method public static synthetic $r8$lambda$ADy4IwtaupskhgtoY-yhY6aiLFY(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->lambda$refreshSummaryThread$1(Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mfiR9M5NGdL--SLq5YTSku20mjo(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;JLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->lambda$refreshSummaryThread$0(Landroidx/preference/Preference;JLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance p2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {p2, p1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-void
.end method

.method private getSummary(JJ)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    long-to-double v2, p1

    long-to-double v4, p3

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sub-long/2addr p3, p1

    invoke-static {p0, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f142d8b

    invoke-virtual {v1, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refreshSummaryThread$0(Landroidx/preference/Preference;JLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 2

    iget-wide v0, p4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->getSummary(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private lambda$refreshSummaryThread$1(Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;Landroidx/preference/Preference;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->getStorageManagerVolumeProvider()Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v6

    iget-wide v0, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v2, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v4, v0, v2

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "used_size_key"

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;JLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public getStorageManagerVolumeProvider()Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

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

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->refreshSummaryThread(Landroidx/preference/Preference;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public refreshSummaryThread(Landroidx/preference/Preference;)Ljava/util/concurrent/Future;
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "used_size_key"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object v0

    iget-wide v7, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalSize:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    cmp-long v0, v7, v3

    if-eqz v0, :cond_0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->getSummary(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
