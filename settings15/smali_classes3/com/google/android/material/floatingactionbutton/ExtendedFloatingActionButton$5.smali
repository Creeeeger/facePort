.class public final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public cancelled:Z

.field public final synthetic val$strategy:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->cancelled:Z

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationCancel()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationEnd()V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->cancelled:Z

    return-void
.end method
