.class public final Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
