.class public Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;
.super Lcom/samsung/android/media/codec/client/ClientImpl;
.source "SemMediaCaptureClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;
    }
.end annotation


# instance fields
.field private final blacklist mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/codec/client/ClientImpl;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-direct {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    return-void
.end method


# virtual methods
.method public blacklist stop()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIgnoreError:Z

    iget-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIsRunning:Z

    const-string v1, "SemVideoTranscodingService"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop running client id("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-virtual {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->stopCapture()V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-virtual {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->reset()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-virtual {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->release()V

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iput-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iput-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIsRunning:Z

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Exception startTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public blacklist transcode()V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    new-instance v2, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;-><init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;)V

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    new-instance v2, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;-><init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;)V

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    new-instance v2, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;-><init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;)V

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mArgs:Ljava/util/Map;

    const-string v2, "input-path"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mArgs:Ljava/util/Map;

    const-string v3, "output-path"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setOutputFile(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/16 v4, 0x3ee

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    iget v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    const-string v6, "playback-speed-changes"

    const/16 v7, 0x3f4

    const/16 v8, 0x3f3

    const/16 v9, 0xc9

    if-eq v3, v4, :cond_2

    :try_start_1
    iget v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mMode:I

    if-ne v3, v9, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mMode:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/4 v4, 0x3

    invoke-virtual {v3, v8, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/16 v4, 0x50

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mArgs:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;

    iget-object v5, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    new-instance v12, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;

    iget-object v7, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->startMs:I

    iget v9, v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->endMs:I

    iget v10, v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->rate:F

    iget v11, v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->repeatCount:I

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;IIFI)V

    invoke-virtual {v5, v12}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setBoomerangConfiguration(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;)V

    goto :goto_3

    :cond_1
    :goto_0
    goto :goto_3

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/16 v4, 0x3f2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/4 v4, 0x2

    invoke-virtual {v3, v8, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/16 v4, 0x59

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    iget v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mMode:I

    if-ne v3, v9, :cond_3

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    const/16 v4, 0x3f5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setParameter(II)V

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mArgs:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;

    new-instance v7, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;

    iget-object v8, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v9, v6, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->startMs:I

    iget v10, v6, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->endMs:I

    iget v11, v6, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->rate:F

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;IIF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-virtual {v5, v3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDynamicViewingConfigurations(Ljava/util/List;)V

    goto :goto_0

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-virtual {v3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") has been terminated unexpectedly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemVideoTranscodingService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIgnoreError:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client has stopped "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Ignore this error."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIsRunning:Z

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-void
.end method
