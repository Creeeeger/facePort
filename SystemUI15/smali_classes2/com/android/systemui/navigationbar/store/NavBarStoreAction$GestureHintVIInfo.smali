.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final distanceX:I

.field public final distanceY:I

.field public final duration:J

.field public final hintID:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;-><init>(IIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    iput p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    iput p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    iput-wide p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(IIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;-><init>(IIIJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    iget v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    iget v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    iget-wide p0, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GestureHintVIInfo(hintID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distanceX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distanceY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
