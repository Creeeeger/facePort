.class public final Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public avrDur:F

.field public cpuClk:I

.field public fps:F

.field public frmCnt:I

.field public frmDelayedCnt:I

.field public peakDur:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;-><init>(IIFFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIFFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmDelayedCnt:I

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->fps:F

    iput p4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->avrDur:F

    iput p5, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    iput p6, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->cpuClk:I

    return-void
.end method

.method public synthetic constructor <init>(IIFFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    const/4 v1, 0x0

    if-eqz p8, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;-><init>(IIFFII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    iget v3, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmDelayedCnt:I

    iget v3, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmDelayedCnt:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->fps:F

    iget v3, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->fps:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->avrDur:F

    iget v3, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->avrDur:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    iget v3, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->cpuClk:I

    iget p1, p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->cpuClk:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmDelayedCnt:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->fps:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->avrDur:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->cpuClk:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmCnt:I

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->frmDelayedCnt:I

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->fps:F

    iget v3, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->avrDur:F

    iget v4, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->peakDur:I

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/utils/PerformanceInfo;->cpuClk:I

    const-string v5, "PerformanceInfo(frmCnt="

    const-string v6, ", frmDelayedCnt="

    const-string v7, ", fps="

    invoke-static {v0, v1, v5, v6, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", avrDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", peakDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpuClk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
