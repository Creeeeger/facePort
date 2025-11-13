.class public final Landroidx/compose/ui/text/input/PartialGapBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bufEnd:I

.field public bufStart:I

.field public buffer:Landroidx/compose/ui/text/input/GapBuffer;

.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    iput p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    iget p0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    sub-int/2addr v2, p0

    sub-int/2addr v1, v2

    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v0

    sub-int/2addr p0, v0

    add-int/2addr p0, v1

    return p0
.end method

.method public final replace(IILjava/lang/String;)V
    .locals 7

    if-gt p1, p2, :cond_8

    if-ltz p1, :cond_7

    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    const/16 v2, 0xff

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v2, v0, [C

    const/16 v3, 0x40

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    sub-int v6, p1, v4

    invoke-virtual {v5, v6, p1, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    sub-int/2addr v0, v3

    add-int/2addr v3, p2

    invoke-virtual {p1, p2, v3, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, v1, p1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Landroidx/compose/ui/text/input/GapBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v4

    invoke-direct {p1, v2, p2, v0}, Landroidx/compose/ui/text/input/GapBuffer;-><init>([CII)V

    iput-object p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    iput v6, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    iput v3, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    return-void

    :cond_0
    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    sub-int v3, p1, v2

    sub-int v2, p2, v2

    if-ltz v3, :cond_6

    iget v4, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p1, v2, v3

    sub-int/2addr p0, p1

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result p1

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    :goto_0
    mul-int/lit8 p1, p1, 0x2

    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    sub-int p2, p1, p2

    if-ge p2, p0, :cond_3

    goto :goto_0

    :cond_3
    new-array p0, p1, [C

    iget-object p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v4, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    invoke-static {p2, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    iget v4, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr p2, v4

    sub-int v5, p1, p2

    iget-object v6, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    add-int/2addr p2, v4

    sub-int/2addr p2, v4

    invoke-static {v6, v4, p0, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iput p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    iput v5, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    :goto_1
    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    if-ge v3, p0, :cond_4

    if-gt v2, p0, :cond_4

    sub-int/2addr p0, v2

    iget-object p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr p2, p0

    invoke-static {p1, v2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    iget p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr p1, p0

    iput p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    goto :goto_2

    :cond_4
    if-ge v3, p0, :cond_5

    if-lt v2, p0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result p0

    add-int/2addr p0, v2

    iput p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    iput v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    move-result p1

    add-int/2addr p1, v2

    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    sub-int/2addr p0, p2

    iget-object v2, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    invoke-static {v2, p2, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    add-int/2addr p2, p0

    iput p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    iput p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    :goto_2
    iget-object p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, v1, p2, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    return-void

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    iput v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/input/PartialGapBuffer;->replace(IILjava/lang/String;)V

    return-void

    :cond_7
    const-string p0, "start must be non-negative, but was "

    invoke-static {p1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string p0, "start index must be less than or equal to end index: "

    const-string p3, " > "

    invoke-static {p1, p2, p0, p3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    iget v3, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iget v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    iget v0, v0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    iget p0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
