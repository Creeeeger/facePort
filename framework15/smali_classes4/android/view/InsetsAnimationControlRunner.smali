.class public interface abstract Landroid/view/InsetsAnimationControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationControlRunner.java"


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public blacklist controlsType(I)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
.end method

.method public abstract blacklist getAnimationType()I
.end method

.method public abstract blacklist getControllingTypes()I
.end method

.method public abstract blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
.end method

.method public abstract blacklist getTypes()I
.end method

.method public abstract blacklist isCancelRequested()Z
.end method

.method public abstract blacklist notifyControlRevoked(I)V
.end method

.method public abstract blacklist updateLayoutInsetsDuringAnimation(I)V
.end method

.method public abstract blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation
.end method
