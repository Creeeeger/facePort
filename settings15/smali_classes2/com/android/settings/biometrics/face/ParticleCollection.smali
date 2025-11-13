.class public final Lcom/android/settings/biometrics/face/ParticleCollection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field public final mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field public final mParticleList:Ljava/util/List;

.field public final mParticleListener:Lcom/android/settings/biometrics/face/ParticleCollection$1;

.field public final mPrimariesInProgress:Ljava/util/List;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;Landroid/graphics/Rect;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/face/ParticleCollection$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/ParticleCollection$1;-><init>(Lcom/android/settings/biometrics/face/ParticleCollection;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleListener:Lcom/android/settings/biometrics/face/ParticleCollection$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06016b

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f06016c

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f06016d

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f06016e

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    const/4 v0, 0x1

    const/16 v7, 0xc

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    move v9, v1

    :goto_0
    if-ge v9, v7, :cond_1

    new-instance v10, Lcom/android/settings/biometrics/face/AnimationParticle;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleListener:Lcom/android/settings/biometrics/face/ParticleCollection$1;

    aget v5, v8, v9

    move-object v1, v10

    move-object v2, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/biometrics/face/AnimationParticle;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$1;Landroid/graphics/Rect;ILjava/util/List;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    aget v2, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43f00000    # 480.0f

    iput v1, v10, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/ParticleCollection;->updateState$1(I)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x7
        0xb
        0x2
        0x6
        0xa
        0x1
        0x5
        0x9
        0x0
        0x4
        0x8
    .end array-data
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onEnrollmentProgressChange(II)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/ParticleCollection;->updateState$1(I)V

    :cond_0
    return-void
.end method

.method public final updateState$1(I)V
    .locals 4

    iget v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mState:I

    if-eq v0, p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    iget v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    if-ne v2, p1, :cond_0

    const-string v1, "Already in state "

    const-string v2, "AnimationParticle"

    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    iput v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mLastAnimationState:I

    iput p1, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mState:I

    :cond_3
    return-void
.end method
