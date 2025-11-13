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
.method private constructor blacklist <init>(Landroid/service/storage/ExternalStorageService;)V
    .locals 0

    .line 192
    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-direct {p0}, Landroid/service/storage/IExternalStorageService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/storage/ExternalStorageService;Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;-><init>(Landroid/service/storage/ExternalStorageService;)V

    return-void
.end method

.method private blacklist sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.service.storage.extra.session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz p2, :cond_0

    .line 262
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "android.service.storage.extra.error"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method


# virtual methods
.method public blacklist endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method public blacklist freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V
    .locals 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "bytes"    # J
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 224
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method synthetic blacklist lambda$endSession$3$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1}, Landroid/service/storage/ExternalStorageService;->onEndSession(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 243
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$freeCache$2$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/service/storage/ExternalStorageService;->onFreeCache(Ljava/util/UUID;J)V

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p4, v0, p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 231
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyAnrDelayStarted$4$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;III)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/service/storage/ExternalStorageService;->onAnrDelayStarted(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    .line 255
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyVolumeStateChanged$1$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/StorageVolume;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1}, Landroid/service/storage/ExternalStorageService;->onVolumeStateChanged(Landroid/os/storage/StorageVolume;)V

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p2, v0, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$startSession$0$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "deviceFd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "upperPath"    # Ljava/lang/String;
    .param p5, "lowerPath"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/os/RemoteCallback;

    .line 199
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

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0, p6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 205
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public blacklist notifyAnrDelayStarted(Ljava/lang/String;III)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;III)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public blacklist notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 211
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public blacklist startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 11
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "deviceFd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "upperPath"    # Ljava/lang/String;
    .param p5, "lowerPath"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    move-object v8, p0

    iget-object v0, v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
