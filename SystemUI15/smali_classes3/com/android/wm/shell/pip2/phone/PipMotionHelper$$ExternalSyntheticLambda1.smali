.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->dismissPip()V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mDismissalPending:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fling_bounds_change"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->settlePipBoundsAfterPhysicsAnimation(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
