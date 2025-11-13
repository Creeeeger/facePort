.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

.field final synthetic val$this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/samsung/android/knox/sdp/SdpUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->val$this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    iget p1, v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->state:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported event "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
