.class public final Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;


# static fields
.field public static final HELP_ANIMATOR_DURATION:I = 0x226
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# virtual methods
.method public final getCurrentSfpsEnrollStage(ILcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;)I
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method public final getEnrollStageThreshold(Landroid/content/Context;I)F
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p0

    return p0
.end method

.method public final getFeaturedStageHeaderResource(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const p0, 0x7f142a55

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid stage: "

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f142a53

    goto :goto_0

    :cond_2
    const p0, 0x7f142a52

    goto :goto_0

    :cond_3
    const p0, 0x7f142a51

    goto :goto_0

    :cond_4
    const p0, 0x7f142a0e

    :goto_0
    return p0
.end method

.method public final getHelpAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    const/4 p0, 0x5

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const-string v0, "translationX"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x226

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x42200000    # 40.0f
        -0x3de00000    # -40.0f
        0x42200000    # 40.0f
        0x0
    .end array-data
.end method

.method public final getSfpsEnrollLottiePerStage(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const p0, 0x7f130080

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid stage: "

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f13007d

    goto :goto_0

    :cond_2
    const p0, 0x7f130081

    goto :goto_0

    :cond_3
    const p0, 0x7f13007f

    goto :goto_0

    :cond_4
    const p0, 0x7f13007e

    :goto_0
    return p0
.end method
