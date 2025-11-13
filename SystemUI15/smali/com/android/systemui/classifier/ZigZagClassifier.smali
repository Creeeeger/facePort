.class public final Lcom/android/systemui/classifier/ZigZagClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLastDevianceY:F

.field public mLastMaxXDeviance:F

.field public mLastMaxYDeviance:F

.field public final mMaxXPrimaryDeviance:F

.field public final mMaxXSecondaryDeviance:F

.field public final mMaxYPrimaryDeviance:F

.field public final mMaxYSecondaryDeviance:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    const-string p1, "brightline_falsing_zigzag_x_primary_deviance"

    const v0, 0x3d4ccccd    # 0.05f

    const-string/jumbo v1, "systemui"

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    const-string p1, "brightline_falsing_zigzag_y_primary_deviance"

    const v0, 0x3e19999a    # 0.15f

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    const-string p1, "brightline_falsing_zigzag_x_secondary_deviance"

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    const-string p1, "brightline_falsing_zigzag_y_secondary_deviance"

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    return-void
.end method

.method public static rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float/2addr v12, v8

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v9

    float-to-double v12, v12

    mul-double v14, v2, v12

    move-object/from16 p2, v7

    float-to-double v6, v11

    mul-double v16, v4, v6

    add-double v16, v16, v14

    float-to-double v14, v8

    add-double v14, v16, v14

    move-object/from16 v16, v10

    neg-double v10, v4

    mul-double/2addr v10, v12

    mul-double/2addr v6, v2

    add-double/2addr v6, v10

    float-to-double v10, v9

    add-double/2addr v6, v10

    new-instance v10, Landroid/graphics/Point;

    double-to-int v11, v14

    double-to-int v6, v6

    invoke-direct {v10, v11, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p2

    move-object/from16 v10, v16

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 p2, v7

    const/4 v2, 0x1

    invoke-static {v2, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-static {v1, v2}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->x:I

    return-object v1
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 11

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getAtan2LastPoint()F

    move-result v0

    float-to-double v0, v0

    sget-boolean v2, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/classifier/ZigZagClassifier;->getAtan2LastPoint()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v0

    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    neg-double v1, v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/classifier/ZigZagClassifier;->rotateMotionEvents(Ljava/util/List;D)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x1

    invoke-static {v3, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    if-eqz v3, :cond_3

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v3

    iget v3, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v3

    move v3, v1

    goto :goto_1

    :cond_3
    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v5, v7

    iget v7, v9, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iget v7, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sget-boolean v9, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    goto :goto_1

    :cond_4
    sub-float/2addr v5, v2

    sub-float/2addr v6, v4

    iget v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    div-float v1, v2, v0

    iget p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    div-float v3, v4, p1

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v3, v1

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXPrimaryDeviance:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYSecondaryDeviance:F

    :goto_2
    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxXSecondaryDeviance:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mMaxYPrimaryDeviance:F

    goto :goto_2

    :goto_3
    iput v6, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceY:F

    iput v2, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxXDeviance:F

    iput v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxYDeviance:F

    sget-boolean p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    cmpl-float p1, v5, v2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-gtz p1, :cond_7

    cmpl-float p1, v6, v0

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxXDeviance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastDevianceY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/classifier/ZigZagClassifier;->mLastMaxYDeviance:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v3, "{devianceX=%f, maxDevianceX=%s, devianceY=%s, maxDevianceY=%s}"

    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_8
    :goto_6
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method public final getAtan2LastPoint()F
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sub-float/2addr p0, v0

    float-to-double v0, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
