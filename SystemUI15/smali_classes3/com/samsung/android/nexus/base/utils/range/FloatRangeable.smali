.class public final Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDelta:F

.field public mMax:F

.field public mMin:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    return-object v0
.end method

.method public final get()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    sget-object v1, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    move-result v1

    mul-float/2addr v1, p0

    add-float p0, v1, v0

    :goto_0
    return p0
.end method

.method public final onRangeUpdated()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    sub-float v2, v0, v1

    iput v2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method

.method public final set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iget p1, p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatRangeable{mMin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
