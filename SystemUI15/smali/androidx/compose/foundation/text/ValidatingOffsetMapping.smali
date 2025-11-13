.class public final Landroidx/compose/foundation/text/ValidatingOffsetMapping;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/input/OffsetMapping;


# instance fields
.field public final delegate:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final originalLength:I

.field public final transformedLength:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->delegate:Landroidx/compose/ui/text/input/OffsetMapping;

    iput p2, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->originalLength:I

    iput p3, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->transformedLength:I

    return-void
.end method


# virtual methods
.method public final originalToTransformed(I)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->delegate:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    if-ltz p1, :cond_0

    iget v1, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->originalLength:I

    if-gt p1, v1, :cond_0

    iget p0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->transformedLength:I

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateOriginalToTransformed(III)V

    :cond_0
    return v0
.end method

.method public final transformedToOriginal(I)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->delegate:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v0

    if-ltz p1, :cond_0

    iget v1, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->transformedLength:I

    if-gt p1, v1, :cond_0

    iget p0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->originalLength:I

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateTransformedToOriginal(III)V

    :cond_0
    return v0
.end method
