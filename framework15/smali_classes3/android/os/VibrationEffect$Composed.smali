.class public final Landroid/os/VibrationEffect$Composed;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composed"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRepeatIndex:I

.field private final blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$Composed$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Composed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitude:I

    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/vibrator/VibrationEffectSegment;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/vibrator/VibrationEffectSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    iput p2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    return-void
.end method

.method private static blacklist castToValidStepSegmentForOffOnTimingsOrNull(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/vibrator/StepSegment;
    .locals 4

    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$Composed;
    .locals 5

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p1, :cond_1

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Landroid/os/VibrationEffect$Composed;

    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v1

    :cond_2
    if-gtz p2, :cond_3

    new-instance v1, Landroid/os/VibrationEffect$Composed;

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Landroid/os/vibrator/StepSegment;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v3, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v3
.end method

.method public bridge synthetic blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$Composed;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 3

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v1, p1}, Landroid/os/vibrator/VibrationEffectSegment;->areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .locals 13

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v6}, Landroid/os/VibrationEffect$Composed;->castToValidStepSegmentForOffOnTimingsOrNull(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/vibrator/StepSegment;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v6}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    const/4 v8, 0x0

    if-nez v7, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_3

    move v8, v3

    :cond_3
    if-eq v7, v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    aget-wide v9, v2, v4

    invoke-virtual {v6}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v11

    add-long/2addr v9, v11

    aput-wide v9, v2, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    return-object v1
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .locals 5

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v3, v2, v4}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    :try_start_0
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->validate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v3

    :catch_0
    move-exception v4

    return-object v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/VibrationEffect$Composed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$Composed;

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    iget v4, v1, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getDuration()J
    .locals 8

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ltz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    return-wide v4

    :cond_1
    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public blacklist getRepeatIndex()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    return v0
.end method

.method public blacklist getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 11

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    return v5

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    iget-object v7, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/VibrationEffectSegment;->isHapticFeedbackCandidate()Z

    move-result v7

    if-nez v7, :cond_2

    return v5

    :cond_2
    iget-object v7, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_3

    add-long/2addr v0, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    return v5
.end method

.method public blacklist resolve(I)Landroid/os/VibrationEffect$Composed;
    .locals 4

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->resolve(I)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v2, v1, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->validate()V

    return-object v2
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->resolve(I)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/VibrationEffect$Composed;
    .locals 4

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->scale(F)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v2, v1, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->validate()V

    return-object v2
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->scale(F)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist semApplyEffectStrength(I)Landroid/os/VibrationEffect$Composed;
    .locals 4

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {v2, v1, v3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->validate()V

    return-object v2
.end method

.method public bridge synthetic whitelist semApplyEffectStrength(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->semApplyEffectStrength(I)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationEffectSegment;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "["

    const-string v2, "]"

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/VibrationEffectSegment;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ltz v1, :cond_2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s, repeat=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Composed{segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagnitudeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 9

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->validate()V

    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ")"

    if-eqz v1, :cond_3

    iget v4, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    add-int/lit8 v5, v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "repeat index must be within the bounds of the segments (segments.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at least one timing must be non-zero (segments="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
