.class public final Landroidx/compose/ui/text/input/GapBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public buffer:[C

.field public capacity:I

.field public gapEnd:I

.field public gapStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    iput p3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method


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
