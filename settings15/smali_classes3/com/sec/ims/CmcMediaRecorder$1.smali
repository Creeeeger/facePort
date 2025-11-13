.class Lcom/sec/ims/CmcMediaRecorder$1;
.super Lcom/sec/ims/cmc/ICmcRecordingListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/CmcMediaRecorder;-><init>(Lcom/sec/ims/IImsService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/CmcMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/sec/ims/CmcMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-direct {p0}, Lcom/sec/ims/cmc/ICmcRecordingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 3

    invoke-static {}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICmcRecordingListener onError : "

    const-string v2, " "

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fputmState(Lcom/sec/ims/CmcMediaRecorder;)V

    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;->onError(Lcom/sec/ims/CmcMediaRecorder;II)V

    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 3

    invoke-static {}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICmcRecordingListener onInfo : "

    const-string v2, " "

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-static {v0}, Lcom/sec/ims/CmcMediaRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder$1;->this$0:Lcom/sec/ims/CmcMediaRecorder;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;->onInfo(Lcom/sec/ims/CmcMediaRecorder;II)V

    :cond_0
    return-void
.end method
