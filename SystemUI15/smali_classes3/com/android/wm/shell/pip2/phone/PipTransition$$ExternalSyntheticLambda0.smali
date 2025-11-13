.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/pip2/phone/PipTransition;->onClientDrawAtTransitionEnd()V

    return-void
.end method
