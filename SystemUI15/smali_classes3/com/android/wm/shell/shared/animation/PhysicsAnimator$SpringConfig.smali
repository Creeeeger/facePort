.class public final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dampingRatio:F

.field public finalPosition:F

.field public startVelocity:F

.field public final stiffness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->globalDefaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iget v1, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iget v0, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iput p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    iput p3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iput p4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    const p4, -0x800001

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public final applyToAnimation$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell_shared(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 3

    iget-object v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    float-to-double v1, v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput-object v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iget v1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iget v3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    iget v3, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iget v3, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    iget p1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpringConfig(stiffness="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", dampingRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", startVelocity="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", finalPosition="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-static {v2, v1, p0}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
