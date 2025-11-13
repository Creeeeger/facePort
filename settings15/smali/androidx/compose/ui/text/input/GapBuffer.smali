.class public final Landroidx/compose/ui/text/input/GapBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public buffer:[C

.field public capacity:I

.field public gapEnd:I

.field public gapStart:I


# virtual methods
.method public final gapLength()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
