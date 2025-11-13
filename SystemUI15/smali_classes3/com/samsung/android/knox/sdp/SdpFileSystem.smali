.class public Lcom/samsung/android/knox/sdp/SdpFileSystem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final BASE_USER_DATA_DIR:Ljava/lang/String; = "/data/enc_user"

.field private static final BASE_USER_SDCARD_DIR:Ljava/lang/String; = "/storage/enc_emulated"

.field private static final CLASS_NAME:Ljava/lang/String; = "SdpFileSystem"

.field private static final ENC_EMUL_LOWERFS_DIR:Ljava/lang/String; = "/mnt/user"

.field private static final FUSE_LOWERFS_DIR:Ljava/lang/String; = "/data/media"

.field private static final FUSE_MOUNTED_DIR:Ljava/lang/String; = "/storage/emulated"

.field private static final LEGACY_SDCARD_DIR:Ljava/lang/String; = "/storage/emulated"

.field private static final LEGACY_USER_DATA_DIR:Ljava/lang/String; = "/data/user"

.field private static final STORAGE_DIR:Ljava/lang/String; = "/storage"

.field private static final TAG:Ljava/lang/String; = "SdpFileSystem"

.field private static sService:Lcom/samsung/android/knox/dar/IDarManagerService;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDatabasesDir:Ljava/io/File;

.field private mEmulatedDir:Ljava/io/File;

.field private mEngineId:I

.field private mFilesDir:Ljava/io/File;

.field private final mSync:Ljava/lang/Object;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "sdp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->enforcePermission()V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SdpFileSystem created engine:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpFileSystem"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method private static native Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
.end method

.method private static native Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I
.end method

.method private static native Native_Sdp_TestSdpIoctl()Z
.end method

.method private static createDirLocked(Ljava/io/File;)Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create files subdir "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpFileSystem"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    return-object p0
.end method

.method private static enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getSdpService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isLicensed()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SdpFileSystem"

    const-string v2, "Failed to talk with sdp service..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x63

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v1, -0x9

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    const-string v0, "Failed to get enc-package dir "

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v3, "databases"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getEncDataDirFile()Ljava/io/File;
    .locals 8

    const-string v0, "getFilesDir done createEncPkgDir result "

    const-string v1, "getFilesDir callihng createEncPkgDir "

    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "SdpFileSystem"

    if-eqz v2, :cond_4

    iget v5, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/data/enc_user/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    iget p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService;->createEncPkgDir(ILjava/lang/String;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v5

    :cond_3
    return-object v3

    :catch_0
    move-exception p0

    const-string v0, "RemoteException from call unregisterListener"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_4
    :goto_0
    const-string p0, "getEncPackageDir :: invalid object"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SdpFileSystem"

    const-string v0, "Failed to talk with sdp service..."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getExternalStorageDirectory(I)Ljava/io/File;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->enforcePermission()V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/storage/emulated/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/storage/enc_emulated/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getManagedProfileKnoxDir(I)Ljava/io/File;
    .locals 5

    const-string v0, "getManagedProfileKnoxDir :: The knox path does not exist for user "

    const-string v1, "getManagedProfileKnoxDir :: Protected knox path : "

    const-string v2, "/storage/emulated/"

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "SdpFileSystem"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getManagedProfileKnoxDir :: Not applicable to user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Knox"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "SdpFileSystem"

    const-string v0, "getManagedProfileKnoxDir :: The knox path exists"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized getSdpService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    monitor-enter v0

    :try_start_0
    const-string v1, "dar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SdpFileSystem"

    const-string v3, "Failed to talk with sdp service..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_2
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v2, -0xd

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static getUserDataDir(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->enforcePermission()V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/user/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/enc_user/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static isDefaultPathUser(I)Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isDefaultPathUser(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SdpFileSystem"

    const-string v1, "Failed to talk with sdp service..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File "

    const-string v0, " contains a path separator"

    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 2

    or-int/lit16 v0, p2, 0x1b0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit16 v0, p2, 0x1b4

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 p1, -0x1

    invoke-static {p0, v0, p1, p1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method

.method public static testSdpIoctl()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->Native_Sdp_TestSdpIoctl()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Success"

    goto :goto_0

    :cond_0
    const-string v1, "Failed..."

    :goto_0
    const-string v2, "Test SDP IOCTL :: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpFileSystem"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x1f9

    const/4 v0, -0x1

    invoke-static {p0, p2, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 4

    const-string v0, "Failed to get enc-package dir "

    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "cache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 4

    const-string v0, "/storage/enc_emulated/"

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 4

    const-string v0, "Failed to get enc-package dir "

    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getManagedProfileKnoxDir()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getManagedProfileKnoxDir calling for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpFileSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getManagedProfileKnoxDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getUserDataDir()Ljava/io/File;
    .locals 5

    const-string v0, "Failed to get enc-package dir "

    iget v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v3

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCryptFsMounted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCryptFsMounted(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSensitive(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/storage/emulated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/storage/enc_emulated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "SdpFileSystem"

    if-nez v2, :cond_3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    move v0, p1

    goto :goto_0

    :catch_0
    const-string p0, "Error- Exception in setting Policy"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const-string v3, "/data/media"

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "/mnt/user/"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "/storage"

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dar"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_1
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isSensitive(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_5
    const-string p0, "Service not found"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    const-string p1, "Failed to talk with sdp service..."

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isDefaultPathUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_1

    const/high16 p1, 0x30000000

    goto :goto_0

    :cond_1
    const/high16 p1, 0x10000000

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p0, p2, p3}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public setSensitive(Ljava/io/File;)Z
    .locals 6

    const-string v0, "Error to handle SDP_SetSensitiveFile : "

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "SdpFileSystem.setSensitive"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/storage/emulated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "/storage/enc_emulated"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "SdpFileSystem"

    if-nez v3, :cond_3

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-static {p0, p1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Error- Exception in setting Policy"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    const-string v0, "/data/media"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/mnt/user/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/storage"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    iget p0, p0, Lcom/samsung/android/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setSensitive(ILjava/lang/String;)Z

    move-result p0

    return p0

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_5
    const-string p0, "Service not found"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    const-string p1, "Failed to talk with sdp service..."

    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v1
.end method
