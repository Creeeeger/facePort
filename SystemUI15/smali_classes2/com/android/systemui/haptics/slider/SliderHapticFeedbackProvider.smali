.class public final Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/haptics/slider/SliderStateListener;


# static fields
.field public static final VIBRATION_ATTRIBUTES_PIPELINING:Landroid/os/VibrationAttributes;


# instance fields
.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final config:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

.field public dragTextureLastProgress:F

.field public dragTextureLastTime:J

.field public hasVibratedAtLowerBookend:Z

.field public hasVibratedAtUpperBookend:Z

.field public final positionAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field public final thresholdUntilNextDragCallMillis:F

.field public final velocityAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->VIBRATION_ATTRIBUTES_PIPELINING:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/view/VelocityTracker;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityTracker:Landroid/view/VelocityTracker;

    iput-object p3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->config:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    iput-object p4, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->clock:Lcom/android/systemui/util/time/SystemClock;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    iget v0, p3, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityInterpolatorFactor:F

    invoke-direct {p2, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    iget v0, p3, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressInterpolatorFactor:F

    invoke-direct {p2, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->positionAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-interface {p4}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastTime:J

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastProgress:F

    const/16 p2, 0x8

    filled-new-array {p2}, [I

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/os/Vibrator;->getPrimitiveDurations([I)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p1, p1, p2

    iget p2, p3, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p3, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaMillisForDragInterval:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->thresholdUntilNextDragCallMillis:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/view/VelocityTracker;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/util/time/SystemClock;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;-><init>(FFFFFFFIFIFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v4, p4

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    goto :goto_0

    :goto_1
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/view/VelocityTracker;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/util/time/SystemClock;)V

    return-void
.end method


# virtual methods
.method public final getTrackedVelocity()F
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityTracker:Landroid/view/VelocityTracker;

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->config:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    iget v2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityTracker:Landroid/view/VelocityTracker;

    iget v2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->isAxisSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityTracker:Landroid/view/VelocityTracker;

    iget v0, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    invoke-virtual {p0, v0}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onProgress(F)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->getTrackedVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->thresholdUntilNextDragCallMillis:F

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    iget v3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastProgress:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->config:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    iget v6, v5, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaProgressForDragThreshold:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->scaleOnDragTexture(FF)F

    move-result v0

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v3

    move v6, v4

    :goto_0
    iget v7, v5, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    if-ge v6, v7, :cond_2

    const/16 v7, 0x8

    invoke-virtual {v3, v7, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->VIBRATION_ATTRIBUTES_PIPELINING:Landroid/os/VibrationAttributes;

    iget-object v5, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v5, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, v0, v3}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iput-wide v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastTime:J

    iput p1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastProgress:F

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->hasVibratedAtUpperBookend:Z

    iput-boolean v4, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->hasVibratedAtLowerBookend:Z

    return-void
.end method

.method public final scaleOnDragTexture(FF)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->config:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    iget v2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iget v0, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMaxScale:F

    iget v2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->positionAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p0, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v0

    iget p2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    add-float/2addr p0, p2

    iget p2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->additionalVelocityMaxBump:F

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    float-to-double p0, p1

    iget p2, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    float-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final scaleOnEdgeCollision(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->velocityAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->config:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->upperBookendScale:F

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->lowerBookendScale:F

    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    float-to-double v0, p1

    iget p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
