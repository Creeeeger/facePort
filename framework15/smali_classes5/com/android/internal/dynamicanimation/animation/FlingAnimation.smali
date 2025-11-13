.class public final Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
.super Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lcom/android/internal/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>(Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce-IA;)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method blacklist getAcceleration(FF)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public blacklist getFriction()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method blacklist isAtEquilibrium(FF)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist setFriction(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic blacklist setMinValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic blacklist setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method blacklist setValueThreshold(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method blacklist updateValueAndVelocity(J)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    return v2

    :cond_0
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    return v2

    :cond_1
    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method
