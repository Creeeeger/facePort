.class public interface abstract Landroidx/compose/ui/graphics/Canvas;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V
    .locals 6

    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    const/4 v5, 0x1

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    return-void
.end method


# virtual methods
.method public abstract clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V
.end method

.method public abstract clipRect-N_I0leg(FFFFI)V
.end method

.method public abstract concat-58bKbWc([F)V
.end method

.method public abstract disableZ()V
.end method

.method public abstract drawArc(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawCircle-9KIMszo(FJLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawImage-d-4ec7I(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawRect(FFFFLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract enableZ()V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate()V
.end method

.method public abstract save()V
.end method

.method public abstract saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/AndroidPaint;)V
.end method

.method public abstract scale(FF)V
.end method

.method public abstract translate(FF)V
.end method
