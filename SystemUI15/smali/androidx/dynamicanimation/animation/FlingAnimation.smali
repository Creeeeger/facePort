.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p0, v0

    iput p0, p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p0, p2

    const/high16 p2, 0x427a0000    # 62.5f

    mul-float/2addr p0, p2

    iput p0, p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method


# virtual methods
.method public final setValueThreshold(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method

.method public final updateValueAndVelocity(J)Z
    .locals 6

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v2, v1

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    iget v4, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p1, v4

    iget-object v2, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iput p1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    sub-float v1, p1, v1

    iget v3, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    iput v1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    :cond_0
    iget p1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v0, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v2, p1, v1

    const/4 v3, 0x1

    if-gez v2, :cond_1

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    return v3

    :cond_1
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    return v3

    :cond_2
    if-gez p1, :cond_4

    if-lez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget p1, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v3
.end method
