.class public final Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReleasedInTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-boolean v0, p1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;)V

    const-wide/16 v1, 0x0

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final onStuckToTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->showDismissTargetMaybe()V

    :cond_0
    return-void
.end method

.method public final onUnstuckFromTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;FFZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p4, p2}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->flingToSnapTarget(FFLjava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    :goto_0
    return-void
.end method
