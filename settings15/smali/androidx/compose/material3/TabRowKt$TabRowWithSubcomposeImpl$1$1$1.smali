.class final Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;
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
.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $indicator:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v5, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v12

    sget-object v1, Landroidx/compose/material3/TabSlots;->Tabs:Landroidx/compose/material3/TabSlots;

    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    if-lez v2, :cond_0

    div-int v3, v12, v2

    iput v3, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget v13, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v10, v13}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v13

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v14, v14, v13, v13}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(IIII)J

    move-result-wide v14

    invoke-interface {v10, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v8, v13}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v8

    iget v10, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v11, v8}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v8

    sget v10, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    const/4 v14, 0x2

    int-to-float v14, v14

    mul-float/2addr v10, v14

    sub-float/2addr v8, v10

    new-instance v10, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v10, v8}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    const/16 v8, 0x18

    int-to-float v8, v8

    new-instance v14, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v14, v8}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v10, v14}, Landroidx/compose/ui/unit/Dp;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_3

    goto :goto_3

    :cond_3
    move-object v10, v14

    :goto_3
    iget v8, v10, Landroidx/compose/ui/unit/Dp;->value:F

    new-instance v10, Landroidx/compose/material3/TabPosition;

    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v11, v14}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v14

    int-to-float v15, v3

    mul-float/2addr v14, v15

    iget v15, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v11, v15}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v15

    invoke-direct {v10, v14, v15, v8}, Landroidx/compose/material3/TabPosition;-><init>(FFF)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v14, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    move-object v0, v14

    move-object v1, v7

    move-object v2, v11

    move v7, v13

    move v10, v12

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;JILkotlin/jvm/functions/Function3;Ljava/util/List;I)V

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
