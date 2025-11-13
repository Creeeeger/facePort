.class public final Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final gestureStart:J

.field public final major:F

.field public final minor:F

.field public final orientation:F

.field public final pointerId:I

.field public final time:J

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>()V
    .locals 13

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IFFFFFJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    iput p2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    iput p3, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    iput p4, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    iput p5, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    iput p6, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    iput-wide p7, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    iput-wide p9, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    return-void
.end method

.method public synthetic constructor <init>(IFFFFFJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v3, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_6

    move-wide v10, v8

    goto :goto_6

    :cond_6
    move-wide/from16 v10, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v8, p9

    :goto_7
    move p1, v1

    move p2, v2

    move p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v3

    move-wide/from16 p7, v10

    move-wide/from16 p9, v8

    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>(IFFFFFJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    iget v1, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    iget v3, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    iget v3, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    iget v3, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    iget v3, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    iget v3, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    iget v3, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    iget-wide v5, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    iget-wide p0, p1, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isWithinBounds(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NormalizedTouchData(pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gestureStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
