.class final Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
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

.field final synthetic $snackbar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $topBar:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    iput-object p5, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v2, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v13

    const/4 v5, 0x0

    const/16 v8, 0xa

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v9

    sget-object v1, Landroidx/compose/material3/ScaffoldLayoutContent;->TopBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v4, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v8, v4, :cond_3

    move v5, v8

    :goto_1
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v3, v7, :cond_2

    move-object v1, v6

    move v3, v7

    :cond_2
    if-eq v5, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_4

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v12

    :goto_3
    sget-object v1, Landroidx/compose/material3/ScaffoldLayoutContent;->Snackbar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v1, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v6, v12

    :goto_4
    if-ge v6, v4, :cond_5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-interface {v3, v15, v8}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v8

    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    invoke-interface {v3, v15, v12}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v12

    move-object/from16 v17, v1

    invoke-interface {v3, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v1

    neg-int v8, v8

    sub-int/2addr v8, v12

    neg-int v1, v1

    move-object v12, v3

    move/from16 v18, v4

    invoke-static {v8, v1, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object v3, v12

    move-object/from16 v1, v17

    move/from16 v4, v18

    const/4 v8, 0x1

    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v4, v3, :cond_9

    move-object v4, v2

    move v2, v1

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v2, v8, :cond_7

    move-object v4, v6

    move v2, v8

    :cond_7
    if-eq v1, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    move-object v2, v4

    :cond_9
    :goto_6
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    if-eqz v2, :cond_a

    iget v1, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const/4 v6, 0x1

    if-gt v6, v4, :cond_e

    move-object v6, v3

    move v3, v2

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    iget v12, v12, Landroidx/compose/ui/layout/Placeable;->width:I

    if-ge v3, v12, :cond_c

    move-object v6, v8

    move v3, v12

    :cond_c
    if-eq v2, v4, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    move-object v3, v6

    :cond_e
    :goto_9
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_f

    iget v2, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    move v12, v2

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    :goto_a
    sget-object v2, Landroidx/compose/material3/ScaffoldLayoutContent;->Fab:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_12

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    move/from16 v17, v4

    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, v15, v4}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v4

    move-object/from16 v19, v7

    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-interface {v3, v15, v7}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v7

    move/from16 v20, v13

    invoke-interface {v3, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v13

    neg-int v4, v4

    sub-int/2addr v4, v7

    neg-int v7, v13

    move-object v13, v3

    invoke-static {v4, v7, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    if-eqz v3, :cond_10

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_11

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v6, v6, 0x1

    move-object v3, v13

    move/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    move/from16 v13, v20

    goto :goto_b

    :cond_12
    move-object/from16 v19, v7

    move/from16 v20, v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x0

    goto :goto_e

    :cond_13
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    const/4 v7, 0x1

    if-gt v7, v6, :cond_16

    move-object v7, v4

    move v4, v2

    const/4 v2, 0x1

    :goto_d
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    if-ge v4, v3, :cond_14

    move v4, v3

    move-object v7, v13

    :cond_14
    if-eq v2, v6, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    move-object v4, v7

    :cond_16
    :goto_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget v2, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v4, 0x0

    goto :goto_11

    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    const/4 v7, 0x1

    if-gt v7, v6, :cond_1a

    move-object v7, v4

    move v4, v3

    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v7

    move-object v7, v13

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v4, v7, :cond_18

    move v4, v7

    move-object v7, v13

    goto :goto_10

    :cond_18
    move-object/from16 v7, v18

    :goto_10
    if-eq v3, v6, :cond_19

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    move-object v4, v7

    :cond_1a
    :goto_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget v3, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    iget v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    if-nez v4, :cond_1b

    const/4 v6, 0x1

    goto :goto_12

    :cond_1b
    const/4 v6, 0x0

    :goto_12
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eqz v6, :cond_1d

    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    if-ne v4, v7, :cond_1c

    sget v2, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_15

    :cond_1c
    sget v4, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    :goto_13
    sub-int v4, v14, v4

    sub-int v2, v4, v2

    goto :goto_15

    :cond_1d
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v13, 0x3

    if-ne v4, v13, :cond_20

    :goto_14
    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    if-ne v4, v7, :cond_1f

    sget v4, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    goto :goto_13

    :cond_1f
    sget v2, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_15

    :cond_20
    sub-int v2, v14, v2

    div-int/2addr v2, v6

    :goto_15
    new-instance v4, Landroidx/compose/material3/FabPlacement;

    invoke-direct {v4, v2, v3}, Landroidx/compose/material3/FabPlacement;-><init>(II)V

    move-object v13, v4

    goto :goto_16

    :cond_21
    const/4 v13, 0x0

    :goto_16
    sget-object v2, Landroidx/compose/material3/ScaffoldLayoutContent;->BottomBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    new-instance v3, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bottomBarPlaceables$1;

    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    invoke-direct {v3, v4}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bottomBarPlaceables$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x7ff00d2f

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v15, v2, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_22

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v6, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v16, v8

    const/4 v2, 0x0

    goto :goto_19

    :cond_23
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    move-object/from16 v16, v8

    const/4 v8, 0x1

    if-gt v8, v4, :cond_25

    move v6, v8

    :goto_18
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    if-ge v3, v8, :cond_24

    move v3, v8

    move-object/from16 v2, v21

    :cond_24
    if-eq v6, v4, :cond_25

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    goto :goto_18

    :cond_25
    :goto_19
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    if-eqz v2, :cond_26

    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_1a

    :cond_26
    const/16 v21, 0x0

    :goto_1a
    if-eqz v13, :cond_29

    iget v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget v4, v13, Landroidx/compose/material3/FabPlacement;->height:I

    if-eqz v21, :cond_28

    const/4 v6, 0x3

    if-ne v2, v6, :cond_27

    goto :goto_1c

    :cond_27
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    sget v3, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v15, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    :goto_1b
    add-int/2addr v3, v2

    goto :goto_1d

    :cond_28
    :goto_1c
    sget v2, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v3, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v3

    goto :goto_1b

    :goto_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_1e

    :cond_29
    const/16 v17, 0x0

    :goto_1e
    if-eqz v1, :cond_2c

    if-eqz v17, :cond_2a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1f

    :cond_2a
    if-eqz v21, :cond_2b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1f

    :cond_2b
    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v2, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v2

    :goto_1f
    add-int/2addr v1, v2

    move/from16 v22, v1

    goto :goto_20

    :cond_2c
    const/16 v22, 0x0

    :goto_20
    sget-object v8, Landroidx/compose/material3/ScaffoldLayoutContent;->MainContent:Landroidx/compose/material3/ScaffoldLayoutContent;

    new-instance v6, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bodyContentPlaceables$1;

    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$content:Lkotlin/jvm/functions/Function3;

    move-object v1, v6

    move-object v3, v15

    move-object/from16 v23, v4

    move-object v4, v11

    move/from16 p1, v12

    const/16 v18, 0x0

    move-object v12, v6

    move-object v6, v7

    move-object/from16 v24, v7

    move-object/from16 v7, v21

    move-object/from16 v26, v8

    move/from16 v25, v14

    const/4 v14, 0x1

    move-object/from16 v8, v23

    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bodyContentPlaceables$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Ljava/util/List;ILjava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function3;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x48526920

    invoke-direct {v1, v2, v14, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object/from16 v2, v26

    invoke-interface {v15, v2, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v12, v18

    :goto_21
    if-ge v12, v3, :cond_2d

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v4, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_2d
    new-instance v14, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$1;

    iget-object v8, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    move-object v0, v14

    move-object v1, v2

    move-object v2, v11

    move-object/from16 v3, v19

    move-object/from16 v4, v24

    move-object v5, v13

    move/from16 v6, v25

    move/from16 v7, p1

    move-object v9, v15

    move/from16 v10, v20

    move/from16 v11, v22

    move-object/from16 v12, v21

    move/from16 v27, v20

    move-object/from16 v13, v16

    move-object/from16 v29, v14

    move/from16 v28, v25

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/material3/FabPlacement;IILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V

    move/from16 v1, v27

    move/from16 v0, v28

    move-object/from16 v2, v29

    invoke-static {v15, v0, v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
