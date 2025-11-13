.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final androidMatrix:Landroid/graphics/Matrix;

.field public final builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

.field public hasPendingImmediateRequest:Z

.field public includeCharacterBounds:Z

.field public includeEditorBounds:Z

.field public includeInsertionMarker:Z

.field public includeLineBounds:Z

.field public innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

.field public final inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

.field public final localToScreen:Lkotlin/jvm/functions/Function1;

.field public final lock:Ljava/lang/Object;

.field public final matrix:[F

.field public monitorEnabled:Z

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/foundation/text/input/internal/InputMethodManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->lock:Ljava/lang/Object;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final updateCursorAnchorInfo()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    check-cast v2, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, v2, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    invoke-static {v3}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    invoke-static {v3}, Landroidx/compose/ui/graphics/Matrix;->box-impl([F)Landroidx/compose/ui/graphics/Matrix;

    move-result-object v4

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    neg-float v4, v4

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->top:F

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl(FFF[F)V

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    invoke-static {v4, v3}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-object v15, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeInsertionMarker:Z

    iget-boolean v12, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeCharacterBounds:Z

    iget-boolean v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeEditorBounds:Z

    iget-boolean v10, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeLineBounds:Z

    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v3, v7}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v17, v2

    iget-wide v1, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-virtual {v3, v7, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eqz v8, :cond_8

    if-gez v7, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v5, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 v8, 0x20

    move v9, v2

    iget-wide v1, v14, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    shr-long/2addr v1, v8

    long-to-int v1, v1

    int-to-float v1, v1

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v2, v6, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v8

    iget v1, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v15, v8, v1}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v1

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v15, v8, v2}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v2

    invoke-virtual {v14, v9}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v6

    sget-object v9, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v6, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    or-int/lit8 v9, v9, 0x2

    :cond_6
    if-eqz v6, :cond_7

    or-int/lit8 v1, v9, 0x4

    goto :goto_3

    :cond_7
    move v1, v9

    :goto_3
    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    move-object v7, v3

    move v6, v10

    move v10, v2

    move/from16 v18, v11

    move v11, v2

    move v2, v12

    move v12, v1

    invoke-virtual/range {v7 .. v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_5

    :cond_8
    :goto_4
    move v6, v10

    move/from16 v18, v11

    move v2, v12

    :goto_5
    iget-object v1, v14, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    if-eqz v2, :cond_e

    const/4 v2, -0x1

    iget-object v7, v4, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz v7, :cond_9

    iget-wide v8, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v8

    goto :goto_6

    :cond_9
    move v8, v2

    :goto_6
    if-eqz v7, :cond_a

    iget-wide v9, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v2

    :cond_a
    if-ltz v8, :cond_e

    if-ge v8, v2, :cond_e

    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v5, v8}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v4

    invoke-interface {v5, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v7

    sub-int v9, v7, v4

    mul-int/lit8 v9, v9, 0x4

    new-array v12, v9, [F

    invoke-static {v4, v7}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10, v12}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    move v11, v8

    :goto_7
    if-ge v11, v2, :cond_e

    invoke-interface {v5, v11}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v7

    sub-int v8, v7, v4

    mul-int/lit8 v8, v8, 0x4

    new-instance v9, Landroidx/compose/ui/geometry/Rect;

    aget v10, v12, v8

    const/16 v16, 0x1

    add-int/lit8 v19, v8, 0x1

    move/from16 v20, v2

    aget v2, v12, v19

    add-int/lit8 v19, v8, 0x2

    move/from16 v21, v4

    aget v4, v12, v19

    add-int/lit8 v8, v8, 0x3

    aget v8, v12, v8

    invoke-direct {v9, v10, v2, v4, v8}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-virtual {v15, v9}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v2

    iget v4, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v8, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v15, v4, v8}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v9, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v8, v9, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v15, v4, v8}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    or-int/lit8 v2, v2, 0x2

    :cond_c
    invoke-virtual {v14, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v4, v7, :cond_d

    or-int/lit8 v2, v2, 0x4

    :cond_d
    iget v4, v9, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v10, v9, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v8, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v9, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    move-object v7, v3

    move/from16 v19, v8

    move v8, v11

    move/from16 v22, v9

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v22

    move/from16 v22, v11

    move v11, v4

    move-object v4, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move v13, v2

    invoke-virtual/range {v7 .. v13}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v2, 0x1

    add-int/lit8 v11, v22, 0x1

    move-object v12, v4

    move-object/from16 v13, v19

    move/from16 v2, v20

    move/from16 v4, v21

    goto :goto_7

    :cond_e
    move-object/from16 v19, v13

    if-eqz v18, :cond_f

    sget v2, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi33Helper;->$r8$clinit:I

    new-instance v2, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setHandwritingBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_f
    if-eqz v6, :cond_10

    sget v2, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi34Helper;->$r8$clinit:I

    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, v15, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v2

    iget v4, v15, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v4

    if-gt v2, v4, :cond_10

    :goto_8
    invoke-virtual {v14, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v5

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result v6

    invoke-virtual {v14, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v7

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eq v2, v4, :cond_10

    const/4 v5, 0x1

    add-int/2addr v2, v5

    goto :goto_8

    :cond_10
    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    move-object/from16 v3, v17

    iget-object v3, v3, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    return-void
.end method
