.class Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Looper;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$2;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle Message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Lock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Message msg.arg1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$2;->this$0:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->-$$Nest$mhandleGetSimLockResponse(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Message;)V

    return-void
.end method
