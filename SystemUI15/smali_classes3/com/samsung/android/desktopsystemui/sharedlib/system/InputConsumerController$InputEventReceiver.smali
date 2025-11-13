.class final Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
