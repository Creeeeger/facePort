.class public final Landroidx/compose/ui/text/input/MoveCursorCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# instance fields
.field public final amount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    return-void
.end method


# virtual methods
.method public final applyTo(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCursor$ui_text_release()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/compose/ui/text/input/EditingBuffer;->selectionStart:I

    invoke-virtual {p1, v0, v0}, Landroidx/compose/ui/text/input/EditingBuffer;->setSelection$ui_text_release(II)V

    :cond_0
    iget v0, p1, Landroidx/compose/ui/text/input/EditingBuffer;->selectionStart:I

    iget-object v2, p1, Landroidx/compose/ui/text/input/EditingBuffer;->gapBuffer:Landroidx/compose/ui/text/input/PartialGapBuffer;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget p0, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    if-lez p0, :cond_1

    :goto_0
    if-ge v3, p0, :cond_2

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    neg-int p0, p0

    :goto_1
    if-ge v3, p0, :cond_2

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v0}, Landroidx/compose/ui/text/input/EditingBuffer;->setSelection$ui_text_release(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

    iget p1, p1, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    iget p0, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoveCursorCommand(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
