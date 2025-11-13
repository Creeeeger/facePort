.class Lcom/samsung/android/media/codec/VideoTranscodingService$2;
.super Ljava/lang/Object;
.source "VideoTranscodingService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/VideoTranscodingService;->register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

.field final synthetic blacklist val$task:Lcom/samsung/android/media/codec/VideoTranscodingService$Task;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/VideoTranscodingService;Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/VideoTranscodingService;

    .line 167
    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$2;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    iput-object p2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$2;->val$task:Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied: task("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$2;->val$task:Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    invoke-virtual {v1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$2;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$2;->val$task:Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    invoke-virtual {v1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
