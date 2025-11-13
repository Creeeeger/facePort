.class public final Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

.field public arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

.field public arrowThickness:F

.field public cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public deactivationTriggerThreshold:F

.field public dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

.field public edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

.field public entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

.field public entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

.field public farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

.field public fingerOffset:I

.field public flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public heightInterpolator:Landroidx/core/animation/PathInterpolator;

.field public horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

.field public minArrowYPosition:I

.field public preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public reactivationTriggerThreshold:F

.field public resources:Landroid/content/res/Resources;

.field public staticTriggerThreshold:F

.field public swipeProgressThreshold:F

.field public verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->update(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDimenFloat(I)F
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EdgePanelParams(resources="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroid/content/res/Resources;)V
    .locals 64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowThickness:F

    const v1, 0x7f070ae5

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ad1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->minArrowYPosition:I

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ae3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fingerOffset:I

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ac4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ac6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ac3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    neg-float v1, v1

    new-instance v3, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v3, v2, v1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ac5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->swipeProgressThreshold:F

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v2, 0x3fa28f5c    # 1.27f

    const v3, 0x3e428f5c    # 0.19f

    const v4, 0x3f35c28f    # 0.71f

    const v5, 0x3f5c28f6    # 0.86f

    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x3fc00000    # -3.0f

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2, v4, v2, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v4, 0x3f333333    # 0.7f

    const v5, -0x418a3d71    # -0.24f

    const v6, 0x3ef5c28f    # 0.48f

    const v7, 0x3f9ae148    # 1.21f

    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v5, v2, v2, v2}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v5, 0x3f933333    # 1.15f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3ed1eb85    # 0.41f

    const v8, 0x3f70a3d7    # 0.94f

    invoke-direct {v1, v6, v5, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v5, 0x3f8b851f    # 1.09f

    const v7, 0x3cf5c28f    # 0.03f

    const v8, 0x3e0f5c29    # 0.14f

    invoke-direct {v1, v7, v3, v8, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v3, 0x3f8e147b    # 1.11f

    const/4 v5, 0x0

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f570a3d    # 0.84f

    invoke-direct {v1, v5, v3, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v3, 0x3d4ccccd    # 0.05f

    const v7, 0x3f666666    # 0.9f

    const v8, -0x416b851f    # -0.29f

    invoke-direct {v1, v2, v3, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    const v1, 0x44bb8000    # 1500.0f

    const v3, 0x3e947ae1    # 0.29f

    invoke-static {v1, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v15

    invoke-static {v1, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const v14, 0x461c4000    # 10000.0f

    invoke-static {v14, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v24

    invoke-static {v14, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v25

    invoke-static {v14, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v26

    invoke-static {v14, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v27

    new-instance v13, Lcom/android/systemui/navigationbar/gestural/Step;

    const/high16 v8, 0x43340000    # 180.0f

    invoke-static {v8, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    const/high16 v8, 0x44fa0000    # 2000.0f

    const v12, 0x3f19999a    # 0.6f

    invoke-static {v8, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v8

    const v9, 0x3e28f5c3    # 0.165f

    const v10, 0x3f866666    # 1.05f

    invoke-direct {v13, v9, v10, v7, v8}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(FFLjava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/systemui/navigationbar/gestural/Step;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v7, v9, v10, v8, v11}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(FFLjava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v9, 0x7f070ae1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v9, 0x7f070ae2

    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    move-result v30

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v11, 0x7f070aec

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x44480000    # 800.0f

    const v11, 0x3f428f5c    # 0.76f

    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v35

    const v10, 0x46ea6000    # 30000.0f

    invoke-static {v10, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v34

    const/high16 v11, 0x42f00000    # 120.0f

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v11, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v36

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v12, 0x7f070adb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v14, 0x7f070ada

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    const/high16 v14, 0x44160000    # 600.0f

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v21

    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v20

    new-instance v32, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v16, v32

    move-object/from16 v22, v13

    move-object/from16 v23, v7

    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v11, 0x7f070ade

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v12, 0x7f070add

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v39

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v12, 0x7f070adf

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v40

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v12, 0x7f070ae0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v41

    const/high16 v14, 0x43e10000    # 450.0f

    const v11, 0x3f266666    # 0.65f

    invoke-static {v14, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v43

    const v12, 0x3ee66666    # 0.45f

    invoke-static {v1, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v44

    const/high16 v11, 0x43960000    # 300.0f

    invoke-static {v11, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v45

    const/high16 v11, 0x43160000    # 150.0f

    invoke-static {v11, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v46

    new-instance v33, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    const/high16 v42, 0x3f800000    # 1.0f

    const/16 v47, 0x0

    const/16 v48, 0x200

    const/16 v49, 0x0

    move-object/from16 v37, v33

    invoke-direct/range {v37 .. v49}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    move-object/from16 v28, v5

    invoke-direct/range {v28 .. v36}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v8, 0x7f070acf

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v8, 0x7f070ad0

    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    move-result v39

    const/high16 v8, 0x447a0000    # 1000.0f

    invoke-static {v8, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v44

    const v8, 0x43a28000    # 325.0f

    const v9, 0x3f0ccccd    # 0.55f

    invoke-static {v8, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v45

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v11, 0x7f070acc

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v9, 0x7f070ac9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v10, 0x7f070ac8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    new-instance v41, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v8, v41

    move-object v9, v10

    const v4, 0x3f4ccccd    # 0.8f

    move-object/from16 v10, v19

    move v1, v11

    const v6, 0x7f070aec

    move/from16 v11, v20

    move-object v12, v3

    move-object/from16 v22, v13

    move-object v13, v15

    const v4, 0x461c4000    # 10000.0f

    move-object/from16 v14, v22

    move-object/from16 v50, v15

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v9, 0x7f070acb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v53

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v9, 0x7f070acd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v54

    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v9, 0x7f070ace

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v55

    const v8, 0x44548000    # 850.0f

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-static {v8, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v57

    invoke-static {v4, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v58

    const v4, 0x45228000    # 2600.0f

    const v9, 0x3f5ae148    # 0.855f

    invoke-static {v4, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v60

    const/high16 v4, 0x44960000    # 1200.0f

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v4, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v59

    new-instance v42, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v52

    const/high16 v56, 0x3f800000    # 1.0f

    const/16 v61, 0x0

    const/16 v62, 0x200

    const/16 v63, 0x0

    move-object/from16 v51, v42

    invoke-direct/range {v51 .. v63}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v47, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x20

    move-object/from16 v37, v1

    invoke-direct/range {v37 .. v47}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070aef

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v4, 0x7f070af0

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    move-result v39

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x42f00000    # 120.0f

    const v9, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v45

    const v5, 0x45bb8000    # 6000.0f

    invoke-static {v5, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v44

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v9, 0x7f070ae9

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v10, 0x7f070ae8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    const v11, 0x3f19999a    # 0.6f

    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v21

    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v20

    new-instance v41, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v41

    move-object/from16 v23, v7

    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070aeb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070aed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070aee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    const v6, 0x44228000    # 650.0f

    invoke-static {v6, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v15

    const v6, 0x44bb8000    # 1500.0f

    const v7, 0x3ee66666    # 0.45f

    invoke-static {v6, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v16

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v6, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v17

    const/high16 v6, 0x437a0000    # 250.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v18

    new-instance v42, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x200

    const/16 v21, 0x0

    move-object/from16 v9, v42

    invoke-direct/range {v9 .. v21}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v47, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x20

    move-object/from16 v37, v5

    invoke-direct/range {v37 .. v47}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    move-object/from16 v5, v50

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v3, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Ljava/lang/Float;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v4

    :goto_3
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    const/high16 v3, 0x44af0000    # 1400.0f

    invoke-static {v3, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v22

    const/16 v23, 0xe

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v20, v25

    move-object/from16 v21, v24

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    move-result-object v12

    const v1, 0x45b22000    # 5700.0f

    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v14

    const v10, 0x3f5c28f6    # 0.86f

    const/4 v13, 0x0

    const/16 v15, 0x60

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    const v3, 0x3eeb851f    # 0.46f

    invoke-static {v8, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-static {v8, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v6, :cond_4

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object v7, v4

    :goto_4
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v6, v4

    :goto_5
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    invoke-static {v8, v7, v6, v3, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Ljava/lang/Float;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move-object v5, v4

    :goto_6
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x21f

    move-object/from16 v16, v5

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v20, v25

    move-object/from16 v21, v24

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v22, 0xe7

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    invoke-static/range {v16 .. v22}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_7

    move-object v5, v1

    goto :goto_7

    :cond_7
    move-object v5, v4

    :goto_7
    if-eqz v1, :cond_8

    move-object v4, v1

    :cond_8
    iget-object v6, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x1ee

    invoke-static/range {v6 .. v13}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v11, 0xef

    invoke-static/range {v5 .. v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070af7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x7f070af8

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    move-result v5

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070afa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070af9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v16, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x40

    const/4 v15, 0x0

    move-object/from16 v6, v16

    invoke-direct/range {v6 .. v15}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070af4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070af3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070af5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070af6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    new-instance v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v27}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v3, v2

    move-object/from16 v7, v16

    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    return-void
.end method
