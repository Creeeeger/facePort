.class public final Landroid/app/ApplicationExitInfo;
.super Ljava/lang/Object;
.source "ApplicationExitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationExitInfo$SubReason;,
        Landroid/app/ApplicationExitInfo$Reason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_ANR:I = 0x6

.field public static final whitelist REASON_CRASH:I = 0x4

.field public static final whitelist REASON_CRASH_NATIVE:I = 0x5

.field public static final whitelist REASON_DEPENDENCY_DIED:I = 0xc

.field public static final whitelist REASON_EXCESSIVE_RESOURCE_USAGE:I = 0x9

.field public static final whitelist REASON_EXIT_SELF:I = 0x1

.field public static final whitelist REASON_FREEZER:I = 0xe

.field public static final blacklist REASON_GENAI:I = 0x11

.field public static final whitelist REASON_INITIALIZATION_FAILURE:I = 0x7

.field public static final whitelist REASON_LOW_MEMORY:I = 0x3

.field public static final whitelist REASON_OTHER:I = 0xd

.field public static final whitelist REASON_PACKAGE_STATE_CHANGE:I = 0xf

.field public static final whitelist REASON_PACKAGE_UPDATED:I = 0x10

.field public static final whitelist REASON_PERMISSION_CHANGE:I = 0x8

.field public static final whitelist REASON_SIGNALED:I = 0x2

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final whitelist REASON_USER_REQUESTED:I = 0xa

.field public static final whitelist REASON_USER_STOPPED:I = 0xb

.field public static final blacklist SUBREASON_CACHED_IDLE_FORCED_APP_STANDBY:I = 0x12

.field public static final blacklist SUBREASON_EXCESSIVE_BINDER_OBJECTS:I = 0x1d

.field public static final blacklist SUBREASON_EXCESSIVE_CPU:I = 0x7

.field public static final blacklist SUBREASON_EXCESSIVE_OUTGOING_BROADCASTS_WHILE_CACHED:I = 0x20

.field public static final blacklist SUBREASON_FORCE_STOP:I = 0x15

.field public static final blacklist SUBREASON_FREEZER_BINDER_ASYNC_FULL:I = 0x1f

.field public static final blacklist SUBREASON_FREEZER_BINDER_IOCTL:I = 0x13

.field public static final blacklist SUBREASON_FREEZER_BINDER_TRANSACTION:I = 0x14

.field public static final blacklist SUBREASON_GENAI_UNLOAD_POLICY:I = 0x3eb

.field public static final blacklist SUBREASON_IMPERCEPTIBLE:I = 0xf

.field public static final blacklist SUBREASON_INVALID_START:I = 0xd

.field public static final blacklist SUBREASON_INVALID_STATE:I = 0xe

.field public static final blacklist SUBREASON_ISOLATED_NOT_NEEDED:I = 0x11

.field public static final blacklist SUBREASON_KILL_ALL_BG_EXCEPT:I = 0xa

.field public static final blacklist SUBREASON_KILL_ALL_FG:I = 0x9

.field public static final blacklist SUBREASON_KILL_BACKGROUND:I = 0x18

.field public static final blacklist SUBREASON_KILL_PID:I = 0xc

.field public static final blacklist SUBREASON_KILL_UID:I = 0xb

.field public static final blacklist SUBREASON_LARGE_CACHED:I = 0x5

.field public static final blacklist SUBREASON_MARS_FREEZER_BINDER_TRANSACTION:I = 0x3ea

.field public static final blacklist SUBREASON_MARS_KILL:I = 0x3e9

.field public static final blacklist SUBREASON_MEMORY_PRESSURE:I = 0x6

.field public static final blacklist SUBREASON_OOM_KILL:I = 0x1e

.field public static final blacklist SUBREASON_PACKAGE_UPDATE:I = 0x19

.field public static final blacklist SUBREASON_REMOVE_LRU:I = 0x10

.field public static final blacklist SUBREASON_REMOVE_TASK:I = 0x16

.field public static final blacklist SUBREASON_SDK_SANDBOX_DIED:I = 0x1b

.field public static final blacklist SUBREASON_SDK_SANDBOX_NOT_NEEDED:I = 0x1c

.field public static final blacklist SUBREASON_STOP_APP:I = 0x17

.field public static final blacklist SUBREASON_SYSTEM_UPDATE_DONE:I = 0x8

.field public static final blacklist SUBREASON_TOO_MANY_CACHED:I = 0x2

.field public static final blacklist SUBREASON_TOO_MANY_EMPTY:I = 0x3

.field public static final blacklist SUBREASON_TRIM_EMPTY:I = 0x4

.field public static final blacklist SUBREASON_UNDELIVERED_BROADCAST:I = 0x1a

.field public static final blacklist SUBREASON_UNKNOWN:I = 0x0

.field public static final blacklist SUBREASON_WAIT_FOR_DEBUGGER:I = 0x1


# instance fields
.field private blacklist mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

.field private blacklist mConnectionGroup:I

.field private blacklist mDefiningUid:I

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mHasForegroundServices:Z

.field private blacklist mImportance:I

.field private blacklist mLoggedInStatsd:Z

.field private blacklist mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field private blacklist mPackageList:[Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageUid:I

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mPss:J

.field private blacklist mRealUid:I

.field private blacklist mReason:I

.field private blacklist mRss:J

.field private blacklist mState:[B

.field private blacklist mStatus:I

.field private blacklist mSubReason:I

.field private blacklist mTimestamp:J

.field private blacklist mTraceFile:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ApplicationExitInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ApplicationExitInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mStatus:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mImportance:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mPss:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mRss:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mState:[B

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    iget-boolean v0, p1, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    iput-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    iget-boolean v0, p1, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    iput-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAppTraceRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTraceRetriever;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IParcelFileDescriptorRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IParcelFileDescriptorRetriever;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ApplicationExitInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/os/Parcel;)V

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

.method public static blacklist reasonCodeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "PACKAGE UPDATED"

    return-object v0

    :pswitch_1
    const-string v0, "STATE CHANGE"

    return-object v0

    :pswitch_2
    const-string v0, "FREEZER"

    return-object v0

    :pswitch_3
    const-string v0, "OTHER KILLS BY SYSTEM"

    return-object v0

    :pswitch_4
    const-string v0, "DEPENDENCY DIED"

    return-object v0

    :pswitch_5
    const-string v0, "USER STOPPED"

    return-object v0

    :pswitch_6
    const-string v0, "USER REQUESTED"

    return-object v0

    :pswitch_7
    const-string v0, "EXCESSIVE RESOURCE USAGE"

    return-object v0

    :pswitch_8
    const-string v0, "PERMISSION CHANGE"

    return-object v0

    :pswitch_9
    const-string v0, "INITIALIZATION FAILURE"

    return-object v0

    :pswitch_a
    const-string v0, "ANR"

    return-object v0

    :pswitch_b
    const-string v0, "APP CRASH(NATIVE)"

    return-object v0

    :pswitch_c
    const-string v0, "APP CRASH(EXCEPTION)"

    return-object v0

    :pswitch_d
    const-string v0, "LOW_MEMORY"

    return-object v0

    :pswitch_e
    const-string v0, "SIGNALED"

    return-object v0

    :pswitch_f
    const-string v0, "EXIT_SELF"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static blacklist subreasonToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string v0, "GENAI UNLOAD POLICY"

    return-object v0

    :sswitch_1
    const-string v0, "MARS KILL"

    return-object v0

    :sswitch_2
    const-string v0, "EXCESSIVE_OUTGOING_BROADCASTS_WHILE_CACHED"

    return-object v0

    :sswitch_3
    const-string v0, "FREEZER BINDER ASYNC FULL"

    return-object v0

    :sswitch_4
    const-string v0, "OOM KILL"

    return-object v0

    :sswitch_5
    const-string v0, "EXCESSIVE BINDER OBJECTS"

    return-object v0

    :sswitch_6
    const-string v0, "UNDELIVERED BROADCAST"

    return-object v0

    :sswitch_7
    const-string v0, "PACKAGE UPDATE"

    return-object v0

    :sswitch_8
    const-string v0, "KILL BACKGROUND"

    return-object v0

    :sswitch_9
    const-string v0, "STOP APP"

    return-object v0

    :sswitch_a
    const-string v0, "REMOVE TASK"

    return-object v0

    :sswitch_b
    const-string v0, "FORCE STOP"

    return-object v0

    :sswitch_c
    const-string v0, "FREEZER BINDER TRANSACTION"

    return-object v0

    :sswitch_d
    const-string v0, "FREEZER BINDER IOCTL"

    return-object v0

    :sswitch_e
    const-string v0, "ISOLATED NOT NEEDED"

    return-object v0

    :sswitch_f
    const-string v0, "REMOVE LRU"

    return-object v0

    :sswitch_10
    const-string v0, "IMPERCEPTIBLE"

    return-object v0

    :sswitch_11
    const-string v0, "INVALID STATE"

    return-object v0

    :sswitch_12
    const-string v0, "INVALID START"

    return-object v0

    :sswitch_13
    const-string v0, "KILL PID"

    return-object v0

    :sswitch_14
    const-string v0, "KILL UID"

    return-object v0

    :sswitch_15
    const-string v0, "KILL ALL BG EXCEPT"

    return-object v0

    :sswitch_16
    const-string v0, "KILL ALL FG"

    return-object v0

    :sswitch_17
    const-string v0, "SYSTEM UPDATE_DONE"

    return-object v0

    :sswitch_18
    const-string v0, "EXCESSIVE CPU USAGE"

    return-object v0

    :sswitch_19
    const-string v0, "MEMORY PRESSURE"

    return-object v0

    :sswitch_1a
    const-string v0, "LARGE CACHED"

    return-object v0

    :sswitch_1b
    const-string v0, "TRIM EMPTY"

    return-object v0

    :sswitch_1c
    const-string v0, "TOO MANY EMPTY PROCS"

    return-object v0

    :sswitch_1d
    const-string v0, "TOO MANY CACHED PROCS"

    return-object v0

    :sswitch_1e
    const-string v0, "WAIT FOR DEBUGGER"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_19
        0x7 -> :sswitch_18
        0x8 -> :sswitch_17
        0x9 -> :sswitch_16
        0xa -> :sswitch_15
        0xb -> :sswitch_14
        0xc -> :sswitch_13
        0xd -> :sswitch_12
        0xe -> :sswitch_11
        0xf -> :sswitch_10
        0x10 -> :sswitch_f
        0x11 -> :sswitch_e
        0x13 -> :sswitch_d
        0x14 -> :sswitch_c
        0x15 -> :sswitch_b
        0x16 -> :sswitch_a
        0x17 -> :sswitch_9
        0x18 -> :sswitch_8
        0x19 -> :sswitch_7
        0x1a -> :sswitch_6
        0x1d -> :sswitch_5
        0x1e -> :sswitch_4
        0x1f -> :sswitch_3
        0x20 -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ApplicationExitInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " timestamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " realUid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " packageUid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " definingUid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " process="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-static {v5}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " subreason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {v4}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " status="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " importance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pss="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    shl-long/2addr v3, v2

    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " rss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    shl-long/2addr v3, v2

    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "empty"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " trace="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/app/ApplicationExitInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mPid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mRealUid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mReason:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mSubReason:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mImportance:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mStatus:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iget-wide v4, v1, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    iget-wide v4, v1, Landroid/app/ApplicationExitInfo;->mPss:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    iget-wide v4, v1, Landroid/app/ApplicationExitInfo;->mRss:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

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

.method public blacklist getConnectionGroup()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    return v0
.end method

.method public whitelist getDefiningUid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    if-eqz v1, :cond_0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {v1}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportance()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    return v0
.end method

.method public blacklist getPackageList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageUid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    return v0
.end method

.method public whitelist getPid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    return v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProcessStateSummary()[B
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    return-object v0
.end method

.method public whitelist getPss()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    return-wide v0
.end method

.method public whitelist getRealUid()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    return v0
.end method

.method public whitelist getReason()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    return v0
.end method

.method public whitelist getRss()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    return-wide v0
.end method

.method public whitelist getStatus()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    return v0
.end method

.method public blacklist getSubReason()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist getTraceFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getTraceInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-interface {v0}, Landroid/app/IParcelFileDescriptorRetriever;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v2

    :cond_2
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-interface {v0, v2, v3, v4}, Landroid/app/IAppTraceRetriever;->getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    return-object v1
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasForegroundServices()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist isLoggedInStatsd()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    return v0
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-wide v2, 0x10900000010L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    goto/16 :goto_1

    :pswitch_1
    const-wide v2, 0x10c0000000fL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    goto/16 :goto_1

    :pswitch_2
    const-wide v2, 0x1090000000eL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    const-wide v2, 0x1030000000dL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    goto/16 :goto_1

    :pswitch_4
    const-wide v2, 0x1030000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    goto/16 :goto_1

    :pswitch_5
    const-wide v2, 0x1030000000bL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    goto/16 :goto_1

    :pswitch_6
    const-wide v2, 0x10e0000000aL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    goto/16 :goto_1

    :pswitch_7
    const-wide v2, 0x10500000009L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    goto :goto_1

    :pswitch_8
    const-wide v2, 0x10e00000008L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    goto :goto_1

    :pswitch_9
    const-wide v2, 0x10e00000007L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    goto :goto_1

    :pswitch_a
    const-wide v2, 0x10500000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    goto :goto_1

    :pswitch_b
    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    goto :goto_1

    :pswitch_d
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    goto :goto_1

    :pswitch_e
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    goto :goto_1

    :pswitch_f
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    nop

    :cond_0
    :goto_1
    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public blacklist setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    return-void
.end method

.method public blacklist setConnectionGroup(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    return-void
.end method

.method public blacklist setDefiningUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    return-void
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setHasForegroundServices(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return-void
.end method

.method public blacklist setImportance(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    return-void
.end method

.method public blacklist setLoggedInStatsd(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    return-void
.end method

.method public blacklist setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    return-void
.end method

.method public blacklist setPackageList([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPackageUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    return-void
.end method

.method public blacklist setPid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setProcessStateSummary([B)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    return-void
.end method

.method public blacklist setPss(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    return-void
.end method

.method public blacklist setRealUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    return-void
.end method

.method public blacklist setReason(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    return-void
.end method

.method public blacklist setRss(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    return-void
.end method

.method public blacklist setStatus(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    return-void
.end method

.method public blacklist setSubReason(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    return-void
.end method

.method public blacklist setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    return-void
.end method

.method public blacklist setTraceFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationExitInfo(timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " realUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " definingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-static {v3}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subreason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    const/16 v3, 0xa

    shl-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " rss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    shl-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "empty"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    invoke-interface {v0}, Landroid/app/IAppTraceRetriever;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-interface {v0}, Landroid/app/IParcelFileDescriptorRetriever;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000005L

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000007L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000008L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000aL

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1030000000bL

    iget-wide v4, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000000cL

    iget-wide v4, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000000dL

    iget-wide v4, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1090000000eL

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10c0000000fL

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    nop

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-wide v3, 0x10900000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
