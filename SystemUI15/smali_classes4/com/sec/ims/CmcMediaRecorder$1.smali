.class Lcom/sec/ims/CmcMediaRecorder$1;
.super Lcom/sec/ims/cmc/ICmcRecordingListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
