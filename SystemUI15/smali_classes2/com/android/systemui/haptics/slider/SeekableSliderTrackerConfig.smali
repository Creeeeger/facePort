.class public final Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final jumpThreshold:F

.field public final lowerBookendThreshold:F

.field public final upperBookendThreshold:F

.field public final waitTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;-><init>(JFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->waitTimeMillis:J

    iput p3, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->jumpThreshold:F

    iput p4, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->lowerBookendThreshold:F

    iput p5, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    return-void
.end method

.method public synthetic constructor <init>(JFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x64

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const p3, 0x3ca3d70a    # 0.02f

    :cond_1
    move v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const p4, 0x3d4ccccd    # 0.05f

    :cond_2
    move v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const p5, 0x3f733333    # 0.95f

    :cond_3
    move v5, p5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;-><init>(JFFF)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    iget-wide v3, p1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->waitTimeMillis:J

    iget-wide v5, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->waitTimeMillis:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->jumpThreshold:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->jumpThreshold:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->lowerBookendThreshold:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->lowerBookendThreshold:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    iget p1, p1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->waitTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->jumpThreshold:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->lowerBookendThreshold:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeekableSliderTrackerConfig(waitTimeMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->waitTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jumpThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->jumpThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lowerBookendThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->lowerBookendThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", upperBookendThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
