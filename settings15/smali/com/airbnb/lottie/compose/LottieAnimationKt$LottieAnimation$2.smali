.class final Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;
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
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $applyOpacityToLayers:Z

.field final synthetic $clipToCompositionBounds:Z

.field final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $drawable:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic $dynamicProperties:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

.field final synthetic $enableMergePaths:Z

.field final synthetic $maintainOriginalImageBounds:Z

.field final synthetic $matrix:Landroid/graphics/Matrix;

.field final synthetic $outlineMasksAndMattes:Z

.field final synthetic $progress:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $renderMode:Lcom/airbnb/lottie/RenderMode;

.field final synthetic $setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/Alignment;Landroid/graphics/Matrix;Lcom/airbnb/lottie/LottieDrawable;ZLcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/compose/LottieDynamicProperties;ZZZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput-object p3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$alignment:Landroidx/compose/ui/Alignment;

    iput-object p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$matrix:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$drawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p6, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$enableMergePaths:Z

    iput-object p7, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$renderMode:Lcom/airbnb/lottie/RenderMode;

    iput-object p8, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$dynamicProperties:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    iput-boolean p9, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$outlineMasksAndMattes:Z

    iput-boolean p10, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$applyOpacityToLayers:Z

    iput-boolean p11, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$maintainOriginalImageBounds:Z

    iput-boolean p12, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$clipToCompositionBounds:Z

    iput-object p13, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$progress:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v3, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iget-object v4, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$alignment:Landroidx/compose/ui/Alignment;

    iget-object v10, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$matrix:Landroid/graphics/Matrix;

    iget-object v11, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$drawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-boolean v12, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$enableMergePaths:Z

    iget-object v13, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$renderMode:Lcom/airbnb/lottie/RenderMode;

    iget-object v14, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$dynamicProperties:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    iget-boolean v15, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$outlineMasksAndMattes:Z

    iget-boolean v9, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$applyOpacityToLayers:Z

    iget-boolean v7, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$maintainOriginalImageBounds:Z

    iget-boolean v8, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$clipToCompositionBounds:Z

    iget-object v5, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$progress:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v16

    iget-object v6, v2, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 p1, v5

    iget-object v5, v2, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6, v5}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v5

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v17

    move/from16 v18, v7

    invoke-static/range {v17 .. v17}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v17

    move/from16 v19, v8

    invoke-static/range {v17 .. v17}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v7

    move-object/from16 v17, v14

    move/from16 v20, v15

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-interface {v3, v5, v6, v14, v15}, Landroidx/compose/ui/layout/ContentScale;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide v14

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    invoke-static {v14, v15}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v21

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v5

    invoke-static {v14, v15}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v3, v5}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v5

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    move-object/from16 v3, p1

    move/from16 v3, v18

    move/from16 v22, v19

    move v3, v9

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v4

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    const/16 v1, 0x20

    shr-long v6, v4, v1

    long-to-int v1, v6

    int-to-float v1, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v10, v1, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-static {v14, v15}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v1

    invoke-static {v14, v15}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result v4

    invoke-virtual {v10, v1, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-boolean v1, v11, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    if-ne v1, v12, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v12, v11, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    iget-object v1, v11, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v1, :cond_1

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    :cond_1
    :goto_0
    iput-object v13, v11, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    invoke-virtual {v11, v2}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-object/from16 v4, v17

    if-eq v4, v1, :cond_16

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    if-nez v1, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->intProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->pointFProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_2

    :cond_4
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->floatProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_3

    :cond_5
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->scaleProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_4

    :cond_6
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->colorFilterProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_5

    :cond_7
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->intArrayProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_6

    :cond_8
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->typefaceProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_7

    :cond_9
    iget-object v5, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->bitmapProperties:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v8, v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_8

    :cond_a
    iget-object v1, v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->charSequenceProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_9

    :cond_b
    :goto_a
    if-nez v4, :cond_c

    goto/16 :goto_14

    :cond_c
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->intProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_b

    :cond_d
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->pointFProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_c

    :cond_e
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->floatProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_d

    :cond_f
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->scaleProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_e

    :cond_10
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->colorFilterProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_f

    :cond_11
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->intArrayProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_10

    :cond_12
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->typefaceProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_11

    :cond_13
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->bitmapProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_12

    :cond_14
    iget-object v1, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->charSequenceProperties:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    new-instance v7, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;

    iget-object v8, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$toValueCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    invoke-virtual {v11, v6, v5, v7}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_13

    :cond_15
    :goto_14
    invoke-interface {v0, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_16
    iget-boolean v0, v11, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    goto :goto_15

    :cond_17
    iput-boolean v1, v11, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    iget-object v0, v11, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    :cond_18
    :goto_15
    iput-boolean v3, v11, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    iget-boolean v0, v11, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    move/from16 v1, v22

    if-eq v1, v0, :cond_1a

    iput-boolean v1, v11, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    iget-object v0, v11, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v0, :cond_19

    iput-boolean v1, v0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    :cond_19
    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_1a
    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v11, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    iget-object v0, v2, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v2, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, v11, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v3, v11, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v1, :cond_20

    if-nez v3, :cond_1b

    goto/16 :goto_1b

    :cond_1b
    iget-object v3, v11, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    sget-object v4, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_16

    :cond_1c
    move v3, v2

    :goto_16
    if-eqz v3, :cond_1d

    :try_start_0
    iget-object v4, v11, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v11, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_1a

    :cond_1d
    :goto_17
    iget-boolean v4, v11, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_1e
    iget v4, v11, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v1, v0, v10, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :goto_18
    iput-boolean v2, v11, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_20

    iget-object v0, v11, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget v0, v1, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    iget-object v1, v11, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    :goto_19
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, v11, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1b

    :goto_1a
    if-eqz v3, :cond_1f

    iget-object v2, v11, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    iget v1, v1, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    iget-object v2, v11, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, v11, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1f
    throw v0

    :catch_0
    if-eqz v3, :cond_20

    iget-object v0, v11, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget v0, v1, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    iget-object v1, v11, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    goto :goto_19

    :cond_20
    :goto_1b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
