.class public final Landroidx/compose/ui/platform/OutlineResolver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public cacheIsDirty:Z

.field public final cachedOutline:Landroid/graphics/Outline;

.field public cachedRrectPath:Landroidx/compose/ui/graphics/AndroidPath;

.field public isSupportedOutline:Z

.field public outline:Landroidx/compose/ui/graphics/Outline;

.field public outlineNeeded:Z

.field public outlinePath:Landroidx/compose/ui/graphics/Path;

.field public rectSize:J

.field public rectTopLeft:J

.field public roundedCornerRadius:F

.field public tmpPath:Landroidx/compose/ui/graphics/Path;

.field public tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

.field public usePathForClip:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    return-void
.end method


# virtual methods
.method public final clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-object v2, v0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    goto/16 :goto_3

    :cond_0
    iget v2, v0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    iget-object v4, v0, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    iget-object v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    if-eqz v4, :cond_2

    iget-wide v6, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iget-wide v8, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    if-eqz v5, :cond_2

    invoke-static {v5}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    iget v11, v5, Landroidx/compose/ui/geometry/RoundRect;->left:F

    cmpg-float v10, v11, v10

    if-nez v10, :cond_2

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v10

    iget v11, v5, Landroidx/compose/ui/geometry/RoundRect;->top:F

    cmpg-float v10, v11, v10

    if-nez v10, :cond_2

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v11

    add-float/2addr v11, v10

    iget v10, v5, Landroidx/compose/ui/geometry/RoundRect;->right:F

    cmpg-float v10, v10, v11

    if-nez v10, :cond_2

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v7

    add-float/2addr v7, v6

    iget v6, v5, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    cmpg-float v6, v6, v7

    if-nez v6, :cond_2

    iget-wide v5, v5, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v5

    cmpg-float v2, v5, v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    add-float v10, v5, v2

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v5

    add-float v11, v5, v2

    iget v2, v0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v2

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v5

    invoke-static {v2, v5}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v18

    new-instance v2, Landroidx/compose/ui/geometry/RoundRect;

    move-object v7, v2

    move-wide/from16 v12, v18

    move-wide/from16 v14, v18

    move-wide/from16 v16, v18

    invoke-direct/range {v7 .. v19}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    if-nez v4, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    :goto_1
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    iput-object v2, v0, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    iput-object v4, v0, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    :goto_2
    invoke-interface {v1, v4, v3}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    goto :goto_3

    :cond_4
    iget-wide v2, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    iget-wide v3, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    iget-wide v4, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    add-float/2addr v4, v5

    iget-wide v5, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    iget-wide v6, v0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    add-float/2addr v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    :goto_3
    return-void
.end method

.method public final getAndroidOutline()Landroid/graphics/Outline;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final update-S_szKao(Landroidx/compose/ui/graphics/Outline;FZFJ)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {v0, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_0
    iput-wide p5, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_2

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean p3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eq p3, p1, :cond_3

    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_3
    return p2
.end method

.method public final updateCache()V
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    iget-wide v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v0, :cond_0

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v0, :cond_3

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget-wide v1, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v1

    iget v2, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iget v3, v0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v0}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v3, v0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v0, v0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v3, v4

    move v4, v2

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    iput v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/AndroidPath;

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_0

    :cond_3
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_5

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v1, v1, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->canClip()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to obtain android.graphics.Path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
