.class Landroid/view/InsetsController$3;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mFromState:Landroid/view/InsetsState;

.field private blacklist mToState:Landroid/view/InsetsState;

.field private blacklist mTypes:I

.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 12

    iget v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    iget v1, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {v0, v1}, Landroid/view/InsetsController;->-$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V

    new-instance v0, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    sget-object v6, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v9, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v10, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    iget-object v11, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    const-wide/16 v7, 0x12c

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsController;)V

    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->notifyAnimationRunningStateChanged(Z)V

    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startResizingAnimationIfNeeded: types="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InsetsController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getMinimizedInsetHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getMinimizedInsetHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    if-nez v2, :cond_3

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    :cond_3
    iget-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    if-nez v2, :cond_4

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    :cond_4
    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    iget-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public blacklist onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    return-void
.end method
