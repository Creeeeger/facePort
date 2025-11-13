.class public final Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public after:F

.field public alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

.field public before:F


# direct methods
.method private constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iput p2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;->before:F

    iput p3, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;->after:F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FF)V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    iget-object v3, v0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iget v4, v0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;->before:F

    iget v0, v0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDpNode;->after:F

    instance-of v2, v3, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0xb

    move-wide/from16 v5, p3

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v5

    :goto_0
    move-object/from16 v7, p2

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v13, 0xe

    move-wide/from16 v7, p3

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v5

    goto :goto_0

    :goto_1
    invoke-interface {v7, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v5

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move v5, v7

    :goto_2
    if-eqz v2, :cond_2

    iget v6, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_3

    :cond_2
    iget v6, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_3
    if-eqz v2, :cond_3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    goto :goto_4

    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    :goto_4
    sget-object v10, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    invoke-static {v4, v10}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v11

    goto :goto_5

    :cond_4
    move v11, v7

    :goto_5
    sub-int/2addr v11, v5

    sub-int/2addr v9, v6

    invoke-static {v11, v7, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v11

    invoke-static {v0, v10}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_6

    :cond_5
    move v0, v7

    :goto_6
    sub-int/2addr v0, v6

    add-int/2addr v0, v5

    sub-int/2addr v9, v11

    invoke-static {v0, v7, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v7

    if-eqz v2, :cond_6

    iget v0, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_7

    :cond_6
    iget v0, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    add-int/2addr v0, v11

    add-int/2addr v0, v7

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_7
    if-eqz v2, :cond_7

    iget v2, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    add-int/2addr v2, v11

    add-int/2addr v2, v7

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_8
    move v10, v2

    goto :goto_9

    :cond_7
    iget v2, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_8

    :goto_9
    new-instance v12, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;

    move-object v2, v12

    move v5, v11

    move v6, v0

    move v9, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;I)V

    invoke-static {p1, v0, v10, v12}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
