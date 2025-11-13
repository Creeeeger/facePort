.class public final Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public shapeModifiers:Ljava/util/List;

.field public final tempPath:Landroid/graphics/Path;

.field public final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeData;

    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    iget-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    :cond_0
    iget-boolean v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v6

    :goto_1
    iput-boolean v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    iget-object v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v8, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v5, v8, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Curves must have the same number of control points. Shape 1: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\tShape 2: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    iget-object v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v8, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v5, :cond_4

    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_2
    if-ge v8, v5, :cond_5

    iget-object v9, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    new-instance v10, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v10}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_5

    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_3
    if-lt v8, v5, :cond_5

    iget-object v9, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_5
    iget-object v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget-object v8, v1, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v10, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v8, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    invoke-virtual {v4, v9, v5}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    iget-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    :goto_4
    if-ltz v5, :cond_6

    iget-object v8, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v9, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v10, v8, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v11, v8, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget-object v8, v8, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget-object v12, v9, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v13, v9, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget-object v9, v9, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget-object v14, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v7, v12, Landroid/graphics/PointF;->x:F

    invoke-static {v15, v7, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v12, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v10

    iget-object v12, v14, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v12, v7, v10}, Landroid/graphics/PointF;->set(FF)V

    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v10, v11, Landroid/graphics/PointF;->x:F

    iget v12, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v12, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v10

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v11, v12, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v11

    iget-object v7, v7, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v11, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v11, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v10

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v9, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v8

    iget-object v7, v7, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v7, v10, v8}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_4

    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_5
    if-ltz v1, :cond_18

    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-gt v5, v7, :cond_7

    :goto_6
    move/from16 v20, v1

    move/from16 v16, v6

    goto/16 :goto_14

    :cond_7
    iget-object v5, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    iget-boolean v9, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    const/4 v11, 0x0

    :goto_7
    if-ltz v10, :cond_d

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v13, v10, -0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v13, v14}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v13

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    if-nez v10, :cond_9

    if-nez v9, :cond_9

    iget-object v14, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    goto :goto_8

    :cond_9
    iget-object v14, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    :goto_8
    if-nez v10, :cond_a

    if-nez v9, :cond_a

    move-object v13, v14

    goto :goto_9

    :cond_a
    iget-object v13, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    :goto_9
    iget-object v12, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-boolean v15, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-nez v15, :cond_b

    if-nez v10, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v6

    if-ne v10, v15, :cond_b

    move v15, v6

    goto :goto_a

    :cond_b
    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v13, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v12, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-nez v15, :cond_c

    add-int/lit8 v11, v11, 0x2

    goto :goto_b

    :cond_c
    add-int/lit8 v11, v11, 0x1

    :goto_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_d
    iget-object v8, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    if-eqz v8, :cond_f

    iget-object v8, v8, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v11, :cond_e

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto :goto_e

    :cond_f
    :goto_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v11, :cond_10

    new-instance v12, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v12}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_10
    new-instance v10, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v7, 0x0

    invoke-direct {v10, v11, v7, v8}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    iput-object v10, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    :goto_e
    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    iput-boolean v9, v2, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v9, v8}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    iget-object v8, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    iget-boolean v9, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    move v10, v7

    move v11, v10

    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_17

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v13, v10, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v13, v14}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v13

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v14, v10, -0x2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v14, v15}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v14

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    if-nez v10, :cond_11

    if-nez v9, :cond_11

    iget-object v15, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    goto :goto_10

    :cond_11
    iget-object v15, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    :goto_10
    if-nez v10, :cond_12

    if-nez v9, :cond_12

    move-object v7, v15

    goto :goto_11

    :cond_12
    iget-object v7, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    :goto_11
    iget-object v6, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v14, v14, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    move/from16 p2, v9

    iget-object v9, v12, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget-boolean v0, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-nez v0, :cond_13

    if-nez v10, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_14

    move/from16 v0, v16

    goto :goto_12

    :cond_13
    const/16 v16, 0x1

    :cond_14
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v7, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v6, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-nez v0, :cond_16

    iget v0, v15, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->x:F

    sub-float v6, v0, v6

    iget v7, v15, Landroid/graphics/PointF;->y:F

    iget v12, v14, Landroid/graphics/PointF;->y:F

    sub-float v12, v7, v12

    iget v13, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v0

    iget v0, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v6, v6

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    float-to-double v3, v12

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v6, v13

    float-to-double v12, v0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    div-float v3, v5, v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v0, v5, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, v15, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v4, v3, v4}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    iget v7, v15, Landroid/graphics/PointF;->y:F

    iget v12, v14, Landroid/graphics/PointF;->y:F

    invoke-static {v12, v7, v3, v7}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    iget v12, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v4, v0, v4}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v9, v7, v0, v7}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    sub-float v9, v6, v4

    const v13, 0x3f0d4952    # 0.5519f

    mul-float/2addr v9, v13

    sub-float v9, v6, v9

    sub-float v14, v3, v7

    mul-float/2addr v14, v13

    sub-float v14, v3, v14

    sub-float v4, v12, v4

    mul-float/2addr v4, v13

    sub-float v4, v12, v4

    sub-float v7, v0, v7

    mul-float/2addr v7, v13

    sub-float v7, v0, v7

    add-int/lit8 v13, v11, -0x1

    move-object v15, v8

    check-cast v15, Ljava/util/ArrayList;

    move/from16 v19, v5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v13, v5}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v5

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    move/from16 v20, v1

    iget-object v1, v5, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v5, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    if-nez v10, :cond_15

    invoke-virtual {v2, v6, v3}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    :cond_15
    iget-object v1, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v1, v9, v14}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v1, v11, 0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v3, v12, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v1, v12, v0}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v11, v11, 0x2

    goto :goto_13

    :cond_16
    move/from16 v20, v1

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move/from16 v19, v5

    add-int/lit8 v0, v11, -0x1

    move-object v1, v8

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v11, v11, 0x1

    :goto_13
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v9, p2

    move/from16 v6, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move/from16 v5, v19

    move/from16 v1, v20

    goto/16 :goto_f

    :cond_17
    move/from16 v20, v1

    move/from16 v16, v6

    move-object v4, v2

    :goto_14
    add-int/lit8 v1, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v6, v16

    goto/16 :goto_5

    :cond_18
    move-object/from16 v17, v4

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v3, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v2, 0x0

    :goto_15
    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v5, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v6, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    sget-object v12, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v6, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_16

    :cond_1a
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget v13, v3, Landroid/graphics/PointF;->y:F

    move-object v5, v1

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_16
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1b
    iget-boolean v2, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_1c
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object v0
.end method
