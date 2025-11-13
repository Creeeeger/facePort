.class public final Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    if-nez v3, :cond_0

    const-string p0, "MR2Provider"

    const-string p1, "Pending callback not found for control request."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x3

    if-eq v0, p0, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const-string p0, "error"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onResult(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
