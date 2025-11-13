.class Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;
.super Landroid/os/CountDownTimer;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;JJ)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNoResponseTimer timed out when waiting for message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-static {v1}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$fgetmWaitingMessage(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Lock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-static {v1}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$fgetmWaitingMessage(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    .line 151
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNoResponseTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onTick + seconds remaining: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Network Lock"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
