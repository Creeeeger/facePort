.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

.field public final drawVectorBlock:Lkotlin/jvm/functions/Function1;

.field public final intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public invalidateCallback:Lkotlin/jvm/functions/Function0;

.field public isDirty:Z

.field public name:Ljava/lang/String;

.field public previousDrawSize:J

.field public final root:Landroidx/compose/ui/graphics/vector/GroupComponent;

.field public rootScaleX:F

.field public rootScaleY:F

.field public tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

.field public final viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V

    iput-object v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    const-string p1, ""

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    new-instance p1, Landroidx/compose/ui/graphics/vector/DrawCache;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/vector/DrawCache;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    sget-object p1, Landroidx/compose/ui/graphics/vector/VectorComponent$invalidateCallback$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComponent$invalidateCallback$1;

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    sget-object p1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroidx/compose/ui/geometry/Size;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    return-void
.end method

.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    iget-boolean v2, v1, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-wide v6, v1, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    const-wide/16 v8, 0x10

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v2}, Landroidx/compose/ui/graphics/vector/VectorKt;->tintableWithAlphaMask(Landroidx/compose/ui/graphics/ColorFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/graphics/vector/VectorKt;->tintableWithAlphaMask(Landroidx/compose/ui/graphics/ColorFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v6, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    iget-object v8, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    if-nez v6, :cond_3

    iget-wide v9, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getConfig-_sVssgQ()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v2, v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p1

    move-object v7, v8

    goto/16 :goto_5

    :cond_3
    :goto_2
    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v9, v1, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    new-instance v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v4, 0x5

    invoke-direct {v1, v4, v9, v10}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/geometry/Size;

    iget-wide v9, v6, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    div-float/2addr v1, v6

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/geometry/Size;

    iget-wide v9, v4, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    div-float/2addr v1, v4

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v1, v9

    float-to-int v1, v1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v4, v9

    float-to-int v4, v4

    invoke-static {v1, v4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Lkotlin/jvm/functions/Function1;

    iget-object v6, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-object v11, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    const-wide v12, 0xffffffffL

    const/16 v14, 0x20

    if-eqz v6, :cond_6

    if-eqz v11, :cond_6

    move-object v15, v8

    shr-long v7, v9, v14

    long-to-int v7, v7

    iget-object v8, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_5

    and-long v7, v9, v12

    long-to-int v7, v7

    iget-object v8, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_5

    move-object v7, v15

    iget v8, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    invoke-static {v8, v2}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_5
    move-object v7, v15

    goto :goto_4

    :cond_6
    move-object v7, v8

    :goto_4
    shr-long v5, v9, v14

    long-to-int v5, v5

    and-long v11, v9, v12

    long-to-int v6, v11

    invoke-static {v5, v6, v2}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v11

    iput-object v6, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput-object v11, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    iput v2, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    :cond_7
    iput-wide v9, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v9

    iget-object v2, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v5, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v12, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iget-object v13, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v14, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-wide v15, v9

    iget-wide v8, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    move-object/from16 v10, p1

    iput-object v10, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v1, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v11, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move-wide v0, v15

    iput-wide v0, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Black:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v18, 0x0

    const/16 v22, 0x3e

    move-object v15, v2

    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iput-object v12, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v13, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v14, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v8, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    iget-object v0, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    :goto_5
    if-eqz p3, :cond_8

    move-object/from16 v32, p3

    goto :goto_7

    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/ColorFilter;

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    :goto_6
    move-object/from16 v32, v0

    goto :goto_7

    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    goto :goto_6

    :goto_7
    iget-object v0, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v0, :cond_a

    iget-wide v1, v7, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    const-wide/16 v29, 0x0

    const/16 v34, 0x35a

    const-wide/16 v25, 0x0

    const/16 v33, 0x0

    move-object/from16 v23, p1

    move-object/from16 v24, v0

    move-wide/from16 v27, v1

    move/from16 v31, p2

    invoke-static/range {v23 .. v34}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;II)V

    return-void

    :cond_a
    const-string v0, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Params: \tname: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tviewportWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\tviewportHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
