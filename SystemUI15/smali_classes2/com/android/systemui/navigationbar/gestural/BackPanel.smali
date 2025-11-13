.class public Lcom/android/systemui/navigationbar/gestural/BackPanel;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allAnimatedFloat:Ljava/util/Set;

.field public final arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final arrowBackgroundPaint:Landroid/graphics/Paint;

.field public final arrowBackgroundRect:Landroid/graphics/RectF;

.field public final arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final arrowPaint:Landroid/graphics/Paint;

.field public final arrowPath:Landroid/graphics/Path;

.field public arrowsPointLeft:Z

.field public final backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public isLeftPanel:Z

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public trackingBackArrowLatency:Z

.field public final verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V
    .locals 21

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    new-instance v11, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "arrowLength"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v13, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "arrowHeight"

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v14, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v6, 0x8

    const-string v2, "backgroundWidth"

    move-object v0, v14

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v14, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/16 v16, 0x0

    const-string v2, "backgroundHeight"

    move-object v0, v7

    move-object/from16 p1, v10

    move-object v10, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v10, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v2, "backgroundEdgeCornerRadius"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const-string v2, "backgroundFarCornerRadius"

    move-object v0, v7

    move-object/from16 p2, v9

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const v0, 0x3b03126f    # 0.002f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v6, 0x8

    const-string/jumbo v2, "scale"

    move-object v0, v7

    move-object v4, v15

    move-object/from16 v17, v9

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v0, v14, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v6, 0x8

    const/16 v16, 0x0

    const-string/jumbo v2, "scalePivotX"

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/16 v6, 0xe

    const-string v2, "horizontalTranslation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object/from16 v19, v9

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/high16 v7, 0x3b800000    # 0.00390625f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "arrowAlpha"

    move-object v0, v6

    move-object v4, v15

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    iput-object v6, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v2, "backgroundAlpha"

    move-object v0, v5

    move-object v7, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    iput-object v7, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    move-object v12, v13

    move-object v13, v14

    move-object v14, v10

    move-object/from16 v15, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v18

    move-object/from16 v18, v9

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    filled-new-array/range {v11 .. v20}, [Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->allAnimatedFloat:Ljava/util/Set;

    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string/jumbo v2, "verticalTranslation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public static setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V
    .locals 2

    and-int/lit8 v0, p11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit16 v0, p11, 0x80

    if-eqz v0, :cond_6

    move-object p7, v1

    :cond_6
    and-int/lit16 v0, p11, 0x100

    if-eqz v0, :cond_7

    move-object p8, v1

    :cond_7
    and-int/lit16 v0, p11, 0x200

    if-eqz v0, :cond_8

    move-object p9, v1

    :cond_8
    and-int/lit16 p11, p11, 0x400

    if-eqz p11, :cond_9

    move-object p10, v1

    :cond_9
    if-eqz p4, :cond_a

    iget-object p11, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p11, p4}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_a
    if-eqz p5, :cond_b

    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p4, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_b
    if-eqz p6, :cond_c

    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p4, p6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_c
    if-eqz p7, :cond_d

    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p4, p7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_d
    if-eqz p8, :cond_e

    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p4, p8}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_e
    if-eqz p3, :cond_f

    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p4, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_f
    if-eqz p9, :cond_10

    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p3, p9}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_10
    if-eqz p10, :cond_11

    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p3, p10}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_11
    if-eqz p1, :cond_12

    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p3, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_12
    if-eqz p2, :cond_13

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method


# virtual methods
.method public final calculateArrowPath$frameworks__base__packages__SystemUI__android_common__SystemUI_core(FF)Landroid/graphics/Path;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    neg-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v7, v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v10, v10, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v11, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v12, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, 0x0

    if-nez v12, :cond_0

    int-to-float v9, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    invoke-virtual {v1, v14, v13, v9, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v9, v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v12, v12, v16

    iget-object v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v13, v13, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    add-float/2addr v12, v13

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v9, v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-virtual {v1, v9, v9, v11, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    iput v15, v9, Landroid/graphics/RectF;->left:F

    neg-float v11, v7

    iput v11, v9, Landroid/graphics/RectF;->top:F

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iput v7, v9, Landroid/graphics/RectF;->bottom:F

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/16 v11, 0x8

    new-array v11, v11, [F

    aput v5, v11, v3

    aput v5, v11, v2

    aput v6, v11, v4

    const/4 v4, 0x3

    aput v6, v11, v4

    const/4 v4, 0x4

    aput v6, v11, v4

    const/4 v4, 0x5

    aput v6, v11, v4

    const/4 v4, 0x6

    aput v5, v11, v4

    const/4 v4, 0x7

    aput v5, v11, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v11, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    sub-float/2addr v10, v4

    div-float/2addr v10, v8

    invoke-virtual {v1, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    xor-int/2addr v7, v8

    xor-int/2addr v2, v7

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v14, v2, v15, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    neg-float v2, v4

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->calculateArrowPath$frameworks__base__packages__SystemUI__android_common__SystemUI_core(FF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v7, v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-static {v6, v7}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    :cond_2
    return-void
.end method

.method public final popOffEdge(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const v1, -0x40b33333    # -0.8f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, v2, p1, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    return-void
.end method

.method public final setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v1, p8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v0, p8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget p2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alpha:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object p2, p8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alpha:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/high16 p8, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, p8}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    invoke-virtual {p1, p3, p4}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p3, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadius:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p3, p6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadius:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    return-void
.end method

.method public updateArrowPaint$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    const v3, 0x11200b3

    goto :goto_1

    :cond_1
    const v3, 0x11200b4

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_2

    const p1, 0x11200c5

    goto :goto_2

    :cond_2
    const p1, 0x11200c7

    :goto_2
    invoke-static {p0, p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateBackGestureIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public updateBackPanelColor$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IIII)V
    .locals 0

    return-void
.end method
