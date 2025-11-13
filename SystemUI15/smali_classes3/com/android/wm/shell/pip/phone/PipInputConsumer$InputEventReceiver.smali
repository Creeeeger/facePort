.class public final Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;->this$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;->this$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;->onInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
