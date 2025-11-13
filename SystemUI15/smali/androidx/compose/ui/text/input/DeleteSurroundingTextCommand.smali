.class public final Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# instance fields
.field public final lengthAfterCursor:I

.field public final lengthBeforeCursor:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthBeforeCursor:I

    iput p2, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthAfterCursor:I

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    return-void

    :cond_0
    const-string p0, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    const-string v0, " and "

    const-string v1, " respectively."

    invoke-static {p1, p2, p0, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final applyTo(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 3

    iget v0, p1, Landroidx/compose/ui/text/input/EditingBuffer;->selectionEnd:I

    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthAfterCursor:I

    add-int v2, v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    iget-object v1, p1, Landroidx/compose/ui/text/input/EditingBuffer;->gapBuffer:Landroidx/compose/ui/text/input/PartialGapBuffer;

    if-gez v0, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/PartialGapBuffer;->getLength()I

    move-result v2

    :cond_0
    iget v0, p1, Landroidx/compose/ui/text/input/EditingBuffer;->selectionEnd:I

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/PartialGapBuffer;->getLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    iget v0, p1, Landroidx/compose/ui/text/input/EditingBuffer;->selectionStart:I

    iget p0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthBeforeCursor:I

    sub-int v1, v0, p0

    xor-int/2addr p0, v0

    xor-int/2addr v0, v1

    and-int/2addr p0, v0

    const/4 v0, 0x0

    if-gez p0, :cond_1

    move v1, v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v0, p1, Landroidx/compose/ui/text/input/EditingBuffer;->selectionStart:I

    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    iget v1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthBeforeCursor:I

    iget v3, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthBeforeCursor:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthAfterCursor:I

    iget p1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthAfterCursor:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthBeforeCursor:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthAfterCursor:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteSurroundingTextCommand(lengthBeforeCursor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthBeforeCursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lengthAfterCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->lengthAfterCursor:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
