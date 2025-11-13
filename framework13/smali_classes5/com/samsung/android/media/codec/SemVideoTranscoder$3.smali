.class Lcom/samsung/android/media/codec/SemVideoTranscoder$3;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"

# interfaces
.implements Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/SemVideoTranscoder;->setVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/SemVideoTranscoder;

    .line 345
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCompleted()V
    .locals 1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->onCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onProgressChanged(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->onProgressChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onStarted()V
    .locals 1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->onStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
