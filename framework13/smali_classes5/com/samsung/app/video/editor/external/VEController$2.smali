.class Lcom/samsung/app/video/editor/external/VEController$2;
.super Ljava/lang/Object;
.source "VEController.java"

# interfaces
.implements Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/app/video/editor/external/VEController;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/app/video/editor/external/VEController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/app/video/editor/external/VEController;

    .line 481
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 485
    const-string v0, "VEController"

    const-string v1, "In onEvent in previewPlayerStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 532
    :pswitch_0
    goto :goto_0

    .line 528
    :pswitch_1
    goto :goto_0

    .line 524
    :pswitch_2
    goto :goto_0

    .line 518
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/VEController;->access$100(Lcom/samsung/app/video/editor/external/VEController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 519
    .local v0, "msg1":Landroid/os/Message;
    const/16 v1, 0x85c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 520
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-static {v1}, Lcom/samsung/app/video/editor/external/VEController;->access$100(Lcom/samsung/app/video/editor/external/VEController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    goto :goto_0

    .line 492
    .end local v0    # "msg1":Landroid/os/Message;
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/VEController;->access$000(Lcom/samsung/app/video/editor/external/VEController;)Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v0

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->PLAYBACK_ERROR:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/VEController;->access$000(Lcom/samsung/app/video/editor/external/VEController;)Lcom/samsung/app/video/editor/external/VEState;

    move-result-object v0

    sget-object v1, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    if-ne v0, v1, :cond_1

    .line 497
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/VEController;->mListener:Lcom/samsung/app/video/editor/external/VECallbackListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/VECallback;->EXPORT_ERROR:Lcom/samsung/app/video/editor/external/VECallback;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/VECallbackListener;->onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/VEController;->access$100(Lcom/samsung/app/video/editor/external/VEController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 501
    .restart local v0    # "msg1":Landroid/os/Message;
    const/16 v1, 0x820

    iput v1, v0, Landroid/os/Message;->what:I

    .line 502
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/VEController$2;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-static {v1}, Lcom/samsung/app/video/editor/external/VEController;->access$100(Lcom/samsung/app/video/editor/external/VEController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    .end local v0    # "msg1":Landroid/os/Message;
    nop

    .line 537
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
