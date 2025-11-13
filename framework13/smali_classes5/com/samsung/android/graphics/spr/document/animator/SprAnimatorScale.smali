.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;
.super Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.source "SprAnimatorScale.java"


# instance fields
.field private blacklist fromX:F

.field private blacklist fromY:F

.field private blacklist pivotX:F

.field private blacklist pivotY:F

.field private blacklist toX:F

.field private blacklist toY:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 18
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 19
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

    .line 22
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->init()V

    .line 26
    return-void
.end method

.method private blacklist init()V
    .locals 6

    .line 29
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    new-array v2, v0, [F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string/jumbo v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v0, v0, [F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    aput v2, v0, v4

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    aput v2, v0, v5

    const-string/jumbo v2, "y"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->setValues([Landroid/animation/PropertyValuesHolder;)V

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

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    .line 41
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public blacklist set(FFFFFF)V
    .locals 0
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "toX"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .line 77
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    .line 78
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    .line 79
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    .line 80
    iput p4, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    .line 81
    iput p5, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    .line 82
    iput p6, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->init()V

    .line 85
    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 46
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 47
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 48
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->fromY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 51
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 52
    return-void
.end method

.method public blacklist updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1
    .param p1, "parameter"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    .line 62
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotX:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotX:F

    .line 63
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->pivotY:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotY:F

    .line 65
    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    .line 66
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toX:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    .line 67
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->toY:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    goto :goto_0

    .line 69
    :cond_0
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    .line 70
    const-string/jumbo v0, "y"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    .line 73
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
