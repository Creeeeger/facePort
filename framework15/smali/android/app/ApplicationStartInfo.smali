.class public final Landroid/app/ApplicationStartInfo;
.super Ljava/lang/Object;
.source "ApplicationStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationStartInfo$LaunchMode;,
        Landroid/app/ApplicationStartInfo$StartType;,
        Landroid/app/ApplicationStartInfo$StartReason;,
        Landroid/app/ApplicationStartInfo$StartupState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE:I = 0x2

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_MODE_SINGLE_TASK:I = 0x3

.field public static final whitelist LAUNCH_MODE_SINGLE_TOP:I = 0x1

.field public static final whitelist LAUNCH_MODE_STANDARD:I = 0x0

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_INTENT:Ljava/lang/String; = "intent"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMPS:Ljava/lang/String; = "timestamps"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TS:Ljava/lang/String; = "ts"

.field public static final whitelist STARTUP_STATE_ERROR:I = 0x1

.field public static final whitelist STARTUP_STATE_FIRST_FRAME_DRAWN:I = 0x2

.field public static final whitelist STARTUP_STATE_STARTED:I = 0x0

.field public static final whitelist START_REASON_ALARM:I = 0x0

.field public static final whitelist START_REASON_BACKUP:I = 0x1

.field public static final whitelist START_REASON_BOOT_COMPLETE:I = 0x2

.field public static final whitelist START_REASON_BROADCAST:I = 0x3

.field public static final whitelist START_REASON_CONTENT_PROVIDER:I = 0x4

.field public static final whitelist START_REASON_JOB:I = 0x5

.field public static final whitelist START_REASON_LAUNCHER:I = 0x6

.field public static final whitelist START_REASON_LAUNCHER_RECENTS:I = 0x7

.field public static final whitelist START_REASON_OTHER:I = 0x8

.field public static final whitelist START_REASON_PUSH:I = 0x9

.field public static final whitelist START_REASON_SERVICE:I = 0xa

.field public static final whitelist START_REASON_START_ACTIVITY:I = 0xb

.field public static final whitelist START_TIMESTAMP_APPLICATION_ONCREATE:I = 0x2

.field public static final whitelist START_TIMESTAMP_BIND_APPLICATION:I = 0x3

.field public static final whitelist START_TIMESTAMP_FIRST_FRAME:I = 0x4

.field public static final whitelist START_TIMESTAMP_FORK:I = 0x1

.field public static final whitelist START_TIMESTAMP_FULLY_DRAWN:I = 0x5

.field public static final whitelist START_TIMESTAMP_INITIAL_RENDERTHREAD_FRAME:I = 0x6

.field public static final whitelist START_TIMESTAMP_LAUNCH:I = 0x0

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER:I = 0x1e

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER_START:I = 0x15

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_SYSTEM:I = 0x14

.field public static final whitelist START_TIMESTAMP_SURFACEFLINGER_COMPOSITION_COMPLETE:I = 0x7

.field public static final whitelist START_TYPE_COLD:I = 0x1

.field public static final whitelist START_TYPE_HOT:I = 0x3

.field public static final whitelist START_TYPE_UNSET:I = 0x0

.field public static final whitelist START_TYPE_WARM:I = 0x2


# instance fields
.field private blacklist mDefiningUid:I

.field private blacklist mLaunchMode:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageUid:I

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mRealUid:I

.field private blacklist mReason:I

.field private blacklist mStartIntent:Landroid/content/Intent;

.field private blacklist mStartType:I

.field private blacklist mStartupState:I

.field private blacklist mStartupTimestampsNs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWasForceStopped:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ApplicationStartInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationStartInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationStartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ApplicationStartInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartType:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iget-boolean v0, p1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iput-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ApplicationStartInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static blacklist reasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    const-string v0, "START ACTIVITY"

    goto :goto_0

    :pswitch_1
    const-string v0, "SERVICE"

    goto :goto_0

    :pswitch_2
    const-string v0, "PUSH"

    goto :goto_0

    :pswitch_3
    const-string v0, "OTHER"

    goto :goto_0

    :pswitch_4
    const-string v0, "LAUNCHER RECENTS"

    goto :goto_0

    :pswitch_5
    const-string v0, "LAUNCHER"

    goto :goto_0

    :pswitch_6
    const-string v0, "JOB"

    goto :goto_0

    :pswitch_7
    const-string v0, "CONTENT PROVIDER"

    goto :goto_0

    :pswitch_8
    const-string v0, "BROADCAST"

    goto :goto_0

    :pswitch_9
    const-string v0, "BOOT COMPLETE"

    goto :goto_0

    :pswitch_a
    const-string v0, "BACKUP"

    goto :goto_0

    :pswitch_b
    const-string v0, "ALARM"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist startTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    const-string v0, "HOT"

    goto :goto_0

    :pswitch_1
    const-string v0, "WARM"

    goto :goto_0

    :pswitch_2
    const-string v0, "COLD"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNSET"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist timestampsEquals(Landroid/app/ApplicationStartInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addStartupTimestamp(IJ)V
    .locals 3

    if-ltz p1, :cond_2

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    :cond_1
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ApplicationStartInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " realUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " packageUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " definingUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " user="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " process="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " startupState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v3}, Landroid/app/ApplicationStartInfo;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " startType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-static {v3}, Landroid/app/ApplicationStartInfo;->startTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " launchMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " wasForceStopped="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " timestamps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/app/ApplicationStartInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/ApplicationStartInfo;

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mPid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mReason:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mStartType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iget v3, v1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Landroid/app/ApplicationStartInfo;->timestampsEquals(Landroid/app/ApplicationStartInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iget-boolean v3, v1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public whitelist getDefiningUid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getLaunchMode()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageUid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    return v0
.end method

.method public whitelist getPid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    return v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRealUid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    return v0
.end method

.method public whitelist getReason()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    return v0
.end method

.method public whitelist getStartType()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    return v0
.end method

.method public whitelist getStartupState()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    return v0
.end method

.method public whitelist getStartupTimestamps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 11

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-wide v2, 0x1080000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    goto/16 :goto_4

    :pswitch_1
    const-wide v2, 0x10e0000000bL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    goto/16 :goto_4

    :pswitch_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-wide v3, 0x10c0000000aL

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    const-string v5, "intent"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto/16 :goto_4

    :pswitch_3
    const-wide v2, 0x10e00000009L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    goto/16 :goto_4

    :pswitch_4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-wide v3, 0x10c00000008L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    const-string/jumbo v5, "timestamps"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    :cond_0
    :goto_2
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "timestamp"

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "key"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v8, "ts"

    invoke-interface {v4, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_2

    :cond_1
    goto :goto_3

    :catch_1
    move-exception v4

    :goto_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4

    :pswitch_5
    const-wide v2, 0x10e00000007L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    goto :goto_4

    :pswitch_6
    const-wide v2, 0x10e00000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    goto :goto_4

    :pswitch_7
    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    goto :goto_4

    :pswitch_8
    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    goto :goto_4

    :pswitch_9
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    goto :goto_4

    :pswitch_a
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    goto :goto_4

    :pswitch_b
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    nop

    :goto_4
    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setDefiningUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    return-void
.end method

.method public blacklist setForceStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return-void
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public blacklist setLaunchMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPackageUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    return-void
.end method

.method public blacklist setPid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRealUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    return-void
.end method

.method public blacklist setReason(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    return-void
.end method

.method public blacklist setStartType(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    return-void
.end method

.method public blacklist setStartupState(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    return-void
.end method

.method public whitelist wasForceStopped()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000002L

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000003L

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000004L

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10900000005L

    iget-object v6, v0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10e00000006L

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000007L

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "timestamps"

    invoke-interface {v8, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    const-string/jumbo v11, "timestamp"

    invoke-interface {v8, v6, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v13, "key"

    invoke-interface {v8, v6, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-string/jumbo v14, "ts"

    invoke-interface {v8, v6, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8, v6, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v8, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    nop

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-wide v10, 0x10c00000008L

    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1
    const-wide v7, 0x10e00000009L

    iget v4, v0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "intent"

    invoke-interface {v8, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v8, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    nop

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-wide v9, 0x10c0000000aL

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    :cond_2
    const-wide v4, 0x10e0000000bL

    iget v6, v0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x1080000000cL

    iget-boolean v6, v0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
