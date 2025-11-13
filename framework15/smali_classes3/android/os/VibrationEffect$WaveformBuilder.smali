.class public final Landroid/os/VibrationEffect$WaveformBuilder;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaveformBuilder"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f


# instance fields
.field private blacklist mLastAmplitude:F

.field private blacklist mLastFrequencyHz:F

.field private blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    return-void
.end method

.method private blacklist addTransitionSegment(Ljava/time/Duration;FF)V
    .locals 9

    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Transition duration must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    iget v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/StepSegment;

    invoke-direct {v2, p2, p3, v0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v8, Landroid/os/vibrator/RampSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v5, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    move-object v2, v8

    move v4, p2

    move v6, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput p2, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iput p3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    return-void
.end method

.method private blacklist checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V
    .locals 3

    const-string v0, "%s is null"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "%s is a unknown parameter"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .locals 1

    instance-of v0, p2, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return v0

    :cond_0
    instance-of v0, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return v0

    :cond_1
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    return v0
.end method

.method private blacklist extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .locals 1

    instance-of v0, p2, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return v0

    :cond_0
    instance-of v0, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget v0, v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return v0

    :cond_1
    iget v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    return v0
.end method


# virtual methods
.method public blacklist addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 5

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Sustain duration must be >= 1ms"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/StepSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v4, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    invoke-direct {v2, v3, v4, v0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2

    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "targetParameter"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2

    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "targetParameter1"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    const-string/jumbo v0, "targetParameter2"

    invoke-direct {p0, p3, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Parameter arguments must specify different parameter types"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    return-object p0
.end method

.method public blacklist build()Landroid/os/VibrationEffect;
    .locals 3

    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WaveformBuilder must have at least one transition to build."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
