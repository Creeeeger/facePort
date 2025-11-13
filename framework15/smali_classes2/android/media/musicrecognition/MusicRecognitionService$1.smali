.class Landroid/media/musicrecognition/MusicRecognitionService$1;
.super Landroid/media/musicrecognition/IMusicRecognitionService$Stub;
.source "MusicRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/musicrecognition/MusicRecognitionService;


# direct methods
.method constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-virtual {v0}, Landroid/media/musicrecognition/MusicRecognitionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;->onAttributionTag(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-static {v0}, Landroid/media/musicrecognition/MusicRecognitionService;->-$$Nest$fgetmHandler(Landroid/media/musicrecognition/MusicRecognitionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    new-instance v2, Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/musicrecognition/MusicRecognitionService;)V

    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionService$1$1;

    invoke-direct {v1, p0, p3}, Landroid/media/musicrecognition/MusicRecognitionService$1$1;-><init>(Landroid/media/musicrecognition/MusicRecognitionService$1;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V

    invoke-static {v2, p1, p2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
