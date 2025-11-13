.class public final Lcom/android/compose/animation/scene/TransformationSpecImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/TransformationSpec;


# instance fields
.field public final cache:Ljava/util/Map;

.field public final distance:Lcom/android/compose/animation/scene/UserActionDistance;

.field public final progressSpec:Landroidx/compose/animation/core/AnimationSpec;

.field public final swipeSpec:Landroidx/compose/animation/core/SpringSpec;

.field public final transformations:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/SpringSpec;Lcom/android/compose/animation/scene/UserActionDistance;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec;",
            "Landroidx/compose/animation/core/SpringSpec;",
            "Lcom/android/compose/animation/scene/UserActionDistance;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/compose/animation/scene/transformation/Transformation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->progressSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p2, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->swipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iput-object p3, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->distance:Lcom/android/compose/animation/scene/UserActionDistance;

    iput-object p4, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->cache:Ljava/util/Map;

    return-void
.end method

.method public static final computeTransformations$onPropertyTransformation(Lcom/android/compose/animation/scene/TransformationSpecImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/compose/animation/scene/ElementKey;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V
    .locals 8

    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/Translate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/AnchoredTranslate;

    :goto_2
    if-eqz v0, :cond_3

    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/android/compose/animation/scene/transformation/Transformation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "offset"

    invoke-static {p3, p2, p0}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->throwIfNotNull(Lcom/android/compose/animation/scene/transformation/Transformation;Lcom/android/compose/animation/scene/ElementKey;Ljava/lang/String;)V

    iput-object p6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    :cond_3
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/ScaleSize;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    instance-of v1, p7, Lcom/android/compose/animation/scene/transformation/AnchoredSize;

    :goto_3
    if-eqz v1, :cond_5

    iget-object p1, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/compose/animation/scene/transformation/Transformation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "size"

    invoke-static {p1, p2, p0}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->throwIfNotNull(Lcom/android/compose/animation/scene/transformation/Transformation;Lcom/android/compose/animation/scene/ElementKey;Ljava/lang/String;)V

    iput-object p6, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/DrawScale;

    if-eqz v0, :cond_6

    iget-object p1, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/compose/animation/scene/transformation/Transformation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "drawScale"

    invoke-static {p1, p2, p0}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->throwIfNotNull(Lcom/android/compose/animation/scene/transformation/Transformation;Lcom/android/compose/animation/scene/ElementKey;Ljava/lang/String;)V

    iput-object p6, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/Fade;

    if-eqz v0, :cond_7

    iget-object p1, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/compose/animation/scene/transformation/Transformation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "alpha"

    invoke-static {p1, p2, p0}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->throwIfNotNull(Lcom/android/compose/animation/scene/transformation/Transformation;Lcom/android/compose/animation/scene/ElementKey;Ljava/lang/String;)V

    iput-object p6, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    instance-of v0, p7, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;

    if-eqz v0, :cond_8

    check-cast p7, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;

    iget-object v7, p7, Lcom/android/compose/animation/scene/transformation/RangedPropertyTransformation;->delegate:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->computeTransformations$onPropertyTransformation(Lcom/android/compose/animation/scene/TransformationSpecImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/compose/animation/scene/ElementKey;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public static throwIfNotNull(Lcom/android/compose/animation/scene/transformation/Transformation;Lcom/android/compose/animation/scene/ElementKey;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has multiple "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " transformations"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/android/compose/animation/scene/TransformationSpecImpl;->cache:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v11, v1

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v7, v8, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v5, v0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/transformation/Transformation;

    invoke-interface {v0}, Lcom/android/compose/animation/scene/transformation/Transformation;->getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/android/compose/animation/scene/ElementMatcher;->matches(Lcom/android/compose/animation/scene/ElementKey;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    move/from16 v17, v4

    move/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_3

    :cond_1
    instance-of v1, v0, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    if-eqz v1, :cond_2

    const-string v1, "shared"

    invoke-static {v5, v9, v1}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->throwIfNotNull(Lcom/android/compose/animation/scene/transformation/Transformation;Lcom/android/compose/animation/scene/ElementKey;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-eqz v1, :cond_3

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v17, v4

    move-object v4, v14

    move-object/from16 v18, v5

    move-object v5, v15

    move/from16 v19, v6

    move-object/from16 v6, v16

    move-object/from16 v20, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->computeTransformations$onPropertyTransformation(Lcom/android/compose/animation/scene/TransformationSpecImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/compose/animation/scene/ElementKey;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    :goto_2
    move-object/from16 v5, v18

    :goto_3
    add-int/lit8 v4, v17, 0x1

    move/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_0

    :cond_4
    move-object/from16 v18, v5

    new-instance v0, Lcom/android/compose/animation/scene/ElementTransformations;

    move-object/from16 v22, v18

    check-cast v22, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    iget-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/android/compose/animation/scene/ElementTransformations;-><init>(Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V

    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v0, Lcom/android/compose/animation/scene/ElementTransformations;

    return-object v0
.end method
