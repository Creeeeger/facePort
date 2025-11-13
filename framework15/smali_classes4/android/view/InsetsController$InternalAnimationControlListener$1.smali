.class Landroid/view/InsetsController$InternalAnimationControlListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController$InternalAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->onCancelAnimation(I)V

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-virtual {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->onFinishAnimation(I)V

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v2}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I

    move-result v2

    iget-object v3, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmHasAnimationCallbacks(Landroid/view/InsetsController$InternalAnimationControlListener;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->onRequestAnimation(Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;IZ)V

    return-void
.end method
