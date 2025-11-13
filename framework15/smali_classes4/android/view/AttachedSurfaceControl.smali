.class public interface abstract Landroid/view/AttachedSurfaceControl;
.super Ljava/lang/Object;
.source "AttachedSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;
    }
.end annotation


# virtual methods
.method public whitelist addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public abstract whitelist buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public whitelist getBufferTransformHint()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInputTransferToken()Landroid/window/InputTransferToken;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The getInputTransferToken needs to be implemented before making this call."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .locals 0

    return-void
.end method

.method public whitelist setChildBoundingInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public whitelist setTouchableRegion(Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method
