.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;
.super Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.source "SprAnimatorAlpha.java"


# instance fields
.field private blacklist from:F

.field private blacklist to:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->init()V

    return-void
.end method

.method private blacklist init()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    :goto_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    :goto_1
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    :goto_2
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    :goto_3
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist set(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->init()V

    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    :goto_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    :goto_1
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    :goto_2
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    :goto_3
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public blacklist updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
