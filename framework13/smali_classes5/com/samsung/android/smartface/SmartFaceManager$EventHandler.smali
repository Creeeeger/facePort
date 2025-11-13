.class Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field final synthetic blacklist this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "manager"    # Lcom/samsung/android/smartface/SmartFaceManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 451
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 452
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 454
    iput-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 455
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 459
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListenerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 461
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onUnregistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_0

    .line 476
    :cond_0
    const-string v1, "SmartFaceManager"

    const-string v2, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onRegistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_0

    .line 469
    :cond_1
    const-string v1, "SmartFaceManager"

    const-string v2, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    goto :goto_0

    .line 463
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/smartface/FaceInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;->onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V

    .line 464
    nop

    .line 478
    :goto_0
    goto :goto_1

    .line 481
    :cond_2
    const-string v1, "SmartFaceManager"

    const-string v2, "Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_1
    monitor-exit v0

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
