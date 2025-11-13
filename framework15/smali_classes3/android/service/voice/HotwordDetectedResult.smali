.class public final Landroid/service/voice/HotwordDetectedResult;
.super Ljava/lang/Object;
.source "HotwordDetectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectedResult$Builder;,
        Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;,
        Landroid/service/voice/HotwordDetectedResult$Proximity;,
        Landroid/service/voice/HotwordDetectedResult$Limit;,
        Landroid/service/voice/HotwordDetectedResult$ConfidenceLevel;,
        Landroid/service/voice/HotwordDetectedResult$BaseBuilder;,
        Landroid/service/voice/HotwordDetectedResult$ProximityValue;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CHANNEL_UNSET:I = -0x1

.field public static final whitelist BACKGROUND_AUDIO_POWER_UNSET:I = -0x1

.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x5

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_LOW_MEDIUM:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final whitelist CONFIDENCE_LEVEL_NONE:I = 0x0

.field public static final whitelist CONFIDENCE_LEVEL_VERY_HIGH:I = 0x6

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordDetectedResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_PROXIMITY:Ljava/lang/String; = "android.service.voice.extra.PROXIMITY"

.field public static final whitelist HOTWORD_OFFSET_UNSET:I = -0x1

.field private static final blacklist LIMIT_AUDIO_CHANNEL_MAX_VALUE:I = 0x3f

.field private static final blacklist LIMIT_HOTWORD_OFFSET_MAX_VALUE:I = 0x36ee80

.field public static final whitelist PROXIMITY_FAR:I = 0x2

.field public static final whitelist PROXIMITY_NEAR:I = 0x1

.field public static final whitelist PROXIMITY_UNKNOWN:I = -0x1

.field private static blacklist sMaxBundleSize:I


# instance fields
.field private blacklist mAudioChannel:I

.field private final blacklist mAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBackgroundAudioPower:I

.field private final blacklist mConfidenceLevel:I

.field private final blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHotwordDetectionPersonalized:Z

.field private blacklist mHotwordDurationMillis:I

.field private blacklist mHotwordOffsetMillis:I

.field private final blacklist mHotwordPhraseId:I

.field private blacklist mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private final blacklist mPersonalizedScore:I

.field private final blacklist mScore:I

.field private final blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAudioStreams()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultAudioStreams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultBackgroundAudioPower()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultBackgroundAudioPower()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHotwordPhraseId()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultPersonalizedScore()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultScore()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSpeakerId()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultSpeakerId()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    new-instance v0, Landroid/service/voice/HotwordDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IILandroid/media/MediaSyncEvent;IIIZIIILjava/util/List;Landroid/os/PersistableBundle;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaSyncEvent;",
            "IIIZIII",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;",
            "Landroid/os/PersistableBundle;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    const/4 v2, -0x1

    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const/4 v3, 0x0

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean v3, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    move/from16 v2, p1

    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    move/from16 v3, p2

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    const-class v4, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    iget v5, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-static {v4, v1, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    move/from16 v5, p4

    iput v5, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    move/from16 v6, p5

    iput v6, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    move/from16 v7, p6

    iput v7, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    move/from16 v8, p7

    iput-boolean v8, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    move/from16 v9, p8

    iput v9, v0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    move/from16 v10, p9

    iput v10, v0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    move/from16 v11, p10

    iput v11, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    const-class v13, Landroid/annotation/NonNull;

    iget-object v14, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v13, v1, v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v14, v1, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v1, p13

    iput v1, v0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-direct/range {p0 .. p0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    const/4 v3, -0x1

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const/4 v4, 0x0

    iput v4, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean v4, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int/lit8 v7, v3, 0x4

    if-nez v7, :cond_1

    move-object v7, v2

    goto :goto_0

    :cond_1
    sget-object v7, Landroid/media/MediaSyncEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaSyncEvent;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-class v15, Landroid/service/voice/HotwordAudioStream;

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    sget-object v15, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PersistableBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v5, v0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    iput v6, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    const-class v1, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    move/from16 v16, v3

    iget v3, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    move/from16 v17, v5

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v7, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iput v8, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iput v9, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput v10, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean v4, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iput v11, v0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iput v12, v0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iput v13, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iput-object v14, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    const-class v1, Landroid/annotation/NonNull;

    iget-object v3, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v15, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-class v1, Landroid/annotation/NonNull;

    iget-object v3, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-direct/range {p0 .. p0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist bitCount(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    shr-long/2addr p0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CONFIDENCE_LEVEL_VERY_HIGH"

    return-object v0

    :pswitch_1
    const-string v0, "CONFIDENCE_LEVEL_HIGH"

    return-object v0

    :pswitch_2
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM_HIGH"

    return-object v0

    :pswitch_3
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object v0

    :pswitch_4
    const-string v0, "CONFIDENCE_LEVEL_LOW_MEDIUM"

    return-object v0

    :pswitch_5
    const-string v0, "CONFIDENCE_LEVEL_LOW"

    return-object v0

    :pswitch_6
    const-string v0, "CONFIDENCE_LEVEL_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist convertToProximityLevel(D)I
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist defaultAudioStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist defaultBackgroundAudioPower()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultConfidenceLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultExtras()Landroid/os/PersistableBundle;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultHotwordPhraseId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultPersonalizedScore()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultScore()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultSpeakerId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxBackgroundAudioPower()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public static whitelist getMaxBundleSize()I
    .locals 2

    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    if-gez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    :cond_0
    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    return v0
.end method

.method public static whitelist getMaxHotwordPhraseId()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public static whitelist getMaxScore()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public static whitelist getMaxSpeakerId()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public static blacklist getParcelableSize(Landroid/os/Parcelable;)I
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public static blacklist getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getConfidenceLevel()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordOffsetMillis()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordDurationMillis()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getAudioChannel()I

    move-result v1

    if-eq v1, v2, :cond_3

    const-wide/16 v1, 0x3f

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getPersonalizedScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v2

    if-eq v1, v2, :cond_5

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    :cond_7
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getBackgroundAudioPower()I

    move-result v2

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultBackgroundAudioPower()I

    move-result v3

    if-eq v2, v3, :cond_8

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBackgroundAudioPower()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    return v0
.end method

.method static blacklist limitToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "LIMIT_HOTWORD_OFFSET_MAX_VALUE"

    return-object v0

    :sswitch_1
    const-string v0, "LIMIT_AUDIO_CHANNEL_MAX_VALUE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3f -> :sswitch_1
        0x36ee80 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist onConstructed()V
    .locals 11

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxSpeakerId()I

    move-result v1

    const-string/jumbo v2, "speakerId"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const-string/jumbo v2, "score"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const-string/jumbo v2, "personalizedScore"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    const-string v2, "hotwordPhraseId"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBackgroundAudioPower()I

    move-result v2

    const-string v4, "backgroundAudioPower"

    invoke-static {v0, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    int-to-long v4, v0

    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    const-string v10, "hotwordDurationMillis"

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const v2, 0x36ee80

    const-string v4, "hotwordOffsetMillis"

    invoke-static {v0, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_1
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    const/16 v1, 0x3f

    const-string v2, "audioChannel"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "android.service.voice.extra.PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "extras"

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v4, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v4}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v4

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v5

    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_3
    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v0

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v1

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public static blacklist proximityToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "PROXIMITY_FAR"

    return-object v0

    :pswitch_2
    const-string v0, "PROXIMITY_NEAR"

    return-object v0

    :pswitch_3
    const-string v0, "PROXIMITY_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 2

    new-instance v0, Landroid/service/voice/HotwordDetectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;-><init>()V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setBackgroundAudioPower(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setSpeakerId(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    return-object v0
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
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iget-boolean v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAudioChannel()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    return v0
.end method

.method public whitelist getAudioStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBackgroundAudioPower()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    return v0
.end method

.method public whitelist getConfidenceLevel()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getHotwordDurationMillis()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    return v0
.end method

.method public whitelist getHotwordOffsetMillis()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    return v0
.end method

.method public whitelist getHotwordPhraseId()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    return v0
.end method

.method public whitelist getMediaSyncEvent()Landroid/media/MediaSyncEvent;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    return-object v0
.end method

.method public whitelist getPersonalizedScore()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    return v0
.end method

.method public whitelist getProximity()I
    .locals 3

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "android.service.voice.extra.PROXIMITY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getScore()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    return v0
.end method

.method public whitelist getSpeakerId()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist isHotwordDetectionPersonalized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    return v0
.end method

.method public blacklist setProximity(D)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/HotwordDetectedResult;->convertToProximityLevel(D)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-string v2, "android.service.voice.extra.PROXIMITY"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordDetectedResult { speakerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaSyncEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordOffsetMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDetectionPersonalized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", personalizedScore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordPhraseId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioStreams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundAudioPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_2
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
