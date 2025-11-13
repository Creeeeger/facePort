.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAngle:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
