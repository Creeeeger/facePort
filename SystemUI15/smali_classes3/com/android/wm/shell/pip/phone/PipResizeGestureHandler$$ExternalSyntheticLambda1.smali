.class public final synthetic Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    if-nez v1, :cond_1

    const-string v1, "PipResizeGestureHandler"

    const-string/jumbo v2, "reset touch state after a certain period of time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
