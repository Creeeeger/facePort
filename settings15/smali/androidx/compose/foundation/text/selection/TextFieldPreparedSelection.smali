.class public final Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field public final currentValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field public final layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

.field public final offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final originalSelection:J

.field public final originalText:Landroidx/compose/ui/text/AnnotatedString;

.field public selection:J

.field public final state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V
    .locals 4

    iget-object v0, p1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    if-eqz p3, :cond_0

    iget-object v1, p3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-wide v2, p1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    iput-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->originalSelection:J

    iput-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p4, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iput-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->currentValue:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    return-void
.end method


# virtual methods
.method public final deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 4

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    filled-new-array {p1, v0}, [Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLineEndByOffset()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getLineStartByOffset()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getNextWordOffset()Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->transformedEndOffset()I

    move-result v1

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object p0, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v2

    sget v4, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-gt v2, v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public final getPreviousWordOffset()Ljava/lang/Integer;
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->transformedEndOffset()I

    move-result v1

    :goto_0
    if-gtz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v2

    sget v4, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    if-lt v2, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public final isLtr()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->transformedEndOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->transformedEndOffset()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iget-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    iget v2, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p2, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget v2, p2, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    if-lt v0, v2, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result v2

    const/4 v3, 0x1

    int-to-float v4, v3

    sub-float/2addr v2, v4

    iget-object v1, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v5

    cmpl-float v5, v4, v5

    if-gez v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    :cond_4
    invoke-virtual {p1, v0, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method public final jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I
    .locals 5

    iget-object v0, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->innerTextFieldCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->currentValue:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    sget v3, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v1

    iget-object p1, p1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v0

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    int-to-float p2, p2

    mul-float/2addr v0, p2

    iget p2, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    add-float/2addr v0, p2

    iget p2, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {p2, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method public final moveCursorNextByParagraph()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iput-object v0, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(ILjava/lang/CharSequence;)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(ILjava/lang/CharSequence;)I

    move-result v1

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    :cond_1
    return-void
.end method

.method public final moveCursorPrevByParagraph()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iput-object v0, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(ILjava/lang/CharSequence;)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(ILjava/lang/CharSequence;)I

    move-result v1

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    :cond_1
    return-void
.end method

.method public final moveCursorToLineEnd()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iput-object v0, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getLineEndByOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public final moveCursorToLineStart()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    iput-object v0, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getLineStartByOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public final selectMovement()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const/16 v0, 0x20

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->originalSelection:J

    shr-long v0, v1, v0

    long-to-int v0, v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    :cond_0
    return-void
.end method

.method public final setSelection(II)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    return-void
.end method

.method public final transformedEndOffset()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    sget v2, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p0

    return p0
.end method
