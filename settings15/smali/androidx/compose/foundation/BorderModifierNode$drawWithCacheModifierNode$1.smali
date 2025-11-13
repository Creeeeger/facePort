.class final Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/draw/DrawResult;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/BorderModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/BorderModifierNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget v2, v2, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    move-result v3

    mul-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_1a

    iget-object v3, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v3}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1a

    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget v3, v3, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-static {v3, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget v2, v2, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    :goto_0
    iget-object v3, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v3}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v3, v2, v4

    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v12

    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    sub-float/2addr v5, v2

    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v6

    sub-float/2addr v6, v2

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v14

    mul-float v6, v2, v4

    iget-object v4, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v4}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v4

    cmpl-float v4, v6, v4

    const/4 v10, 0x0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_1
    iget-object v5, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget-object v5, v5, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v7, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v7}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v7

    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v5

    instance-of v7, v5, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v7, :cond_10

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    check-cast v5, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v4, :cond_2

    new-instance v0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$1;

    invoke-direct {v0, v5, v2}, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$1;-><init>(Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto/16 :goto_e

    :cond_2
    instance-of v3, v2, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v7, v3, Landroidx/compose/ui/graphics/SolidColor;->value:J

    new-instance v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v9, 0x5

    invoke-direct {v3, v9, v7, v8}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move-object v3, v4

    move v7, v10

    :goto_2
    iget-object v8, v5, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v15

    iget-object v9, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    if-nez v9, :cond_4

    new-instance v9, Landroidx/compose/foundation/BorderCache;

    invoke-direct {v9}, Landroidx/compose/foundation/BorderCache;-><init>()V

    iput-object v9, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    :cond_4
    iget-object v9, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v9, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    if-nez v12, :cond_5

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v12

    iput-object v12, v9, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    :cond_5
    move-object v14, v12

    move-object v9, v14

    check-cast v9, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;)V

    invoke-virtual {v9, v9, v8, v10}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v9

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v9, v11

    float-to-int v9, v9

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v18

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    iget-object v9, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    if-eqz v8, :cond_6

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getConfig-_sVssgQ()I

    move-result v11

    new-instance v12, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v12, v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    goto :goto_3

    :cond_6
    move-object v12, v4

    :goto_3
    if-nez v12, :cond_7

    move v11, v10

    goto :goto_4

    :cond_7
    iget v11, v12, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    invoke-static {v11, v10}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v11

    :goto_4
    if-nez v11, :cond_b

    if-eqz v8, :cond_8

    move-object v4, v8

    check-cast v4, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getConfig-_sVssgQ()I

    move-result v4

    new-instance v11, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v11, v4}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    move-object v4, v11

    :cond_8
    instance-of v11, v4, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    if-nez v11, :cond_9

    :goto_5
    move v4, v10

    goto :goto_6

    :cond_9
    iget v4, v4, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    if-eq v7, v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_c

    :cond_b
    const/4 v10, 0x1

    :cond_c
    if-eqz v8, :cond_e

    if-eqz v9, :cond_e

    iget-object v4, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v4}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v4

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-object v12, v11, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v4, v4, v12

    if-gtz v4, :cond_e

    iget-object v4, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v4}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    iget-object v11, v11, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v4, v4, v11

    if-gtz v4, :cond_e

    if-nez v10, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    move-object v4, v8

    move-object v11, v9

    goto :goto_9

    :cond_e
    :goto_8
    const/16 v4, 0x20

    shr-long v8, v18, v4

    long-to-int v4, v8

    const-wide v8, 0xffffffffL

    and-long v8, v18, v8

    long-to-int v8, v8

    invoke-static {v4, v8, v7}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-result-object v8

    iput-object v8, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-static {v8}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v9

    iput-object v9, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    goto :goto_7

    :goto_9
    iget-object v7, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v7, :cond_f

    new-instance v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v7, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_f
    move-object v0, v7

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v7

    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    iget-object v12, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v10, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v16, v10

    iget-object v10, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v17, v10

    iget-object v10, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-object/from16 v28, v10

    move-object/from16 p0, v11

    iget-wide v10, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    iput-object v1, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v9, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v9, p0

    iput-object v9, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v7, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    invoke-interface {v9}, Landroidx/compose/ui/graphics/Canvas;->save()V

    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Black:J

    const/16 v25, 0x0

    const/16 v27, 0x3a

    const/16 v26, 0x0

    move-object/from16 v20, v0

    move-wide/from16 v23, v7

    invoke-static/range {v20 .. v27}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    iget v7, v15, Landroidx/compose/ui/geometry/Rect;->left:F

    neg-float v8, v7

    iget v7, v15, Landroidx/compose/ui/geometry/Rect;->top:F

    neg-float v7, v7

    move-object/from16 p0, v15

    iget-object v15, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-object/from16 v20, v9

    iget-object v9, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v9, v8, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    :try_start_0
    iget-object v9, v5, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    new-instance v21, Landroidx/compose/ui/graphics/drawscope/Stroke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1e

    const/16 v25, 0x0

    move-object/from16 v5, v21

    move/from16 v29, v7

    move/from16 v7, v25

    move/from16 v30, v8

    move/from16 v8, v22

    move-object/from16 v22, v9

    move/from16 v9, v23

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-wide v3, v10

    move-object/from16 v11, v16

    move-object/from16 v31, v17

    move-object/from16 v32, v28

    move/from16 v10, v24

    :try_start_1
    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v17, 0x34

    const/4 v5, 0x0

    move-object v6, v12

    move-object v12, v0

    move-object v7, v13

    move-object/from16 v13, v22

    move-object v8, v14

    move-object v14, v2

    move-object/from16 v9, p0

    move-object v10, v15

    move v15, v5

    move-object/from16 v16, v21

    :try_start_2
    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    const/4 v12, 0x1

    int-to-float v12, v12

    add-float/2addr v5, v12

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v13

    div-float/2addr v5, v13

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v13

    add-float/2addr v13, v12

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v12

    div-float/2addr v13, v12

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v14

    move-wide/from16 v21, v3

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v12, v5, v13, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    const/16 v17, 0x1c

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v0

    move-object v13, v8

    move-object v14, v2

    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    move/from16 v2, v30

    neg-float v2, v2

    move/from16 v5, v29

    neg-float v3, v5

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    iput-object v11, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v0, v31

    iput-object v0, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v0, v32

    iput-object v0, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-wide/from16 v2, v21

    iput-wide v2, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    move-object/from16 v4, v25

    check-cast v4, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-object v0, v4, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object/from16 v8, v25

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;

    move-object v12, v0

    move-object v13, v9

    move-object v14, v7

    move-wide/from16 v15, v18

    move-object/from16 v17, v23

    invoke-direct/range {v12 .. v17}, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    :goto_a
    move/from16 v5, v29

    move/from16 v2, v30

    goto :goto_b

    :catchall_1
    move-exception v0

    move/from16 v5, v29

    move/from16 v2, v30

    :try_start_5
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v10, v15

    goto :goto_a

    :catchall_4
    move-exception v0

    move v5, v7

    move v2, v8

    move-object v10, v15

    :goto_b
    iget-object v1, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v2, v2

    neg-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    throw v0

    :cond_10
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v6, :cond_15

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget-object v11, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    check-cast v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v5, v5, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v5}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-wide v9, v5, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v8, 0x0

    const/16 v0, 0x1e

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, v16

    move v6, v2

    move-wide/from16 v18, v9

    move/from16 v9, v17

    move v10, v0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    new-instance v0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;

    move-object v5, v0

    move v6, v4

    move-object v7, v11

    move-wide/from16 v8, v18

    move v10, v3

    move v11, v2

    invoke-direct/range {v5 .. v16}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto/16 :goto_e

    :cond_11
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    if-nez v3, :cond_12

    new-instance v3, Landroidx/compose/foundation/BorderCache;

    invoke-direct {v3}, Landroidx/compose/foundation/BorderCache;-><init>()V

    iput-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    :cond_12
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    if-nez v3, :cond_13

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    :cond_13
    check-cast v3, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    invoke-static {v3, v5}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    if-nez v4, :cond_14

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v4

    sub-float v8, v4, v2

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v4

    sub-float v9, v4, v2

    iget-wide v6, v5, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v2, v6, v7}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v12

    iget-wide v6, v5, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v2, v6, v7}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v14

    iget-wide v6, v5, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v2, v6, v7}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v16

    iget-wide v4, v5, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v2, v4, v5}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v18

    new-instance v4, Landroidx/compose/ui/geometry/RoundRect;

    move-object v5, v4

    move v6, v2

    move v7, v2

    move v2, v10

    move-object/from16 v33, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v18

    invoke-direct/range {v5 .. v17}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-virtual {v3, v3, v0, v2}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    goto :goto_c

    :cond_14
    move-object/from16 v33, v11

    :goto_c
    new-instance v0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;

    move-object/from16 v2, v33

    invoke-direct {v0, v3, v2}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;-><init>(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto :goto_e

    :cond_15
    instance-of v3, v5, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v3, :cond_19

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;->this$0:Landroidx/compose/foundation/BorderModifierNode;

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v4, :cond_16

    const-wide/16 v12, 0x0

    :cond_16
    if-eqz v4, :cond_17

    iget-object v3, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v3}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    move-result-wide v14

    :cond_17
    if-eqz v4, :cond_18

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object v11, v2

    goto :goto_d

    :cond_18
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v8, 0x0

    const/16 v10, 0x1e

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move v6, v2

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move-object v11, v3

    :goto_d
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    move-object v5, v2

    move-object v6, v0

    move-wide v7, v12

    move-wide v9, v14

    invoke-direct/range {v5 .. v11}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-virtual {v1, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto :goto_e

    :cond_19
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1a
    sget-object v0, Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;->INSTANCE:Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    :goto_e
    return-object v0
.end method
