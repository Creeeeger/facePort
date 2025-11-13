.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleFinishResizePip(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
