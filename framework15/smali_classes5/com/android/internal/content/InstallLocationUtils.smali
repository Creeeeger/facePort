.class public Lcom/android/internal/content/InstallLocationUtils;
.super Ljava/lang/Object;
.source "InstallLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    }
.end annotation


# static fields
.field public static final blacklist APP_INSTALL_AUTO:I = 0x0

.field public static final blacklist APP_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist APP_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final blacklist RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final blacklist RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final blacklist RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final blacklist RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final blacklist RECOMMEND_INSTALL_EPHEMERAL:I = 0x3

.field public static final blacklist RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final blacklist TAG:Ljava/lang/String; = "PackageHelper"

.field private static blacklist sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadataSize(Landroid/content/pm/parsing/PackageLite;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    :goto_0
    move-object v0, v1

    invoke-static {p0, v0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p2, p3}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLjava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v1}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    or-int/lit8 v3, v1, 0x8

    invoke-virtual {p0, v2, v3}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v3

    iget-wide v5, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_1

    return v6

    :cond_1
    or-int/lit8 v5, v1, 0x10

    invoke-virtual {p0, v2, v5}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    iget-wide v9, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long v11, v3, v7

    cmp-long v5, v9, v11

    if-gtz v5, :cond_2

    move v0, v6

    :cond_2
    return v0
.end method

.method public static blacklist fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 13

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/content/InstallLocationUtils;->hasActiveContainer(Landroid/os/storage/StorageManager;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "PackageHelper"

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    :goto_0
    array-length v8, v4

    if-ge v7, v8, :cond_2

    aget-object v8, v4, v7

    const-string/jumbo v9, "sd"

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getExternalStorageSdPath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v9, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-lez v6, :cond_0

    if-nez v2, :cond_0

    iget-wide v9, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "Cannot find fitsOnExternal volume"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    const-string/jumbo v3, "storageVolumes is null"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static blacklist fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v2}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v2

    or-int/lit8 v3, v2, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v3

    iget-wide v5, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_0

    return v6

    :cond_0
    or-int/lit8 v5, v2, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    iget-wide v9, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long v11, v3, v7

    cmp-long v5, v9, v11

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private static declared-synchronized blacklist getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .locals 2

    const-class v0, Lcom/android/internal/content/InstallLocationUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/content/InstallLocationUtils$1;

    invoke-direct {v1}, Lcom/android/internal/content/InstallLocationUtils$1;-><init>()V

    sput-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    :cond_0
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist getInstallationErrorCode(I)I
    .locals 3

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    const/16 v0, -0x13

    return v0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x4

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, -0x2

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    const/4 v1, -0x6

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    const/4 v0, -0x5

    if-ne p0, v0, :cond_5

    const/16 v0, -0x14

    return v0

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist hasActiveContainer(Landroid/os/storage/StorageManager;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "PackageHelper"

    const-string/jumbo v2, "hasActiveContainer, StorageManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static blacklist installLocationPolicy(IIIZZ)I
    .locals 2

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    return v0

    :cond_1
    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    return p1

    :cond_3
    if-eqz p4, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public static blacklist replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/high16 v3, 0x400000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x800

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_0
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-nez v2, :cond_7

    if-eqz v0, :cond_6

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    if-nez v5, :cond_8

    if-ne v2, v4, :cond_9

    :cond_8
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    :cond_9
    const/4 v7, 0x0

    if-nez v5, :cond_a

    if-ne v2, v3, :cond_b

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    :cond_b
    if-ne v2, v4, :cond_d

    if-eqz v6, :cond_e

    if-eqz v1, :cond_c

    const/4 v4, 0x3

    goto :goto_3

    :cond_c
    nop

    :goto_3
    return v4

    :cond_d
    if-ne v2, v3, :cond_e

    if-eqz v7, :cond_e

    return v3

    :cond_e
    if-eqz v5, :cond_10

    if-eqz v6, :cond_f

    return v4

    :cond_f
    if-eqz v7, :cond_10

    return v3

    :cond_10
    const/4 v3, -0x1

    return v3
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    move-result-object v6

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget-wide v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v0, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getForceAllowOnExternalSetting(Landroid/content/Context;)Z

    move-result v4

    nop

    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/VolumeInfo;

    iget v12, v10, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v12, v11, :cond_2

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "private"

    iget-object v12, v10, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v8, v10, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    :cond_0
    if-eqz v11, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    iget-object v12, v10, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v13, v10, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_0

    :cond_3
    const-string v9, " upgrade"

    const-string v10, "Not enough space on existing volume "

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v3, v8, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v9

    :cond_4
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " for system app "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    if-nez v4, :cond_a

    iget v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v12, v11, :cond_a

    if-eqz v6, :cond_7

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v10, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot automatically move "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to internal storage"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    :goto_1
    if-eqz v5, :cond_9

    invoke-static {v3, v8, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v9

    :cond_8
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Requested internal only, but not enough space"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_9
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Not allowed to install non-system apps on internal storage"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    if-eqz v6, :cond_e

    const/4 v11, 0x0

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object v11, v8

    goto :goto_2

    :cond_b
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    :cond_c
    :goto_2
    invoke-static {v3, v11, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object v9

    :cond_d
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_f

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_3

    :cond_f
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ne v12, v11, :cond_10

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v11, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v11

    if-eqz v11, :cond_13

    return-object v9

    :cond_10
    const-wide/high16 v11, -0x8000000000000000L

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v10

    iget v0, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v0}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v0

    invoke-virtual {v3, v10, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-ltz v0, :cond_11

    move-object v0, v14

    move-wide/from16 v11, v16

    move-object v9, v0

    :cond_11
    const/4 v10, 0x0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_12
    iget-wide v13, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v0, v11, v13

    if-ltz v0, :cond_13

    return-object v9

    :cond_13
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const-wide/32 v10, 0x7fffffff

    iget-wide v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_14

    const-string v0, "debug.pm.install_skip_size_check_for_maxint"

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object v9

    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p0, v0, p5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist translateAllocateFlags(I)I
    .locals 1

    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
