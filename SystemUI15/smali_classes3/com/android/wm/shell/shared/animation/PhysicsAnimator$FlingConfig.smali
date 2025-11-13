.class public final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final friction:F

.field public max:F

.field public min:F

.field public startVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->globalDefaultFling:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v0, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-direct {p0, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->globalDefaultFling:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v1, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v0, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-direct {p0, p1, v1, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    iput p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iput p3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iput p4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    iget v3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v3, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iget v3, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    iget p1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iget v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlingConfig(friction="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", min="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", max="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", startVelocity="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
