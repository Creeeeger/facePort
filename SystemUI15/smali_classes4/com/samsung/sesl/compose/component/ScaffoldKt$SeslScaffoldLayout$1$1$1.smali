.class final Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $bottomBar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field final synthetic $fab:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $fabPosition:I

.field final synthetic $layoutHeight:I

.field final synthetic $layoutWidth:I

.field final synthetic $looseConstraints:J

.field final synthetic $snackbar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field final synthetic $topBar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/WindowInsets;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "II",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "J",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    iput p5, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$fabPosition:I

    iput p6, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutWidth:I

    iput-object p7, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-wide p8, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$looseConstraints:J

    iput-object p10, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$content:Lkotlin/jvm/functions/Function3;

    iput p12, p0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutHeight:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v3, Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;->TopBar:Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$looseConstraints:J

    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v2, v15}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v5, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v5, v7, :cond_4

    move-object v3, v6

    move v5, v7

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_5

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    move v9, v3

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v5, Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;->Snackbar:Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;

    iget-object v6, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v5, v6}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-wide v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$looseConstraints:J

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v3, v15}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-interface {v5, v6, v11}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v11

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v12

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v4

    neg-int v11, v11

    sub-int/2addr v11, v12

    neg-int v4, v4

    invoke-static {v11, v4, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v11

    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v5, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v5, v7, :cond_a

    move-object v3, v6

    move v5, v7

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    :goto_4
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_b

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    move v6, v3

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    if-ge v4, v8, :cond_f

    move-object v3, v5

    move v4, v8

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_e

    :goto_6
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_10

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    move/from16 v16, v3

    goto :goto_7

    :cond_10
    const/16 v16, 0x0

    :goto_7
    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v4, Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;->Fab:Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-wide v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$looseConstraints:J

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v5}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-interface {v4, v5, v11}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v11

    invoke-interface {v5}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    invoke-interface {v4, v5}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v15

    neg-int v11, v11

    sub-int/2addr v11, v2

    neg-int v2, v15

    move-object v15, v3

    invoke-static {v11, v2, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v2

    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    if-eqz v3, :cond_11

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object v3, v15

    const/16 v15, 0xa

    goto :goto_8

    :cond_13
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v15, 0x1

    xor-int/2addr v2, v15

    if-eqz v2, :cond_1e

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    goto :goto_a

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_a

    :cond_15
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    if-ge v4, v7, :cond_17

    move-object v3, v5

    move v4, v7

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_16

    :goto_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    iget v5, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_b

    :cond_18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_b

    :cond_19
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    :cond_1a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v3, v8, :cond_1b

    move-object v2, v4

    move v3, v8

    :cond_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    :goto_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    iget v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$fabPosition:I

    sget-object v4, Lcom/samsung/sesl/compose/component/SeslFabPosition;->Companion:Lcom/samsung/sesl/compose/component/SeslFabPosition$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/samsung/sesl/compose/component/SeslFabPosition;->End:I

    if-ne v3, v4, :cond_1d

    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v4, :cond_1c

    iget v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutWidth:I

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget v7, Lcom/samsung/sesl/compose/component/ScaffoldKt;->FabSpacing:F

    invoke-interface {v4, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    goto :goto_c

    :cond_1c
    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget v4, Lcom/samsung/sesl/compose/component/ScaffoldKt;->FabSpacing:F

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    goto :goto_c

    :cond_1d
    iget v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutWidth:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    :goto_c
    new-instance v4, Lcom/samsung/sesl/compose/component/SeslFabPlacement;

    invoke-direct {v4, v3, v5, v2}, Lcom/samsung/sesl/compose/component/SeslFabPlacement;-><init>(III)V

    move-object v2, v4

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    :goto_d
    iget-object v3, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v4, Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;->BottomBar:Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;

    new-instance v5, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1$bottomBarPlaceables$1;

    iget-object v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    invoke-direct {v5, v2, v7}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1$bottomBarPlaceables$1;-><init>(Lcom/samsung/sesl/compose/component/SeslFabPlacement;Lkotlin/jvm/functions/Function2;)V

    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, 0x45e6a81e

    invoke-direct {v7, v8, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v3, v4, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    iget-wide v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$looseConstraints:J

    new-instance v11, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v7, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1f
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v3, 0x0

    goto :goto_f

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_f

    :cond_21
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v4, v8, :cond_23

    move-object v3, v7

    move v4, v8

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_22

    :goto_f
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_24

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10

    :cond_24
    const/4 v3, 0x0

    :goto_10
    if-eqz v2, :cond_26

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget v7, v2, Lcom/samsung/sesl/compose/component/SeslFabPlacement;->height:I

    if-nez v3, :cond_25

    sget v8, Lcom/samsung/sesl/compose/component/ScaffoldKt;->FabSpacing:F

    invoke-interface {v4, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v8

    add-int/2addr v8, v7

    invoke-interface {v5, v4}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v4

    add-int/2addr v4, v8

    goto :goto_11

    :cond_25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    sget v7, Lcom/samsung/sesl/compose/component/ScaffoldKt;->FabSpacing:F

    invoke-interface {v4, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    add-int/2addr v4, v5

    :goto_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_12

    :cond_26
    const/4 v4, 0x0

    :goto_12
    if-eqz v6, :cond_29

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_13

    :cond_27
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_13

    :cond_28
    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v5, v7}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v5

    :goto_13
    add-int/2addr v5, v6

    move/from16 v17, v5

    goto :goto_14

    :cond_29
    const/16 v17, 0x0

    :goto_14
    iget-object v10, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v8, Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;->MainContent:Lcom/samsung/sesl/compose/component/SeslScaffoldLayoutContent;

    new-instance v7, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1$bodyContentPlaceables$1;

    iget-object v6, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$content:Lkotlin/jvm/functions/Function3;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move-object v5, v7

    move-object/from16 p1, v4

    move-object v4, v7

    move-object v7, v10

    move-object/from16 v20, v8

    move-object v8, v14

    move-object/from16 v21, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v22, v12

    move-object v12, v3

    move-object/from16 v23, v13

    move-object/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1$bodyContentPlaceables$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Ljava/util/List;IFLjava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function3;)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x4e57892d    # 9.0402285E8f

    invoke-direct {v5, v6, v15, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    invoke-interface {v4, v6, v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$looseConstraints:J

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v8, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_16

    :cond_2b
    const/4 v6, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v5, v6, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_17

    :cond_2c
    iget v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutWidth:I

    iget-object v5, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget v7, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutHeight:I

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    sub-int v10, v4, v16

    div-int/lit8 v10, v10, 0x2

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-interface {v5, v6, v11}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v11

    add-int/2addr v11, v10

    sub-int v10, v7, v17

    invoke-static {v1, v9, v11, v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_18

    :cond_2d
    iget v4, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutHeight:I

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, v4, v7

    const/4 v10, 0x0

    invoke-static {v1, v6, v10, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_19

    :cond_2e
    const/4 v10, 0x0

    goto :goto_19

    :cond_2f
    if-eqz v2, :cond_31

    iget v0, v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1$1;->$layoutHeight:I

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v2, Lcom/samsung/sesl/compose/component/SeslFabPlacement;->left:I

    invoke-static {v1, v4, v6, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_1a

    :cond_30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
