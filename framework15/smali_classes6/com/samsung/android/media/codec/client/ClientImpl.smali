.class public abstract Lcom/samsung/android/media/codec/client/ClientImpl;
.super Ljava/lang/Object;
.source "ClientImpl.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "SemVideoTranscodingService"


# instance fields
.field protected blacklist mArgs:Ljava/util/Map;

.field protected blacklist mFis:Ljava/io/FileInputStream;

.field protected blacklist mFos:Ljava/io/FileOutputStream;

.field protected final blacklist mID:Ljava/lang/String;

.field protected blacklist mIgnoreError:Z

.field protected blacklist mIsRunning:Z

.field protected final blacklist mMode:I

.field protected final blacklist mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

.field protected final blacklist mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iput-object p2, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mID:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mMode:I

    iput-object p4, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mArgs:Ljava/util/Map;

    iput-object p5, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mFis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mFos:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mIgnoreError:Z

    return-void
.end method


# virtual methods
.method public blacklist start()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ClientImpl;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->startTask(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemVideoTranscodingService"

    const-string v2, "Exception startTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract blacklist stop()V
.end method

.method public abstract blacklist transcode()V
.end method
