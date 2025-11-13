.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;
.super Landroid/os/Handler;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/edge/SemEdgeManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;Lcom/samsung/android/edge/SemEdgeManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 529
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    iput-object p3, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->val$this$0:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 532
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 538
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/edge/OnEdgeLightingListener;->onEdgeLightingStopped()V

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/edge/OnEdgeLightingListener;->onEdgeLightingStarted()V

    .line 542
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
