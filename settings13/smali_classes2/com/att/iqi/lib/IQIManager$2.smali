.class Lcom/att/iqi/lib/IQIManager$2;
.super Lcom/att/iqi/IMetricQueryCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/IQIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$2;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {p0}, Lcom/att/iqi/IMetricQueryCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$2;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetf(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
