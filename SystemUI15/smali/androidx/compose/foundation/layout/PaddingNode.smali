.class public final Landroidx/compose/foundation/layout/PaddingNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public bottom:F

.field public end:F

.field public rtlAware:Z

.field public start:F

.field public top:F


# direct methods
.method private constructor <init>(FFFFZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingNode;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingNode;->bottom:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    return-void
.end method

.method public constructor <init>(FFFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    int-to-float p1, v0

    sget-object p7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :cond_0
    move v2, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    int-to-float p2, v0

    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :cond_1
    move v3, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    int-to-float p3, v0

    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :cond_2
    move v4, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    int-to-float p4, v0

    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :cond_3
    move v5, p4

    const/4 v7, 0x0

    move-object v1, p0

    move v6, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/PaddingNode;-><init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/PaddingNode;-><init>(FFFFZ)V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 5

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingNode;->end:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingNode;->bottom:F

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    add-int/2addr v2, v0

    neg-int v0, v1

    neg-int v3, v2

    invoke-static {v0, v3, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    add-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v0

    iget v1, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    add-int/2addr v1, v2

    invoke-static {v1, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result p3

    new-instance p4, Landroidx/compose/foundation/layout/PaddingNode$measure$1;

    invoke-direct {p4, p0, p2, p1}, Landroidx/compose/foundation/layout/PaddingNode$measure$1;-><init>(Landroidx/compose/foundation/layout/PaddingNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V

    invoke-static {p1, v0, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
