.class public final Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public horizontal:I

.field public verticalCollapsed:I

.field public verticalExpanded:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    iput p2, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    iput p3, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    iget v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    iget v3, p1, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    iget v3, p1, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    iget p1, p1, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    iget v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    iget p0, p0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    const-string v2, "CellMargin(horizontal="

    const-string v3, ", verticalCollapsed="

    const-string v4, ", verticalExpanded="

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
