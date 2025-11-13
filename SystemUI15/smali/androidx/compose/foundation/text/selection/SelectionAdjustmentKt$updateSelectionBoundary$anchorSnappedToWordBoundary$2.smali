.class final Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $currentRawLine$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field

.field final synthetic $currentRawOffset:I

.field final synthetic $info:Landroidx/compose/foundation/text/selection/SelectableInfo;

.field final synthetic $otherRawOffset:I

.field final synthetic $this_updateSelectionBoundary:Landroidx/compose/foundation/text/selection/SelectionLayout;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lkotlin/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectableInfo;",
            "II",
            "Landroidx/compose/foundation/text/selection/SelectionLayout;",
            "Lkotlin/Lazy;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iput p2, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$currentRawOffset:I

    iput p3, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$otherRawOffset:I

    iput-object p4, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$this_updateSelectionBoundary:Landroidx/compose/foundation/text/selection/SelectionLayout;

    iput-object p5, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$currentRawLine$delegate:Lkotlin/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$currentRawLine$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$currentRawOffset:I

    iget v3, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$otherRawOffset:I

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;->$this_updateSelectionBoundary:Landroidx/compose/foundation/text/selection/SelectionLayout;

    check-cast p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    iget-boolean v4, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object p0

    sget-object v5, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p0, v5, :cond_0

    move p0, v7

    goto :goto_0

    :cond_0
    move p0, v6

    :goto_0
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v5, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v8

    sget-object v5, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    const/16 v5, 0x20

    shr-long v10, v8, v5

    long-to-int v5, v10

    iget-object v10, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v10, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v11

    iget-object v12, v10, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    if-ne v11, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v12, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    if-lt v1, v5, :cond_2

    sub-int/2addr v5, v7

    invoke-virtual {v10, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v5

    :goto_1
    const-wide v13, 0xffffffffL

    and-long/2addr v8, v13

    long-to-int v8, v8

    invoke-virtual {v10, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v9

    if-ne v9, v1, :cond_3

    goto :goto_2

    :cond_3
    iget v8, v12, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    if-lt v1, v8, :cond_4

    sub-int/2addr v8, v7

    invoke-virtual {v10, v8, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v8

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v1, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v8

    :goto_2
    if-ne v5, v3, :cond_5

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    goto :goto_4

    :cond_5
    if-ne v8, v3, :cond_6

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    goto :goto_4

    :cond_6
    xor-int/2addr p0, v4

    if-eqz p0, :cond_7

    if-gt v2, v8, :cond_8

    goto :goto_3

    :cond_7
    if-lt v2, v5, :cond_9

    :cond_8
    move v5, v8

    :cond_9
    :goto_3
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    :goto_4
    return-object p0
.end method
