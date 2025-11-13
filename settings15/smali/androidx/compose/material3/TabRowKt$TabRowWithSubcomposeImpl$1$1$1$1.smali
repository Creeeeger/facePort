.class final Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
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
.field final synthetic $constraints:J

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

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabRowHeight:I

.field final synthetic $tabRowWidth:I

.field final synthetic $tabWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;JILkotlin/jvm/functions/Function3;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabPlaceables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iput-wide p5, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$constraints:J

    iput p7, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabRowHeight:I

    iput-object p8, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iput-object p9, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabPositions:Ljava/util/List;

    iput p10, p0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabRowWidth:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabPlaceables:Ljava/util/List;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    iget v8, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    mul-int/2addr v8, v6

    invoke-static {v1, v7, v8, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v3, Landroidx/compose/material3/TabSlots;->Divider:Landroidx/compose/material3/TabSlots;

    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$constraints:J

    iget v13, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabRowHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    move v15, v5

    :goto_1
    if-ge v15, v14, :cond_1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    const/4 v9, 0x0

    const/16 v16, 0xb

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v3

    move-object v5, v12

    move/from16 v12, v16

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int v6, v13, v6

    const/4 v7, 0x0

    invoke-static {v1, v5, v7, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v3, Landroidx/compose/material3/TabSlots;->Indicator:Landroidx/compose/material3/TabSlots;

    new-instance v4, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1$3;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iget-object v6, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabPositions:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x60ada49c    # 1.0009838E20f

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v2, v3, v5}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    iget v3, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabRowWidth:I

    iget v0, v0, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1;->$tabRowHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-ltz v3, :cond_2

    if-ltz v0, :cond_2

    invoke-static {v3, v3, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "width("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") and height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") must be >= 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
