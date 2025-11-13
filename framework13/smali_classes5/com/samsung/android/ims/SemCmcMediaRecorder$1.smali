.class Lcom/samsung/android/ims/SemCmcMediaRecorder$1;
.super Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;
.source "SemCmcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/SemCmcMediaRecorder;-><init>(Lcom/samsung/android/ims/SemImsService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/SemCmcMediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ims/SemCmcMediaRecorder;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-direct {p0}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 98
    invoke-static {}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISemCmcRecordingListener onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$fputmState(Lcom/samsung/android/ims/SemCmcMediaRecorder;I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;->onError(Lcom/samsung/android/ims/SemCmcMediaRecorder;II)V

    .line 105
    :cond_0
    return-void
.end method

.method public blacklist onInfo(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 91
    invoke-static {}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISemCmcRecordingListener onInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/ims/SemCmcMediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;->this$0:Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;->onInfo(Lcom/samsung/android/ims/SemCmcMediaRecorder;II)V

    .line 95
    :cond_0
    return-void
.end method
