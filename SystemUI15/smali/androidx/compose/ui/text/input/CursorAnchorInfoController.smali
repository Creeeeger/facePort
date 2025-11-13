.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoController;
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

.field public final inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

.field public final lock:Ljava/lang/Object;

.field public final matrix:[F

.field public monitorEnabled:Z

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final rootPositionCalculator:Landroidx/compose/ui/input/pointer/PositionCalculator;

.field public textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

.field public textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroidx/compose/ui/text/input/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->rootPositionCalculator:Landroidx/compose/ui/input/pointer/PositionCalculator;

    iput-object p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

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
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    check-cast v2, Landroidx/compose/ui/text/input/InputMethodManagerImpl;

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

    iget-object v4, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->matrix:[F

    invoke-static {v4}, Landroidx/compose/ui/graphics/Matrix;->box-impl([F)Landroidx/compose/ui/graphics/Matrix;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->rootPositionCalculator:Landroidx/compose/ui/input/pointer/PositionCalculator;

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    iget-object v5, v3, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    iget-wide v5, v3, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    iget-wide v6, v3, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    iget-object v3, v3, Landroidx/compose/ui/platform/AndroidComposeView;->tmpMatrix:[F

    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->platformTextInputServiceInterceptor:Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    invoke-static {v5, v6, v3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default(FF[F)V

    invoke-static {v4, v3}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->preTransform-JiSxe2E([F[F)V

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-object v14, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v15, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v6, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeInsertionMarker:Z

    iget-boolean v11, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeCharacterBounds:Z

    iget-boolean v10, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeEditorBounds:Z

    iget-boolean v9, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeLineBounds:Z

    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v3, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-wide v7, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eqz v6, :cond_8

    if-gez v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v12, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 v7, 0x20

    move/from16 v16, v9

    iget-wide v8, v13, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    shr-long v7, v8, v7

    long-to-int v7, v7

    int-to-float v7, v7

    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->left:F

    const/4 v9, 0x0

    invoke-static {v8, v9, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v7

    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v14, v7, v8}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v8

    iget v9, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v14, v7, v9}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v9

    invoke-virtual {v13, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v5

    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v8, :cond_4

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v8, :cond_5

    if-nez v9, :cond_6

    :cond_5
    or-int/lit8 v5, v5, 0x2

    :cond_6
    if-eqz v1, :cond_7

    or-int/lit8 v1, v5, 0x4

    goto :goto_3

    :cond_7
    move v1, v5

    :goto_3
    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v9, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    move-object v5, v3

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v17, v10

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v16, v9

    move/from16 v17, v10

    :goto_5
    iget-object v1, v13, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    if-eqz v11, :cond_e

    const/4 v5, -0x1

    iget-object v6, v4, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz v6, :cond_9

    iget-wide v7, v6, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    goto :goto_6

    :cond_9
    move v7, v5

    :goto_6
    if-eqz v6, :cond_a

    iget-wide v5, v6, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    :cond_a
    move v11, v5

    if-ltz v7, :cond_e

    if-ge v7, v11, :cond_e

    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v12, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v4

    invoke-interface {v12, v11}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v5

    sub-int v6, v5, v4

    mul-int/lit8 v6, v6, 0x4

    new-array v10, v6, [F

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6, v10}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    move v9, v7

    :goto_7
    if-ge v9, v11, :cond_e

    invoke-interface {v12, v9}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v5

    sub-int v6, v5, v4

    mul-int/lit8 v6, v6, 0x4

    new-instance v7, Landroidx/compose/ui/geometry/Rect;

    aget v8, v10, v6

    const/16 v18, 0x1

    add-int/lit8 v19, v6, 0x1

    move/from16 v20, v4

    aget v4, v10, v19

    add-int/lit8 v19, v6, 0x2

    move/from16 v21, v11

    aget v11, v10, v19

    add-int/lit8 v6, v6, 0x3

    aget v6, v10, v6

    invoke-direct {v7, v8, v4, v11, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-virtual {v14, v7}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v4

    iget v6, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v14, v6, v8}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v14, v6, v8}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    or-int/lit8 v4, v4, 0x2

    :cond_c
    invoke-virtual {v13, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v5, v6, :cond_d

    or-int/lit8 v4, v4, 0x4

    :cond_d
    move v11, v4

    iget v4, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v8, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v6, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    move-object v5, v3

    move/from16 v19, v6

    move v6, v9

    move/from16 v22, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v22

    move/from16 v22, v9

    move v9, v4

    move-object v4, v10

    move/from16 v10, v19

    move/from16 v19, v21

    invoke-virtual/range {v5 .. v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v5, 0x1

    add-int/lit8 v9, v22, 0x1

    move-object v10, v4

    move/from16 v11, v19

    move/from16 v4, v20

    goto :goto_7

    :cond_e
    if-eqz v17, :cond_f

    sget v4, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;->$r8$clinit:I

    new-instance v4, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    invoke-static {v15}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v4

    invoke-static {v15}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setHandwritingBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_f
    if-eqz v16, :cond_10

    sget v4, Landroidx/compose/ui/text/input/CursorAnchorInfoApi34Helper;->$r8$clinit:I

    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    iget v4, v14, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v4

    iget v5, v14, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v5

    if-gt v4, v5, :cond_10

    :goto_8
    invoke-virtual {v13, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result v7

    invoke-virtual {v13, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v8

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eq v4, v5, :cond_10

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_8

    :cond_10
    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

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
