.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V
    .locals 0

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
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    check-cast v1, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    new-instance v3, Landroidx/compose/ui/graphics/Matrix;

    invoke-direct {v3, v2}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->left:F

    neg-float v3, v3

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-object v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v15, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeInsertionMarker:Z

    iget-boolean v12, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeCharacterBounds:Z

    iget-boolean v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeEditorBounds:Z

    iget-boolean v10, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeLineBounds:Z

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v2, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-wide v8, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v6

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    sget-object v9, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    const/16 v16, 0x1

    if-eqz v7, :cond_8

    if-gez v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v4, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    const/16 v17, 0x20

    move-object/from16 v18, v9

    iget-wide v8, v13, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    shr-long v8, v8, v17

    long-to-int v8, v8

    int-to-float v8, v8

    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v9, v5, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v14, v5, v8}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v8

    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v14, v5, v9}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v9

    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v6

    move/from16 v17, v10

    move-object/from16 v10, v18

    if-ne v6, v10, :cond_2

    move/from16 v6, v16

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v8, :cond_4

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v18, v16

    :goto_2
    if-eqz v8, :cond_5

    if-nez v9, :cond_6

    :cond_5
    or-int/lit8 v18, v18, 0x2

    :cond_6
    if-eqz v6, :cond_7

    or-int/lit8 v6, v18, 0x4

    move/from16 v18, v6

    :cond_7
    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    move-object v6, v2

    move v7, v5

    const/4 v5, 0x0

    move/from16 v19, v9

    move-object v5, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move/from16 v11, v18

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_4

    :cond_8
    :goto_3
    move-object v5, v9

    move/from16 v17, v10

    move/from16 v19, v11

    :goto_4
    iget-object v11, v13, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget v10, v14, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v9, v14, Landroidx/compose/ui/geometry/Rect;->bottom:F

    if-eqz v12, :cond_12

    const/4 v6, -0x1

    iget-object v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    move-object/from16 v18, v1

    if-eqz v7, :cond_9

    iget-wide v0, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    goto :goto_5

    :cond_9
    move v0, v6

    :goto_5
    if-eqz v7, :cond_a

    iget-wide v6, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v6

    :cond_a
    move v1, v6

    if-ltz v0, :cond_11

    if-ge v0, v1, :cond_11

    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v4, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v3

    invoke-interface {v4, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    sub-int v7, v6, v3

    mul-int/lit8 v7, v7, 0x4

    new-array v12, v7, [F

    invoke-static {v3, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    invoke-virtual {v11, v6, v7, v12}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    :goto_6
    if-ge v0, v1, :cond_11

    invoke-interface {v4, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    sub-int v7, v6, v3

    mul-int/lit8 v7, v7, 0x4

    aget v8, v12, v7

    add-int/lit8 v20, v7, 0x1

    move/from16 v21, v1

    aget v1, v12, v20

    add-int/lit8 v20, v7, 0x2

    move/from16 v22, v3

    aget v3, v12, v20

    add-int/lit8 v7, v7, 0x3

    aget v7, v12, v7

    move-object/from16 v20, v4

    iget v4, v14, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v4, v4, v8

    if-lez v4, :cond_d

    iget v4, v14, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_b

    goto :goto_7

    :cond_b
    cmpg-float v4, v9, v1

    if-lez v4, :cond_d

    cmpg-float v4, v7, v10

    if-gtz v4, :cond_c

    goto :goto_7

    :cond_c
    move/from16 v4, v16

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v4, 0x0

    :goto_8
    invoke-static {v14, v8, v1}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-static {v14, v3, v7}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v23

    if-nez v23, :cond_f

    :cond_e
    or-int/lit8 v4, v4, 0x2

    :cond_f
    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v6

    if-ne v6, v5, :cond_10

    or-int/lit8 v4, v4, 0x4

    :cond_10
    move-object v6, v2

    move/from16 v23, v7

    move v7, v0

    move-object/from16 v24, v5

    move v5, v9

    move v9, v1

    move v1, v10

    move v10, v3

    move-object v3, v11

    move/from16 v11, v23

    move-object/from16 v23, v12

    move v12, v4

    invoke-virtual/range {v6 .. v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v0, v0, 0x1

    move v10, v1

    move-object v11, v3

    move v9, v5

    move-object/from16 v4, v20

    move/from16 v1, v21

    move/from16 v3, v22

    move-object/from16 v12, v23

    move-object/from16 v5, v24

    goto :goto_6

    :cond_11
    :goto_9
    move v5, v9

    move v1, v10

    move-object v3, v11

    goto :goto_a

    :cond_12
    move-object/from16 v18, v1

    goto :goto_9

    :goto_a
    if-eqz v19, :cond_13

    new-instance v0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    invoke-static {v15}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v0

    invoke-static {v15}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setHandwritingBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_13
    if-eqz v17, :cond_14

    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v0

    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v1

    if-gt v0, v1, :cond_14

    :goto_b
    invoke-virtual {v13, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v4

    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result v5

    invoke-virtual {v13, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v6

    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eq v0, v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    move-object/from16 v2, v18

    iget-object v2, v2, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    return-void
.end method
