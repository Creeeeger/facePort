.class final Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;

    check-cast p2, Lcom/android/systemui/statusbar/phone/BoundsPair;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;-><init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->label:I

    if-nez v1, :cond_14

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;

    iget-object v2, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/phone/BoundsPair;

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$modifiedStatusBarAttributes$1;->this$0:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v4, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearanceRegions:Ljava/util/List;

    iget-object v5, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->letterboxDetails:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget v8, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearance:I

    if-eqz v6, :cond_13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearance:Ljava/lang/Integer;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearanceRegions:Ljava/util/List;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxes:Ljava/util/List;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->isLetterboxBackgroundMultiColored:Z

    if-eqz v9, :cond_1

    goto :goto_4

    :cond_1
    check-cast v5, Ljava/lang/Iterable;

    instance-of v9, v5, Ljava/util/Collection;

    if-eqz v9, :cond_2

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_5

    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-virtual {v11}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/BoundsPair;->start:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_0

    :cond_4
    iget v14, v13, Landroid/graphics/Rect;->left:I

    iget v15, v13, Landroid/graphics/Rect;->top:I

    iget v3, v13, Landroid/graphics/Rect;->right:I

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v14, v15, v3, v13}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_8

    invoke-virtual {v11}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/BoundsPair;->end:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    iget v14, v11, Landroid/graphics/Rect;->right:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v12, v13, v14, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_3

    :cond_8
    :goto_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    or-int/lit8 v5, v8, 0x20

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;-><init>(ILjava/util/List;)V

    goto/16 :goto_d

    :cond_9
    :goto_5
    and-int/lit8 v3, v8, -0x21

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/AppearanceRegion;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-virtual {v14}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxFullBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v11}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    :goto_7
    check-cast v13, Lcom/android/internal/statusbar/LetterboxDetails;

    if-nez v13, :cond_c

    goto :goto_8

    :cond_c
    new-instance v12, Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual {v11}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v11

    invoke-virtual {v13}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    move-object v11, v12

    :goto_8
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/statusbar/LetterboxDetails;

    iget v12, v6, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I

    iget v13, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->darkAppearanceIconColor:I

    invoke-static {v13, v12}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v13

    iget v15, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lightAppearanceIconColor:I

    invoke-static {v15, v12}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v15

    cmpl-double v12, v15, v13

    if-lez v12, :cond_e

    const/16 v12, 0x8

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v11}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxFullBounds()Landroid/graphics/Rect;

    move-result-object v11

    new-instance v14, Landroid/graphics/Rect;

    iget v15, v11, Landroid/graphics/Rect;->left:I

    iget v9, v11, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v10, v13, Landroid/graphics/Rect;->top:I

    invoke-direct {v14, v15, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget v9, v11, Landroid/graphics/Rect;->left:I

    iget v10, v11, Landroid/graphics/Rect;->top:I

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v17, v5

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v9, v10, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget v10, v11, Landroid/graphics/Rect;->top:I

    iget v15, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v18, v6

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v9, v10, v15, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v9, v11, Landroid/graphics/Rect;->left:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v9, v10, v13, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/graphics/Rect;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v14, v9, v7

    const/4 v7, 0x2

    aput-object v5, v9, v7

    const/4 v5, 0x3

    aput-object v6, v9, v5

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    const/4 v11, 0x1

    xor-int/2addr v9, v11

    if-eqz v9, :cond_f

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    const/4 v11, 0x1

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    new-instance v13, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v13, v12, v9}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v7

    move v7, v11

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_9

    :cond_12
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    invoke-direct {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;-><init>(ILjava/util/List;)V

    move-object v3, v5

    :goto_d
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    new-instance v0, Lkotlin/Pair;

    iget v4, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:Ljava/util/List;

    invoke-direct {v0, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_13
    new-instance v0, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->navbarColorManagedByIme:Z

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$ModifiedStatusBarAttributes;-><init>(ILjava/util/List;ZLcom/android/systemui/statusbar/phone/BoundsPair;)V

    move-object v3, v4

    :goto_f
    return-object v3

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
