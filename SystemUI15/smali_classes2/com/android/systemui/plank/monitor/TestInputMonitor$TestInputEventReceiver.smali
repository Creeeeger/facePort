.class public final Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final eventHandler:Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plank/monitor/TestInputMonitor;Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;",
            "Landroid/view/InputChannel;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;->eventHandler:Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;->eventHandler:Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    check-cast v1, Lcom/android/systemui/plank/monitor/TestInputHandler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plank/monitor/TestInputHandler;->onEventHandler(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
