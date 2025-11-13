.class public Lcom/samsung/android/security/SemPassStorageManager;
.super Ljava/lang/Object;
.source "SemPassStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/SemPassStorageManager$SemPassStorageCodeResult;
    }
.end annotation


# static fields
.field public static final whitelist RESULT_ERROR_DESTROY_STORAGE_FAILED:I = -0x7

.field public static final whitelist RESULT_ERROR_EVICT_KEY_FAILED:I = -0x6

.field public static final whitelist RESULT_ERROR_GENERATE_AND_PROTECT_KEY_FAILED:I = -0xa

.field public static final whitelist RESULT_ERROR_GENERATE_SECRET_FAILED:I = -0xb

.field public static final whitelist RESULT_ERROR_GET_SERVICE_EXCEPTION:I = -0xd

.field public static final whitelist RESULT_ERROR_INSTALL_KEY_FAILED:I = -0x4

.field public static final whitelist RESULT_ERROR_POLICY_NOT_FOUND:I = -0x2

.field public static final whitelist RESULT_ERROR_PREPARE_DIR_FAILED:I = -0x8

.field public static final whitelist RESULT_ERROR_PREPARE_DIR_WITH_POLICY_FAILED:I = -0x9

.field public static final whitelist RESULT_ERROR_RETRIEVE_KEY_FAILED:I = -0x3

.field public static final whitelist RESULT_ERROR_RETRIEVE_SECRET_FAILED:I = -0x5

.field public static final whitelist RESULT_ERROR_STORAGE_MANAGER_SERVICE_EXCEPTION:I = -0xc

.field public static final whitelist RESULT_ERROR_STORAGE_NO_EXIST:I = -0x1

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemPassStorageManager"

.field private static blacklist mSemPassStorageManager:Lcom/samsung/android/security/SemPassStorageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/security/SemPassStorageManager;->mSemPassStorageManager:Lcom/samsung/android/security/SemPassStorageManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/security/SemPassStorageManager;
    .locals 1

    invoke-static {}, Lcom/samsung/android/security/SemPassStorageManager;->isPassSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/security/SemPassStorageManager;->mSemPassStorageManager:Lcom/samsung/android/security/SemPassStorageManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/security/SemPassStorageManager;

    invoke-direct {v0}, Lcom/samsung/android/security/SemPassStorageManager;-><init>()V

    sput-object v0, Lcom/samsung/android/security/SemPassStorageManager;->mSemPassStorageManager:Lcom/samsung/android/security/SemPassStorageManager;

    :cond_1
    sget-object v0, Lcom/samsung/android/security/SemPassStorageManager;->mSemPassStorageManager:Lcom/samsung/android/security/SemPassStorageManager;

    return-object v0
.end method

.method private static blacklist isPassSupport()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->isPassSupport()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist create()I
    .locals 3

    const/16 v0, -0xd

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->createPassStorage()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public whitelist getPath()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->getPassStorage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public whitelist isUnlocked()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->isPassUnlocked()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public whitelist lock()I
    .locals 3

    const/16 v0, -0xd

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->lockPassStorage()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public whitelist release()I
    .locals 3

    const/16 v0, -0xd

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->destroyPassStorage()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public whitelist unlock()I
    .locals 3

    const/16 v0, -0xd

    :try_start_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->unlockPassStorage()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemPassStorageManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
