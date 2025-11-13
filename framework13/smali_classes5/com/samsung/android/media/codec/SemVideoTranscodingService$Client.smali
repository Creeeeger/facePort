.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;
    }
.end annotation


# instance fields
.field private final blacklist mID:Ljava/lang/String;

.field private blacklist mIgnoreError:Z

.field private final blacklist mInputPath:Ljava/lang/String;

.field private blacklist mIsRunning:Z

.field private final blacklist mMode:I

.field private final blacklist mOutputPath:Ljava/lang/String;

.field private final blacklist mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

.field private final blacklist mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

.field private final blacklist mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreError(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mIgnoreError:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mInputPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMode(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mOutputPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTranscodingService(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/IVideoTranscodingService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRunning(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mIsRunning:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 1
    .param p1, "transcodingService"    # Lcom/samsung/android/media/codec/IVideoTranscodingService;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "inputPath"    # Ljava/lang/String;
    .param p5, "outputPath"    # Ljava/lang/String;
    .param p6, "progressCallback"    # Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    .line 260
    iput-object p2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mID:Ljava/lang/String;

    .line 261
    iput p3, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mMode:I

    .line 262
    iput-object p4, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mInputPath:Ljava/lang/String;

    .line 263
    iput-object p5, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mOutputPath:Ljava/lang/String;

    .line 264
    iput-object p6, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    .line 265
    invoke-virtual {p6, p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->setClient(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)V

    .line 266
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    .line 271
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mIsRunning:Z

    .line 272
    iput-boolean v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mIgnoreError:Z

    .line 273
    return-void
.end method


# virtual methods
.method public whitelist start()V
    .locals 3

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->startTask(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemVideoTranscodingService"

    const-string v2, "Exception startTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist stop()V
    .locals 4

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mIgnoreError:Z

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mIsRunning:Z

    const-string v1, "SemVideoTranscodingService"

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop running client id("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->stop()V

    .line 301
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 309
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Exception startTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist transcode()V
    .locals 1

    .line 320
    new-instance v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)V

    .line 321
    .local v0, "transcodingThread":Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;
    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->start()V

    .line 322
    return-void
.end method
