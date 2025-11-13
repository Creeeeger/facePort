.class Landroid/app/trust/TrustManager$1;
.super Landroid/app/trust/ITrustListener$Stub;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/trust/TrustManager;

.field final synthetic blacklist val$trustListener:Landroid/app/trust/TrustManager$TrustListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    iput-object p2, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-direct {p0}, Landroid/app/trust/ITrustListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEnabledTrustAgentsChanged(I)V
    .locals 4

    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->-$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onIsActiveUnlockRunningChanged(ZI)V
    .locals 3

    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->-$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onTrustChanged(ZZIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->-$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "initiatedByUser"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "newlyUnlocked"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "grantedMessages"

    move-object v3, p5

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onTrustError(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->-$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onTrustManagedChanged(ZI)V
    .locals 3

    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->-$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
