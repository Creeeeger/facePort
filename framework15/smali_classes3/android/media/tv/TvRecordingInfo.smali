.class public final Landroid/media/tv/TvRecordingInfo;
.super Ljava/lang/Object;
.source "TvRecordingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingInfo$DaysOfWeek;,
        Landroid/media/tv/TvRecordingInfo$TvRecordingListType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FRIDAY:I = 0x20

.field public static final whitelist MONDAY:I = 0x2

.field public static final whitelist RECORDING_ALL:I = 0x3

.field public static final whitelist RECORDING_IN_PROGRESS:I = 0x2

.field public static final whitelist RECORDING_SCHEDULED:I = 0x1

.field public static final whitelist SATURDAY:I = 0x40

.field public static final whitelist SUNDAY:I = 0x1

.field public static final whitelist THURSDAY:I = 0x10

.field public static final whitelist TUESDAY:I = 0x4

.field public static final whitelist WEDNESDAY:I = 0x8


# instance fields
.field private blacklist mChannelUri:Landroid/net/Uri;

.field private blacklist mContentRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mEndPaddingMillis:J

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mProgramUri:Landroid/net/Uri;

.field private blacklist mRecordingDurationMillis:J

.field private blacklist mRecordingId:Ljava/lang/String;

.field private blacklist mRecordingStartTimeMillis:J

.field private blacklist mRecordingUri:Landroid/net/Uri;

.field private blacklist mRepeatDays:I

.field private blacklist mScheduledDurationMillis:J

.field private blacklist mScheduledStartTimeMillis:J

.field private blacklist mStartPaddingMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$QQKZEhlO875Rb7Qx1ih8lmpPO9U(Landroid/media/tv/TvRecordingInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvRecordingInfo;->lambda$new$1(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvRecordingInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvRecordingInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v1, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/TvRecordingInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvRecordingInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvRecordingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;",
            "Landroid/net/Uri;",
            "JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    move/from16 v6, p6

    iput v6, v0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    return-void
.end method

.method private synthetic blacklist lambda$new$1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(Ljava/util/List;Landroid/media/tv/TvContentRating;)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChannelUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getContentRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEndPaddingMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProgramUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRecordingDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    return-wide v0
.end method

.method public whitelist getRecordingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRecordingStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    return-wide v0
.end method

.method public whitelist getRecordingUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRepeatDays()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    return v0
.end method

.method public whitelist getScheduledDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    return-wide v0
.end method

.method public whitelist getScheduledStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    return-wide v0
.end method

.method public whitelist getStartPaddingMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    return-wide v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    new-instance v3, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v2, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
