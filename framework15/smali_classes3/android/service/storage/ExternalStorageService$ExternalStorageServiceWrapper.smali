.class Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;
.super Landroid/service/storage/IExternalStorageService$Stub;
.source "ExternalStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/storage/ExternalStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalStorageServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/storage/ExternalStorageService;


# direct methods
.method public static synthetic blacklist $r8$lambda$5t03DrVncLG0cCaxT8SL5zWkXh4(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$notifyAnrDelayStarted$4(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HI4zAgZwngb8P3mkKidbkr637_g(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$notifyVolumeStateChanged$1(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PGalJUX1xLGyxlOwedMSgi6tsqs(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$freeCache$2(Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p7juJtH5ndQ96eN6vdry8gjkhlY(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$endSession$3(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u1omaTN67au3uFtP2dhJQsL5XR4(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$startSession$0(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/storage/ExternalStorageService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-direct {p0}, Landroid/service/storage/IExternalStorageService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/storage/ExternalStorageService;Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;-><init>(Landroid/service/storage/ExternalStorageService;)V

    return-void
.end method

.method private synthetic blacklist lambda$endSession$3(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1}, Landroid/service/storage/ExternalStorageService;->onEndSession(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$freeCache$2(Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/service/storage/ExternalStorageService;->onFreeCache(Ljava/util/UUID;J)V

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p4, v0, p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$notifyAnrDelayStarted$4(Ljava/lang/String;III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/service/storage/ExternalStorageService;->onAnrDelayStarted(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$notifyVolumeStateChanged$1(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1}, Landroid/service/storage/ExternalStorageService;->onVolumeStateChanged(Landroid/os/storage/StorageVolume;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p2, v0, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$startSession$0(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/service/storage/ExternalStorageService;->onStartSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/io/File;Ljava/io/File;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0, p6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    :goto_0
    return-void
.end method

.method private blacklist sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.service.storage.extra.session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "android.service.storage.extra.error"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V
    .locals 9

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist notifyAnrDelayStarted(Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;III)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    iget-object v0, v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
