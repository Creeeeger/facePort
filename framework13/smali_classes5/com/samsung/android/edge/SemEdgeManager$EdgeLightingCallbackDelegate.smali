.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
.super Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/SemEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingCallbackDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_EDGE_LIGHTING_START:I = 0x0

.field private static final blacklist MSG_EDGE_LIGHTING_STARTED:I = 0x2

.field private static final blacklist MSG_EDGE_LIGHTING_STOP:I = 0x1

.field private static final blacklist MSG_EDGE_LIGHTING_STOPPED:I = 0x3

.field private static final blacklist MSG_SCREEN_CHANGED:I = 0x4


# instance fields
.field private final blacklist mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

.field final synthetic blacklist this$0:Lcom/samsung/android/edge/SemEdgeManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
    .locals 2
    .param p2, "callback"    # Lcom/samsung/android/edge/OnEdgeLightingCallback;

    .line 497
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    .line 498
    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    .line 499
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    .line 501
    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-$$Nest$fgetmContext(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;Lcom/samsung/android/edge/SemEdgeManager;)V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 523
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/edge/OnEdgeLightingListener;

    .line 525
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    .line 526
    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    .line 528
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    .line 529
    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-$$Nest$fgetmContext(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;Lcom/samsung/android/edge/SemEdgeManager;)V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 544
    return-void
.end method


# virtual methods
.method blacklist getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    return-object v0
.end method

.method blacklist getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    return-object v0
.end method

.method public blacklist onEdgeLightingStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    return-void
.end method

.method public blacklist onEdgeLightingStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    return-void
.end method

.method public blacklist onScreenChanged(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 584
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 585
    return-void
.end method

.method public blacklist onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v2, "info"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 560
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 561
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 562
    return-void
.end method

.method public blacklist onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 569
    return-void
.end method
