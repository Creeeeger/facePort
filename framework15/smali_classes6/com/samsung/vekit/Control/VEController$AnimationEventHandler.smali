.class Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEventHandler"
.end annotation


# instance fields
.field private blacklist controller:Lcom/samsung/vekit/Control/VEController;

.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->values()[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEController;->animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v3}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UI AnimationListener"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v2}, Lcom/samsung/vekit/Control/VEController;->access$400(Lcom/samsung/vekit/Control/VEController;)Lcom/samsung/vekit/Common/VEContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Manager/AnimationManager;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Listener/AnimationStatusListener;

    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v3}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnimationListener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v3, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Animation$Animation$AnimationStatus:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationFinished(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationCanceled(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationUpdated(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationStarted(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
