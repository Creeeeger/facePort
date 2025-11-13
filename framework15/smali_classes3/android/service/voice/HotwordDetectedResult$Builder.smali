.class public final Landroid/service/voice/HotwordDetectedResult$Builder;
.super Landroid/service/voice/HotwordDetectedResult$BaseBuilder;
.source "HotwordDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioChannel:I

.field private blacklist mAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackgroundAudioPower:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHotwordDetectionPersonalized:Z

.field private blacklist mHotwordDurationMillis:I

.field private blacklist mHotwordOffsetMillis:I

.field private blacklist mHotwordPhraseId:I

.field private blacklist mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private blacklist mPersonalizedScore:I

.field private blacklist mScore:I

.field private blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioStreams(Landroid/service/voice/HotwordDetectedResult$Builder;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;J)V
    .locals 0

    iput-wide p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/HotwordDetectedResult;
    .locals 15

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultSpeakerId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mSpeakerId:I

    :cond_0
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    :cond_1
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    :cond_2
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    :cond_3
    iget-wide v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iput v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    :cond_4
    iget-wide v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v7, 0x20

    and-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-nez v0, :cond_5

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    :cond_5
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x40

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iput-boolean v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    :cond_6
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    :cond_7
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultPersonalizedScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    :cond_8
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultHotwordPhraseId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    :cond_9
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x400

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultAudioStreams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    :cond_a
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x800

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    :cond_b
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x1000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultBackgroundAudioPower()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    :cond_c
    new-instance v0, Landroid/service/voice/HotwordDetectedResult;

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mSpeakerId:I

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    iget v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    iget v7, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    iget-boolean v8, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    iget v9, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    iget v10, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    iget v11, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    iget-object v12, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    iget-object v13, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    iget v14, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Landroid/service/voice/HotwordDetectedResult;-><init>(IILandroid/media/MediaSyncEvent;IIIZIIILjava/util/List;Landroid/os/PersistableBundle;I)V

    return-object v0
.end method

.method public whitelist setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    return-object p0
.end method

.method public bridge synthetic whitelist setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/service/voice/HotwordDetectedResult$BaseBuilder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setBackgroundAudioPower(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    return-object p0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    return-object p0
.end method

.method public whitelist setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    return-object p0
.end method

.method public whitelist setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    return-object p0
.end method

.method public whitelist setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    return-object p0
.end method

.method public whitelist setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    return-object p0
.end method

.method public whitelist setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    return-object p0
.end method

.method public whitelist setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    return-object p0
.end method

.method public whitelist setSpeakerId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mSpeakerId:I

    return-object p0
.end method
