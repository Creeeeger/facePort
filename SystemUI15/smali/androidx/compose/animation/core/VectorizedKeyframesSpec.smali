.class public final Landroidx/compose/animation/core/VectorizedKeyframesSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# instance fields
.field public arcSpline:Landroidx/compose/animation/core/ArcSpline;

.field public final defaultEasing:Landroidx/compose/animation/core/Easing;

.field public final delayMillis:I

.field public final durationMillis:I

.field public final initialArcMode:I

.field public final keyframes:Landroidx/collection/IntObjectMap;

.field public lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

.field public lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

.field public modes:[I

.field public posArray:[F

.field public slopeArray:[F

.field public times:[F

.field public final timestamps:Landroidx/collection/IntList;

.field public valueVector:Landroidx/compose/animation/core/AnimationVector;

.field public velocityVector:Landroidx/compose/animation/core/AnimationVector;


# direct methods
.method private constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntList;",
            "Landroidx/collection/IntObjectMap;",
            "II",
            "Landroidx/compose/animation/core/Easing;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    iput p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->durationMillis:I

    iput p4, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->delayMillis:I

    iput-object p5, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->defaultEasing:Landroidx/compose/animation/core/Easing;

    iput p6, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->initialArcMode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lkotlin/Pair<",
            "Landroidx/compose/animation/core/AnimationVector;",
            "+",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;II)V"
        }
    .end annotation

    new-instance v1, Landroidx/collection/MutableIntList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Landroidx/collection/MutableIntList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/collection/MutableIntList;->add()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Landroidx/collection/MutableIntList;->add(I)V

    :cond_2
    iget-object v2, v1, Landroidx/collection/IntList;->content:[I

    iget v3, v1, Landroidx/collection/IntList;->_size:I

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->sort([III)V

    new-instance v2, Landroidx/collection/MutableIntObjectMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    new-instance v6, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/Easing;

    sget-object v8, Landroidx/compose/animation/core/ArcMode;->Companion:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v3, v0, v4}, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;-><init>(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v5, v6}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    sget-object p1, Landroidx/compose/animation/core/ArcMode;->Companion:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Ljava/util/Map;II)V

    return-void
.end method


# virtual methods
.method public final findEntryForTimeMillis(I)I
    .locals 4

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/collection/IntList;->get(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    neg-int v2, v1

    :cond_2
    const/4 p0, -0x1

    if-ge v2, p0, :cond_3

    add-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    :cond_3
    return v2

    :cond_4
    const-string p0, "fromIndex(0) > toIndex("

    const/16 p1, 0x29

    invoke-static {p0, v0, p1}, Landroidx/compose/animation/core/ArcMode$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDelayMillis()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->delayMillis:I

    return p0
.end method

.method public final getDurationMillis()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->durationMillis:I

    return p0
.end method

.method public final getEasedTimeFromIndex(IIZ)F
    .locals 4

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    iget v1, v0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3e8

    if-lt p1, v1, :cond_0

    int-to-float p0, p2

    :goto_0
    long-to-float p1, v2

    div-float/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->get(I)I

    move-result p1

    if-ne p2, v1, :cond_1

    int-to-float p0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v0, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->easing:Landroidx/compose/animation/core/Easing;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->defaultEasing:Landroidx/compose/animation/core/Easing;

    :cond_3
    sub-int/2addr p2, v1

    int-to-float p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-interface {v0, p0}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p0

    if-eqz p3, :cond_4

    return p0

    :cond_4
    mul-float/2addr p1, p0

    int-to-float p0, v1

    add-float/2addr p1, p0

    long-to-float p0, v2

    div-float/2addr p1, p0

    return p1
.end method

.method public final getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x1

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getDelayMillis()I

    move-result v6

    int-to-long v6, v6

    sub-long v8, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getDurationMillis()I

    move-result v4

    int-to-long v12, v4

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v5, v4}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->vectorValue:Landroidx/compose/animation/core/AnimationVector;

    return-object v0

    :cond_0
    iget v6, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->durationMillis:I

    if-lt v4, v6, :cond_1

    return-object v2

    :cond_1
    if-gtz v4, :cond_2

    return-object v1

    :cond_2
    move-object/from16 v6, p5

    invoke-virtual {v0, v1, v2, v6}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v6, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    const/4 v7, 0x0

    if-eqz v6, :cond_15

    invoke-virtual {v0, v4}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->findEntryForTimeMillis(I)I

    move-result v1

    invoke-virtual {v0, v1, v4, v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getEasedTimeFromIndex(IIZ)F

    move-result v1

    iget-object v2, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v4, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->posArray:[F

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget-boolean v5, v2, Landroidx/compose/animation/core/ArcSpline;->isExtrapolate:Z

    iget-object v2, v2, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    if-eqz v5, :cond_8

    aget-object v5, v2, v7

    aget-object v5, v5, v7

    iget v5, v5, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_5

    array-length v6, v2

    sub-int/2addr v6, v3

    aget-object v6, v2, v6

    aget-object v6, v6, v7

    iget v6, v6, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    cmpl-float v6, v1, v6

    if-lez v6, :cond_a

    :cond_5
    array-length v6, v2

    sub-int/2addr v6, v3

    aget-object v6, v2, v6

    aget-object v6, v6, v7

    iget v6, v6, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    cmpl-float v6, v1, v6

    if-lez v6, :cond_6

    array-length v5, v2

    sub-int/2addr v5, v3

    array-length v6, v2

    sub-int/2addr v6, v3

    aget-object v6, v2, v6

    aget-object v6, v6, v7

    iget v6, v6, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    goto :goto_0

    :cond_6
    move v6, v7

    :goto_0
    sub-float/2addr v1, v5

    move v9, v7

    move v10, v9

    :goto_1
    array-length v11, v4

    if-ge v9, v11, :cond_f

    aget-object v11, v2, v6

    aget-object v11, v11, v10

    iget-boolean v12, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear:Z

    if-eqz v12, :cond_7

    iget v12, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    sub-float v13, v5, v12

    iget v14, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    mul-float/2addr v13, v14

    iget v15, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->x2:F

    iget v8, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->x1:F

    invoke-static {v15, v8, v13, v8}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v8

    iget v13, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    mul-float/2addr v13, v1

    add-float/2addr v13, v8

    aput v13, v4, v9

    add-int/lit8 v8, v9, 0x1

    sub-float v12, v5, v12

    mul-float/2addr v12, v14

    iget v13, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->y2:F

    iget v14, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->y1:F

    invoke-static {v13, v14, v12, v14}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v12

    iget v11, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    mul-float/2addr v11, v1

    add-float/2addr v11, v12

    aput v11, v4, v8

    goto :goto_2

    :cond_7
    invoke-virtual {v11, v5}, Landroidx/compose/animation/core/ArcSpline$Arc;->setPoint(F)V

    aget-object v8, v2, v6

    aget-object v8, v8, v10

    iget v11, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iget v12, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    mul-float/2addr v11, v12

    iget v12, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    add-float/2addr v11, v12

    invoke-virtual {v8}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDX()F

    move-result v8

    mul-float/2addr v8, v1

    add-float/2addr v8, v11

    aput v8, v4, v9

    add-int/lit8 v8, v9, 0x1

    aget-object v11, v2, v6

    aget-object v11, v11, v10

    iget v12, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    iget v13, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    mul-float/2addr v12, v13

    iget v13, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    add-float/2addr v12, v13

    invoke-virtual {v11}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDY()F

    move-result v11

    mul-float/2addr v11, v1

    add-float/2addr v11, v12

    aput v11, v4, v8

    :goto_2
    add-int/lit8 v9, v9, 0x2

    add-int/2addr v10, v3

    goto :goto_1

    :cond_8
    aget-object v5, v2, v7

    aget-object v5, v5, v7

    iget v5, v5, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    cmpg-float v6, v1, v5

    if-gez v6, :cond_9

    move v1, v5

    :cond_9
    array-length v5, v2

    sub-int/2addr v5, v3

    aget-object v5, v2, v5

    aget-object v5, v5, v7

    iget v5, v5, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_a

    array-length v1, v2

    sub-int/2addr v1, v3

    aget-object v1, v2, v1

    aget-object v1, v1, v7

    iget v1, v1, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    :cond_a
    array-length v5, v2

    move v6, v7

    move v8, v6

    :goto_3
    if-ge v6, v5, :cond_f

    move v9, v7

    move v10, v9

    :goto_4
    array-length v11, v4

    if-ge v9, v11, :cond_d

    aget-object v11, v2, v6

    aget-object v11, v11, v10

    iget v12, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    cmpg-float v12, v1, v12

    if-gtz v12, :cond_c

    iget-boolean v8, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear:Z

    if-eqz v8, :cond_b

    iget v8, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    sub-float v12, v1, v8

    iget v13, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    mul-float/2addr v12, v13

    iget v14, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->x2:F

    iget v15, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->x1:F

    invoke-static {v14, v15, v12, v15}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v12

    aput v12, v4, v9

    add-int/lit8 v12, v9, 0x1

    sub-float v8, v1, v8

    mul-float/2addr v8, v13

    iget v13, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->y2:F

    iget v11, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->y1:F

    invoke-static {v13, v11, v8, v11}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v8

    aput v8, v4, v12

    :goto_5
    move v8, v3

    goto :goto_6

    :cond_b
    invoke-virtual {v11, v1}, Landroidx/compose/animation/core/ArcSpline$Arc;->setPoint(F)V

    aget-object v8, v2, v6

    aget-object v8, v8, v10

    iget v11, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iget v12, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    mul-float/2addr v11, v12

    iget v12, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    add-float/2addr v11, v12

    aput v11, v4, v9

    add-int/lit8 v11, v9, 0x1

    iget v12, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    iget v13, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    mul-float/2addr v12, v13

    iget v8, v8, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    add-float/2addr v12, v8

    aput v12, v4, v11

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v9, v9, 0x2

    add-int/2addr v10, v3

    goto :goto_4

    :cond_d
    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    add-int/2addr v6, v3

    goto :goto_3

    :cond_f
    :goto_7
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->posArray:[F

    if-nez v1, :cond_10

    const/4 v1, 0x0

    :cond_10
    array-length v1, v1

    :goto_8
    if-ge v7, v1, :cond_13

    iget-object v2, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    :cond_11
    iget-object v4, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->posArray:[F

    if-nez v4, :cond_12

    const/4 v4, 0x0

    :cond_12
    aget v4, v4, v7

    invoke-virtual {v2, v4, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/2addr v7, v3

    goto :goto_8

    :cond_13
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_14

    const/4 v8, 0x0

    goto :goto_9

    :cond_14
    move-object v8, v0

    :goto_9
    return-object v8

    :cond_15
    invoke-virtual {v0, v4}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->findEntryForTimeMillis(I)I

    move-result v6

    invoke-virtual {v0, v6, v4, v3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getEasedTimeFromIndex(IIZ)F

    move-result v4

    iget-object v8, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {v8, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v5, v9}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    iget-object v1, v1, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->vectorValue:Landroidx/compose/animation/core/AnimationVector;

    :cond_16
    add-int/2addr v6, v3

    invoke-virtual {v8, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v5, v6}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    iget-object v2, v2, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->vectorValue:Landroidx/compose/animation/core/AnimationVector;

    :cond_17
    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v5, :cond_18

    const/4 v5, 0x0

    :cond_18
    invoke-virtual {v5}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v5

    :goto_a
    if-ge v7, v5, :cond_1a

    iget-object v6, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v6, :cond_19

    const/4 v6, 0x0

    :cond_19
    invoke-virtual {v1, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    invoke-virtual {v2, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    sget-object v10, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    int-to-float v10, v3

    sub-float/2addr v10, v4

    mul-float/2addr v10, v8

    mul-float/2addr v9, v4

    add-float/2addr v9, v10

    invoke-virtual {v6, v9, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/2addr v7, v3

    goto :goto_a

    :cond_1a
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_1b

    const/4 v8, 0x0

    goto :goto_b

    :cond_1b
    move-object v8, v0

    :goto_b
    return-object v8
.end method

.method public final getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    const-wide/32 v8, 0xf4240

    div-long v0, p1, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getDelayMillis()I

    move-result v2

    int-to-long v2, v2

    sub-long v10, v0, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getDurationMillis()I

    move-result v0

    int-to-long v14, v0

    const-wide/16 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    return-object v7

    :cond_0
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual {v6, v12, v13, v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v0, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v0, :cond_f

    long-to-int v0, v10

    invoke-virtual {v6, v0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->findEntryForTimeMillis(I)I

    move-result v1

    invoke-virtual {v6, v1, v0, v14}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getEasedTimeFromIndex(IIZ)F

    move-result v0

    iget-object v1, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    if-nez v1, :cond_1

    move-object v1, v15

    :cond_1
    iget-object v2, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->slopeArray:[F

    if-nez v2, :cond_2

    move-object v2, v15

    :cond_2
    iget-object v1, v1, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v3, v1, v14

    aget-object v3, v3, v14

    iget v3, v3, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    cmpg-float v4, v0, v3

    const/4 v5, 0x1

    if-gez v4, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    aget-object v3, v3, v14

    iget v3, v3, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    array-length v0, v1

    sub-int/2addr v0, v5

    aget-object v0, v1, v0

    aget-object v0, v0, v14

    iget v0, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    :cond_4
    :goto_0
    array-length v3, v1

    move v4, v14

    move v7, v4

    :goto_1
    if-ge v4, v3, :cond_9

    move v8, v14

    move v9, v8

    :goto_2
    array-length v10, v2

    if-ge v8, v10, :cond_7

    aget-object v10, v1, v4

    aget-object v10, v10, v9

    iget v11, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    cmpg-float v11, v0, v11

    if-gtz v11, :cond_6

    iget-boolean v7, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear:Z

    if-eqz v7, :cond_5

    iget v7, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    aput v7, v2, v8

    add-int/lit8 v7, v8, 0x1

    iget v10, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    aput v10, v2, v7

    :goto_3
    move v7, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v10, v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->setPoint(F)V

    aget-object v7, v1, v4

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDX()F

    move-result v7

    aput v7, v2, v8

    add-int/lit8 v7, v8, 0x1

    aget-object v10, v1, v4

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDY()F

    move-result v10

    aput v10, v2, v7

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_5
    iget-object v0, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->slopeArray:[F

    if-nez v0, :cond_a

    move-object v0, v15

    :cond_a
    array-length v0, v0

    :goto_6
    if-ge v14, v0, :cond_d

    iget-object v1, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v1, :cond_b

    move-object v1, v15

    :cond_b
    iget-object v2, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->slopeArray:[F

    if-nez v2, :cond_c

    move-object v2, v15

    :cond_c
    aget v2, v2, v14

    invoke-virtual {v1, v2, v14}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    move-object v15, v0

    :goto_7
    return-object v15

    :cond_f
    const-wide/16 v0, 0x1

    sub-long v0, v10, v0

    mul-long v1, v0, v8

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v5

    mul-long v1, v10, v8

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    :goto_8
    if-ge v14, v1, :cond_11

    iget-object v2, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v2, :cond_10

    move-object v2, v15

    :cond_10
    invoke-virtual {v8, v14}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v3

    invoke-virtual {v0, v14}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v14}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_11
    iget-object v0, v6, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    move-object v15, v0

    :goto_9
    return-object v15
.end method

.method public final init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    iget-object v5, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget p3, v5, Landroidx/collection/IntList;->_size:I

    new-array v3, p3, [F

    move v6, v1

    :goto_1
    if-ge v6, p3, :cond_1

    invoke-virtual {v5, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v7

    int-to-float v7, v7

    const-wide/16 v8, 0x3e8

    long-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->times:[F

    iget p3, v5, Landroidx/collection/IntList;->_size:I

    new-array v3, p3, [I

    move v6, v1

    :goto_2
    if-ge v6, p3, :cond_4

    invoke-virtual {v5, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    if-eqz v7, :cond_2

    iget v7, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->arcMode:I

    goto :goto_3

    :cond_2
    iget v7, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->initialArcMode:I

    :goto_3
    sget-object v8, Landroidx/compose/animation/core/ArcMode;->Companion:Landroidx/compose/animation/core/ArcMode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    move v0, v2

    :goto_4
    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iput-object v3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->modes:[I

    :cond_5
    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    if-nez p3, :cond_7

    move-object p3, v0

    :cond_7
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    if-nez p3, :cond_8

    move-object p3, v0

    :cond_8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    :cond_9
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p3

    rem-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v2

    add-int/2addr v2, p3

    new-array p3, v2, [F

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->posArray:[F

    new-array p3, v2, [F

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->slopeArray:[F

    iget p3, v5, Landroidx/collection/IntList;->_size:I

    new-array v3, p3, [[F

    move v6, v1

    :goto_5
    if-ge v6, p3, :cond_10

    invoke-virtual {v5, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v8

    if-nez v8, :cond_a

    new-array v7, v2, [F

    move v8, v1

    :goto_6
    if-ge v8, v2, :cond_f

    invoke-virtual {p1, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    new-array v8, v2, [F

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    move v9, v1

    :goto_7
    if-ge v9, v2, :cond_b

    iget-object v10, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->vectorValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v10, v9}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    move-object v7, v8

    goto :goto_b

    :cond_c
    iget v8, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->durationMillis:I

    if-ne v7, v8, :cond_e

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v8

    if-nez v8, :cond_d

    new-array v7, v2, [F

    move v8, v1

    :goto_8
    if-ge v8, v2, :cond_f

    invoke-virtual {p2, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    new-array v8, v2, [F

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    move v9, v1

    :goto_9
    if-ge v9, v2, :cond_b

    iget-object v10, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->vectorValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v10, v9}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_e
    new-array v8, v2, [F

    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    move v9, v1

    :goto_a
    if-ge v9, v2, :cond_b

    iget-object v10, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->vectorValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v10, v9}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_10
    new-instance p1, Landroidx/compose/animation/core/ArcSpline;

    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->modes:[I

    if-nez p2, :cond_11

    move-object p2, v0

    :cond_11
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->times:[F

    if-nez p3, :cond_12

    goto :goto_c

    :cond_12
    move-object v0, p3

    :goto_c
    invoke-direct {p1, p2, v0, v3}, Landroidx/compose/animation/core/ArcSpline;-><init>([I[F[[F)V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->arcSpline:Landroidx/compose/animation/core/ArcSpline;

    :cond_13
    return-void
.end method
