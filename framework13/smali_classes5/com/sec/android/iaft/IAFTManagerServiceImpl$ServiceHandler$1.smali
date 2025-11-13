.class Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler$1;
.super Landroid/os/CountDownTimer;
.source "IAFTManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;


# direct methods
.method constructor blacklist <init>(Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .line 83
    iput-object p1, p0, Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler$1;->this$1:Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public whitelist onFinish()V
    .locals 2

    .line 88
    const-string v0, "IAFTManager"

    const-string/jumbo v1, "traceTimer onfinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler$1;->this$1:Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;->-$$Nest$fgetmSystemReady(Lcom/sec/android/iaft/IAFTManagerServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler$1;->this$1:Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFTManagerServiceImpl;)Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFTManagerServiceImpl$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    :cond_0
    return-void
.end method

.method public whitelist onTick(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 86
    return-void
.end method
