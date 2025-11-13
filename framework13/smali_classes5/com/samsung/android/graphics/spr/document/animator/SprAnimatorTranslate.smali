.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;
.super Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.source "SprAnimatorTranslate.java"


# instance fields
.field private blacklist fromX:F

.field private blacklist fromY:F

.field private blacklist toX:F

.field private blacklist toY:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 17
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

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;-><init>(B)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->init()V

    .line 24
    return-void
.end method

.method private blacklist init()V
    .locals 6

    .line 27
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    new-array v2, v0, [F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromX:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toX:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string/jumbo v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v0, v0, [F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromY:F

    aput v2, v0, v4

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toY:F

    aput v2, v0, v5

    const-string/jumbo v2, "y"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 28
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

    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromX:F

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromY:F

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toX:F

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toY:F

    .line 37
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public blacklist set(FFFF)V
    .locals 0
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "toX"    # F
    .param p4, "toY"    # F

    .line 69
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromX:F

    .line 70
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromY:F

    .line 71
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toX:F

    .line 72
    iput p4, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toY:F

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->init()V

    .line 75
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

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 42
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 43
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->fromY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 44
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 45
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 46
    return-void
.end method

.method public blacklist updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1
    .param p1, "parameter"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    .line 57
    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toX:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDx:F

    .line 59
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->toY:F

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDy:F

    goto :goto_0

    .line 61
    :cond_0
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDx:F

    .line 62
    const-string/jumbo v0, "y"

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDy:F

    .line 65
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
