.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoController;
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

.field public final inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManagerImpl;

.field public final lock:Ljava/lang/Object;

.field public final matrix:[F

.field public monitorEnabled:Z

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final rootPositionCalculator:Landroidx/compose/ui/input/pointer/PositionCalculator;

.field public textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

.field public textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroidx/compose/ui/text/input/InputMethodManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->rootPositionCalculator:Landroidx/compose/ui/input/pointer/PositionCalculator;

    iput-object p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManagerImpl;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->lock:Ljava/lang/Object;

    sget-object p1, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;->INSTANCE:Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->matrix:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final updateCursorAnchorInfo()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManagerImpl;

    iget-object v3, v2, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->imm$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v2, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

    new-instance v4, Landroidx/compose/ui/graphics/Matrix;

    iget-object v5, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->matrix:[F

    invoke-direct {v4, v5}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->rootPositionCalculator:Landroidx/compose/ui/input/pointer/PositionCalculator;

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    iget-object v4, v3, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-static {v5, v4}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    iget-wide v6, v3, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    iget-wide v6, v3, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    iget-object v3, v3, Landroidx/compose/ui/platform/AndroidComposeView;->tmpMatrix:[F

    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->platformTextInputServiceInterceptor:Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    invoke-static {v3, v4, v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFF)V

    invoke-static {v5, v3}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->preTransform-JiSxe2E([F[F)V

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    invoke-static {v3, v5}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-object v14, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v15, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v7, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeInsertionMarker:Z

    iget-boolean v12, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeCharacterBounds:Z

    iget-boolean v11, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeEditorBounds:Z

    iget-boolean v10, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeLineBounds:Z

    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v3, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-wide v8, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v6

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    sget-object v9, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-eqz v7, :cond_8

    if-gez v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v5, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    const/16 v16, 0x20

    move-object/from16 v18, v2

    iget-wide v1, v13, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    shr-long v1, v1, v16

    long-to-int v1, v1

    int-to-float v1, v1

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    const/4 v8, 0x0

    invoke-static {v2, v8, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v14, v1, v2}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v2

    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v14, v1, v8}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v8

    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v6

    if-ne v6, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v2, :cond_4

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/16 v19, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v19, 0x1

    :goto_2
    if-eqz v2, :cond_5

    if-nez v8, :cond_6

    :cond_5
    or-int/lit8 v19, v19, 0x2

    :cond_6
    if-eqz v6, :cond_7

    or-int/lit8 v2, v19, 0x4

    goto :goto_3

    :cond_7
    move/from16 v2, v19

    :goto_3
    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    move-object v6, v3

    move/from16 v19, v7

    move v7, v1

    const/4 v1, 0x0

    move-object v1, v9

    move/from16 v9, v19

    move/from16 v20, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move v11, v2

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v18, v2

    move-object v1, v9

    move/from16 v20, v10

    move/from16 v19, v11

    :goto_5
    iget-object v2, v13, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget v11, v14, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v10, v14, Landroidx/compose/ui/geometry/Rect;->bottom:F

    if-eqz v12, :cond_11

    const/4 v6, -0x1

    iget-object v7, v4, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz v7, :cond_9

    iget-wide v8, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v8

    goto :goto_6

    :cond_9
    move v8, v6

    :goto_6
    if-eqz v7, :cond_a

    iget-wide v6, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v6

    :cond_a
    move v12, v6

    if-ltz v8, :cond_11

    if-ge v8, v12, :cond_11

    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v5, v8}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v4

    invoke-interface {v5, v12}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    sub-int v7, v6, v4

    mul-int/lit8 v7, v7, 0x4

    new-array v9, v7, [F

    invoke-static {v4, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v9}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    :goto_7
    if-ge v8, v12, :cond_11

    invoke-interface {v5, v8}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    sub-int v7, v6, v4

    mul-int/lit8 v7, v7, 0x4

    move/from16 v21, v4

    aget v4, v9, v7

    const/16 v17, 0x1

    add-int/lit8 v22, v7, 0x1

    move-object/from16 v23, v5

    aget v5, v9, v22

    add-int/lit8 v22, v7, 0x2

    move/from16 v24, v12

    aget v12, v9, v22

    add-int/lit8 v7, v7, 0x3

    aget v7, v9, v7

    move-object/from16 v22, v9

    iget v9, v14, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v9, v9, v4

    if-lez v9, :cond_d

    iget v9, v14, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpg-float v9, v12, v9

    if-gtz v9, :cond_b

    goto :goto_8

    :cond_b
    cmpg-float v9, v10, v5

    if-lez v9, :cond_d

    cmpg-float v9, v7, v11

    if-gtz v9, :cond_c

    goto :goto_8

    :cond_c
    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v9, 0x0

    :goto_9
    invoke-static {v14, v4, v5}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-static {v14, v12, v7}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v25

    if-nez v25, :cond_f

    :cond_e
    or-int/lit8 v9, v9, 0x2

    :cond_f
    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v6

    if-ne v6, v1, :cond_10

    or-int/lit8 v6, v9, 0x4

    move/from16 v25, v6

    goto :goto_a

    :cond_10
    move/from16 v25, v9

    :goto_a
    move-object v6, v3

    move/from16 v26, v7

    move v7, v8

    move/from16 v27, v8

    move v8, v4

    move-object/from16 v4, v22

    move v9, v5

    move v5, v10

    move v10, v12

    move v12, v11

    move/from16 v11, v26

    move-object/from16 v22, v1

    move v1, v12

    move/from16 v12, v25

    invoke-virtual/range {v6 .. v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v6, 0x1

    add-int/lit8 v8, v27, 0x1

    move v11, v1

    move-object v9, v4

    move v10, v5

    move/from16 v4, v21

    move-object/from16 v1, v22

    move-object/from16 v5, v23

    move/from16 v12, v24

    goto :goto_7

    :cond_11
    move v5, v10

    move v1, v11

    if-eqz v19, :cond_12

    new-instance v4, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    invoke-static {v15}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v4

    invoke-static {v15}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setHandwritingBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_12
    if-eqz v20, :cond_13

    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v1

    invoke-virtual {v2, v5}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v4

    if-gt v1, v4, :cond_13

    :goto_b
    invoke-virtual {v13, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v5

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result v6

    invoke-virtual {v13, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v7

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eq v1, v4, :cond_13

    const/4 v5, 0x1

    add-int/2addr v1, v5

    goto :goto_b

    :cond_13
    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    move-object/from16 v2, v18

    iget-object v3, v2, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->imm$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->hasPendingImmediateRequest:Z

    return-void
.end method
