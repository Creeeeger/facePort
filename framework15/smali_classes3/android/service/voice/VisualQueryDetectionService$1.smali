.class Landroid/service/voice/VisualQueryDetectionService$1;
.super Landroid/service/voice/ISandboxedDetectionService$Stub;
.source "VisualQueryDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VisualQueryDetectionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VisualQueryDetectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-direct {p0}, Landroid/service/voice/ISandboxedDetectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by VisualQueryDetectionService"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by VisualQueryDetectionService"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .locals 2

    invoke-static {}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#detectWithVisualSignals"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmRemoteCallback(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetectionService;->onStartDetection()V

    return-void
.end method

.method public blacklist ping(Landroid/os/IRemoteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmDetectorSessionStorageService(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionStorageService;)V

    return-void
.end method

.method public blacklist stopDetection()V
    .locals 2

    invoke-static {}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#stopDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetectionService;->onStopDetection()V

    return-void
.end method

.method public blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Landroid/media/AudioSystem;->setAudioFlingerBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .locals 3

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-direct {v1, v2, p1, p2}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    invoke-static {v0, v1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmContentCaptureManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V

    return-void
.end method

.method public blacklist updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/speech/IRecognitionServiceManager;)V

    return-void
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#updateState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v2, " with callback"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$monUpdateStateInternal(Landroid/service/voice/VisualQueryDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method
