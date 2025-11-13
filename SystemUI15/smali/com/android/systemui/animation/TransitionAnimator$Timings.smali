.class public final Lcom/android/systemui/animation/TransitionAnimator$Timings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentAfterFadeInDelay:J

.field public final contentAfterFadeInDuration:J

.field public final contentBeforeFadeOutDelay:J

.field public final contentBeforeFadeOutDuration:J

.field public final totalDuration:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    iput-wide p3, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    iput-wide p5, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    iput-wide p7, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    iput-wide p9, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v3, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    iget-wide v5, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    iget-wide v5, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    iget-wide v5, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    iget-wide v5, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    iget-wide p0, p1, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timings(totalDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentBeforeFadeOutDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentBeforeFadeOutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentAfterFadeInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentAfterFadeInDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
