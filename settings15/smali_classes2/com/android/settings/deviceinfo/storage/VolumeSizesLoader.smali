.class public final Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mStats:Landroid/app/usage/StorageStatsManager;

.field public final mVolume:Landroid/os/storage/VolumeInfo;

.field public final mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mStats:Landroid/app/usage/StorageStatsManager;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolume:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method public static getVolumeSize(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide p0

    new-instance p2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object p2
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v0, v1, p0}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->getVolumeSize(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method
