.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
