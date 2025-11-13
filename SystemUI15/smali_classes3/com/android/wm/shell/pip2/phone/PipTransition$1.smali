.class public final Lcom/android/wm/shell/pip2/phone/PipTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipTransition;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    return-void
.end method
