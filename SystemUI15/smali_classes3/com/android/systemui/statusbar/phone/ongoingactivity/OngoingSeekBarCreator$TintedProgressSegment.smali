.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final color:I

.field public final width:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.ongoingActivityNoti.progressSegments.segmentColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.ongoingActivityNoti.progressSegments.segmentStart"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    iget p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TintedProgressSegment(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
