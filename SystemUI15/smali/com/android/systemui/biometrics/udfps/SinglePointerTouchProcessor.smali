.class public final Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final overlapDetector:Lcom/android/systemui/biometrics/udfps/OverlapDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/udfps/OverlapDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->overlapDetector:Lcom/android/systemui/biometrics/udfps/OverlapDetector;

    return-void
.end method

.method public static final processTouch$preprocess(Landroid/view/MotionEvent;ILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;)Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    sget-object v6, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v7

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    sget-object v8, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7, v4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v7

    iget v9, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->logicalDisplayWidth:I

    int-to-float v9, v9

    iget v10, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->logicalDisplayHeight:I

    int-to-float v10, v10

    invoke-static {v6, v7, v9, v10}, Landroid/util/RotationUtils;->rotatePointF(Landroid/graphics/PointF;IFF)V

    :cond_0
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v9, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    div-float v12, v7, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v13, v6, v9

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v6

    div-float v14, v6, v9

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    div-float v15, v6, v9

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v6

    iget v7, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    rem-double/2addr v6, v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v6, v10

    rem-double/2addr v6, v8

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    sub-double/2addr v6, v8

    :goto_1
    double-to-float v6, v6

    :cond_2
    move/from16 v16, v6

    new-instance v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v19

    move-object v10, v6

    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    move-object/from16 v6, p3

    iget-object v7, v6, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->overlapDetector:Lcom/android/systemui/biometrics/udfps/OverlapDetector;

    iget-object v8, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->nativeSensorBounds:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->nativeOverlayBounds:Landroid/graphics/Rect;

    invoke-interface {v7, v5, v8, v9}, Lcom/android/systemui/biometrics/udfps/OverlapDetector;->isGoodOverlap(Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v2, v2, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;

    move/from16 v2, p1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;-><init>(Ljava/util/List;ILjava/util/List;)V

    return-object v0
.end method
