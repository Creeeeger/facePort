.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;


# instance fields
.field public final iconRes:I

.field public final labelRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->iconRes:I

    iput p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;

    iget v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->iconRes:I

    iget v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->iconRes:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    iget p1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->iconRes:I

    return p0
.end method

.method public final getLabelRes()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->iconRes:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resource(iconRes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
