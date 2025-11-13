.class Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;
.super Ljava/lang/Object;
.source "SemMediaCaptureClient.java"

# interfaces
.implements Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->transcode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPrepared(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->-$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->startCapture()V

    new-instance v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;-><init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;->start()V

    return-void
.end method
