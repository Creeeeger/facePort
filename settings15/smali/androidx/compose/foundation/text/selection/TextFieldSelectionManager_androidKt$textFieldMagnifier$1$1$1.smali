.class final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/geometry/Offset;",
        "invoke-F1C5BW0",
        "()J"
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
.field final synthetic $magnifierSize$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1$1;->$magnifierSize$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1$1;->$magnifierSize$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v1, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    if-eqz p0, :cond_8

    iget-object v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_8

    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/text/Handle;

    const/4 v6, -0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    sget-object v7, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    :goto_1
    if-eq v5, v6, :cond_8

    const/4 v6, 0x1

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-eq v5, v6, :cond_4

    if-eq v5, v8, :cond_4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v5

    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    sget v9, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const-wide v9, 0xffffffffL

    and-long/2addr v5, v9

    :goto_2
    long-to-int v5, v5

    goto :goto_3

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v5

    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    sget v9, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    shr-long/2addr v5, v7

    goto :goto_2

    :goto_3
    iget-object v6, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v9, :cond_8

    iget-object v9, v9, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eqz v9, :cond_8

    iget-object v9, v9, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v0, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    iget-object v5, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v0, v9, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iget-wide v9, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {v6, v9, v10}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->translateDecorationToInnerCoordinates-MK-Hz9U$foundation_release(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    iget-object v5, v6, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v5, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v6

    invoke-virtual {v5, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {p0, v10, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    const-wide/16 v9, 0x0

    invoke-static {v1, v2, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_7

    sub-float/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    shr-long/2addr v1, v7

    long-to-int v1, v1

    div-int/2addr v1, v8

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    iget-object p0, v5, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result p0

    sub-float/2addr p0, v1

    int-to-float v0, v8

    div-float/2addr p0, v0

    add-float/2addr p0, v1

    invoke-static {v6, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    :cond_8
    :goto_4
    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    return-object p0
.end method
