.class final Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
.super Ljava/lang/Object;
.source "SerializedAmplitudeStepWaveform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAmplitudes:Landroid/util/IntArray;

.field private blacklist mRepeatIndex:I

.field private final blacklist mTimings:Landroid/util/LongArray;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mTimings:Landroid/util/LongArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mAmplitudes:Landroid/util/IntArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mRepeatIndex:I

    return-void
.end method


# virtual methods
.method blacklist addDurationAndAmplitude(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->add(J)V

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mAmplitudes:Landroid/util/IntArray;

    invoke-virtual {v0, p3}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
    .locals 5

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mAmplitudes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mRepeatIndex:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;-><init>([J[IILcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform-IA;)V

    return-object v0
.end method

.method blacklist hasNonZeroDuration()Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setRepeatIndexToCurrentEntry()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mTimings:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->mRepeatIndex:I

    return-void
.end method
