.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;
.super Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.source "SprAnimatorAlpha.java"


# instance fields
.field private blacklist from:F

.field private blacklist to:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 13
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 10
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 14
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 10
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->init()V

    .line 21
    return-void
.end method

.method private blacklist init()V
    .locals 5

    .line 24
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 26
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 27
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 29
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->setFloatValues([F)V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 37
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist set(FF)V
    .locals 0
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 69
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 70
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->init()V

    .line 73
    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 43
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->from:F

    .line 45
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 46
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50
    return-void
.end method

.method public blacklist updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1
    .param p1, "parameter"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    .line 59
    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->to:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    .line 65
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
