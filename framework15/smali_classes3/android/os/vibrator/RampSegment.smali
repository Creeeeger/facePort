.class public final Landroid/os/vibrator/RampSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "RampSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDuration:I

.field private final blacklist mEndAmplitude:F

.field private final blacklist mEndFrequencyHz:F

.field private final blacklist mStartAmplitude:F

.field private final blacklist mStartFrequencyHz:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/RampSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/RampSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/RampSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFI)V
    .locals 0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    iput p2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    iput p3, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iput p4, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iput p5, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/RampSegment;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->applyEffectStrength(I)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-static {v1}, Landroid/os/vibrator/RampSegment;->frequencyRequiresFrequencyControl(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->hasFrequencyControl()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1}, Landroid/os/vibrator/RampSegment;->amplitudeRequiresAmplitudeControl(F)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/os/vibrator/RampSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/RampSegment;

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mDuration:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public blacklist getDuration()J
    .locals 2

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getEndAmplitude()F
    .locals 1

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    return v0
.end method

.method public blacklist getEndFrequencyHz()F
    .locals 1

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    return v0
.end method

.method public blacklist getStartAmplitude()F
    .locals 1

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    return v0
.end method

.method public blacklist getStartFrequencyHz()F
    .locals 1

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/RampSegment;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->resolve(I)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/RampSegment;
    .locals 9

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v7

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v8, Landroid/os/vibrator/RampSegment;

    iget v4, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v5, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v6, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    move-object v1, v8

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v8
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->scale(F)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/RampSegment;
    .locals 9

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v7

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v8, Landroid/os/vibrator/RampSegment;

    iget v4, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v5, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v6, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    move-object v1, v8

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v8
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->scaleLinearly(F)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const-string v4, ""

    const-string v5, "Hz"

    const-string v6, " @ "

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget v7, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-static {v8, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    filled-new-array {v0, v1, v2, v7, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Ramp=%dms(amplitude=%.2f%s to %.2f%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ramp{startAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 4

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    const-string/jumbo v1, "startFrequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    const-string v1, "endFrequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    int-to-long v0, v0

    const-string v2, "duration"

    invoke-static {v0, v1, v2}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    const-string/jumbo v1, "startAmplitude"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    const-string v1, "endAmplitude"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
