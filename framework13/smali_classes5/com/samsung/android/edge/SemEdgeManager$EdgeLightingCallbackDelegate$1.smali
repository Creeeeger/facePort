.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;
.super Landroid/os/Handler;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
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

    .line 501
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    iput-object p3, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->val$this$0:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 504
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 517
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/samsung/android/edge/OnEdgeLightingCallback;->onScreenChanged(Z)V

    goto :goto_1

    .line 513
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/edge/OnEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V

    .line 515
    goto :goto_1

    .line 507
    .end local v0    # "pkg":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 508
    .local v0, "param":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "pn":Ljava/lang/String;
    const-string v2, "info"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 510
    .local v2, "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v1, v2, v4}, Lcom/samsung/android/edge/OnEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 521
    .end local v0    # "param":Landroid/os/Bundle;
    .end local v1    # "pn":Ljava/lang/String;
    .end local v2    # "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
