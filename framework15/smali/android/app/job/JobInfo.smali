.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$TriggerContentUri;,
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$Priority;,
        Landroid/app/job/JobInfo$BackoffPolicy;,
        Landroid/app/job/JobInfo$NetworkType;
    }
.end annotation


# static fields
.field public static final whitelist BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final whitelist BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final blacklist BIAS_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final blacklist BIAS_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final blacklist BIAS_BOUND_FOREGROUND_SERVICE:I = 0x1e

.field public static final blacklist BIAS_DEFAULT:I = 0x0

.field public static final blacklist BIAS_FOREGROUND_SERVICE:I = 0x23

.field public static final blacklist BIAS_SYNC_EXPEDITED:I = 0xa

.field public static final blacklist BIAS_SYNC_INITIALIZATION:I = 0x14

.field public static final blacklist BIAS_TOP_APP:I = 0x28

.field public static final greylist-max-o CONSTRAINT_FLAG_BATTERY_NOT_LOW:I = 0x2

.field public static final greylist-max-o CONSTRAINT_FLAG_CHARGING:I = 0x1

.field public static final greylist-max-o CONSTRAINT_FLAG_DEVICE_IDLE:I = 0x4

.field public static final greylist-max-o CONSTRAINT_FLAG_STORAGE_NOT_LOW:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final whitelist DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final blacklist DISALLOW_DEADLINES_FOR_PREFETCH_JOBS:J = 0xb98555fL

.field public static final blacklist ENFORCE_MINIMUM_TIME_WINDOWS:J = 0x128fa179L

.field public static final greylist-max-o FLAG_EXEMPT_FROM_APP_STANDBY:I = 0x8

.field public static final blacklist FLAG_EXPEDITED:I = 0x10

.field public static final greylist-max-o FLAG_IMPORTANT_WHILE_FOREGROUND:I = 0x2

.field public static final greylist-max-o FLAG_PREFETCH:I = 0x4

.field public static final blacklist FLAG_USER_INITIATED:I = 0x20

.field public static final greylist-max-r FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final whitelist MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final blacklist MAX_DEBUG_TAG_LENGTH:I = 0x7f

.field public static final blacklist MAX_NUM_DEBUG_TAGS:I = 0x20

.field public static final blacklist MAX_TRACE_TAG_LENGTH:I = 0x7f

.field private static final blacklist MIN_ALLOWED_TIME_WINDOW_MILLIS:J = 0xdbba0L

.field public static final greylist-max-o MIN_BACKOFF_MILLIS:J = 0x2710L

.field private static final greylist-max-o MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final greylist-max-o MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final whitelist NETWORK_BYTES_UNKNOWN:I = -0x1

.field public static final whitelist NETWORK_TYPE_ANY:I = 0x1

.field public static final whitelist NETWORK_TYPE_CELLULAR:I = 0x4

.field public static final whitelist NETWORK_TYPE_METERED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_NONE:I = 0x0

.field public static final whitelist NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final whitelist PRIORITY_DEFAULT:I = 0x12c

.field public static final greylist-max-r PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final greylist-max-r PRIORITY_FOREGROUND_SERVICE:I = 0x23

.field public static final whitelist PRIORITY_HIGH:I = 0x190

.field public static final whitelist PRIORITY_LOW:I = 0xc8

.field public static final whitelist PRIORITY_MAX:I = 0x1f4

.field public static final whitelist PRIORITY_MIN:I = 0x64

.field public static final blacklist REJECT_NEGATIVE_DELAYS_AND_DEADLINES:J = 0x1345eb5aL

.field public static final blacklist REJECT_NEGATIVE_NETWORK_ESTIMATES:J = 0xf1e9ef7L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final blacklist THROW_ON_INVALID_PRIORITY_VALUE:J = 0x8653c4bL


# instance fields
.field private final greylist-max-o backoffPolicy:I

.field private final greylist-max-o clipData:Landroid/content/ClipData;

.field private final greylist-max-o clipGrantFlags:I

.field private final greylist-max-o constraintFlags:I

.field private final greylist-max-o extras:Landroid/os/PersistableBundle;

.field private final greylist-max-p flags:I

.field private final greylist-max-o flexMillis:J

.field private final greylist-max-o hasEarlyConstraint:Z

.field private final greylist-max-o hasLateConstraint:Z

.field private final greylist-max-o initialBackoffMillis:J

.field private final greylist-max-o intervalMillis:J

.field private final greylist-max-o isPeriodic:Z

.field private final greylist-max-o isPersisted:Z

.field private final greylist jobId:I

.field private final blacklist mBias:I

.field private final blacklist mDebugTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPriority:I

.field private final blacklist mTraceTag:Ljava/lang/String;

.field private final greylist-max-o maxExecutionDelayMillis:J

.field private final greylist-max-o minLatencyMillis:J

.field private final blacklist minimumNetworkChunkBytes:J

.field private final greylist-max-o networkDownloadBytes:J

.field private final greylist-max-o networkRequest:Landroid/net/NetworkRequest;

.field private final greylist-max-o networkUploadBytes:J

.field private final greylist service:Landroid/content/ComponentName;

.field private final greylist-max-o transientExtras:Landroid/os/Bundle;

.field private final greylist-max-o triggerContentMaxDelay:J

.field private final greylist-max-o triggerContentUpdateDelay:J

.field private final greylist-max-o triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mBias:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmDebugTags(Landroid/app/job/JobInfo$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTraceTag(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_0
    iput-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto :goto_1

    :cond_1
    iput-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iput v3, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    sget-object v1, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    iput-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_2

    :cond_2
    iput-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->mBias:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "malformed parcel"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getBiasString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [UNKNOWN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "40 [TOP_APP]"

    return-object v0

    :sswitch_1
    const-string v0, "35 [FGS_APP]"

    return-object v0

    :sswitch_2
    const-string v0, "30 [BFGS_APP]"

    return-object v0

    :sswitch_3
    const-string v0, "20 [SYNC_INITIALIZATION]"

    return-object v0

    :sswitch_4
    const-string v0, "10 [SYNC_EXPEDITED]"

    return-object v0

    :sswitch_5
    const-string v0, "0 [DEFAULT]"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x1e -> :sswitch_2
        0x23 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final greylist-max-o getMinBackoffMillis()J
    .locals 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final whitelist getMinFlexMillis()J
    .locals 2

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final whitelist getMinPeriodMillis()J
    .locals 2

    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method public static blacklist getPriorityString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [UNKNOWN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [MAX]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [HIGH]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [DEFAULT]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [LOW]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [MIN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist validateDebugTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "debug tag cannot be more than 127 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "debug tag cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "debug tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validateTraceTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trace tag cannot contain |, \\n, or \\0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "traceTag tag cannot be more than 127 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trace tag cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist enforceValidity(ZZZZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-wide v1, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_41

    :cond_1
    iget-object v1, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid network upload bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid network download bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_6

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    goto :goto_3

    :cond_6
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    iget-wide v7, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_7

    move-wide v7, v3

    goto :goto_2

    :cond_7
    iget-wide v7, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    :goto_2
    add-long/2addr v1, v7

    :goto_3
    iget-wide v7, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_9

    cmp-long v7, v1, v5

    if-eqz v7, :cond_9

    iget-wide v7, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v7, v7, v1

    if-gtz v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_4
    iget-wide v7, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_b

    iget-wide v5, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_a

    goto :goto_5

    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Minimum chunk size must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    :goto_5
    if-eqz p4, :cond_e

    iget-wide v5, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_d

    iget-wide v5, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_c

    goto :goto_6

    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override deadline is negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Minimum latency is negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    :goto_6
    iget-wide v5, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v5, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_f

    move v5, v7

    goto :goto_7

    :cond_f
    move v5, v6

    :goto_7
    iget-boolean v8, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eqz v8, :cond_13

    if-nez v5, :cond_12

    iget-wide v8, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v8, v8, v3

    if-nez v8, :cond_11

    iget-object v8, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v8, :cond_10

    goto :goto_8

    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    :goto_8
    if-eqz p1, :cond_15

    if-eqz v5, :cond_15

    iget v8, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_14

    goto :goto_9

    :cond_14
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setOverrideDeadline() on a prefetch job."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    :goto_9
    iget-boolean v8, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eqz v8, :cond_1b

    iget-object v8, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v8, :cond_17

    iget-object v8, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v8}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v8

    if-nez v8, :cond_16

    goto :goto_a

    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Network specifiers aren\'t supported for persistent jobs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    :goto_a
    iget-object v8, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v8, :cond_1a

    iget-object v8, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-nez v8, :cond_18

    goto :goto_b

    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setClipData() on a persisted job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_19
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1b
    :goto_b
    iget v8, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    const/16 v9, 0x190

    if-eqz v8, :cond_1e

    iget-boolean v8, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v8, :cond_1d

    iget v8, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v8, v9, :cond_1e

    iget v8, v0, Landroid/app/job/JobInfo;->mPriority:I

    const/16 v10, 0x12c

    if-ne v8, v10, :cond_1c

    goto :goto_c

    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An important while foreground job must be high or default priority. Don\'t mark unimportant tasks as important while foreground."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An important while foreground job cannot have a time delay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1e
    :goto_c
    iget v8, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1f

    move v8, v7

    goto :goto_d

    :cond_1f
    move v8, v6

    :goto_d
    iget v10, v0, Landroid/app/job/JobInfo;->flags:I

    const/16 v11, 0x20

    and-int/2addr v10, v11

    if-eqz v10, :cond_20

    move v10, v7

    goto :goto_e

    :cond_20
    move v10, v6

    :goto_e
    iget v12, v0, Landroid/app/job/JobInfo;->mPriority:I

    sparse-switch v12, :sswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid priority level provided: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    if-nez v8, :cond_24

    if-eqz v10, :cond_21

    goto :goto_f

    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only expedited or user-initiated jobs can have max priority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_1
    iget v12, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_23

    iget-boolean v12, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v12, :cond_22

    goto :goto_f

    :cond_22
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Periodic jobs cannot be high priority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Prefetch jobs cannot be high priority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_2
    nop

    :cond_24
    :goto_f
    iget-object v12, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v12, :cond_25

    iget v12, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-nez v12, :cond_25

    iget-object v12, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v12, :cond_26

    iget-object v12, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v12, v12

    if-lez v12, :cond_26

    :cond_25
    move v6, v7

    :cond_26
    iget-boolean v7, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eqz v7, :cond_2b

    iget-boolean v7, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v7, :cond_2b

    const-string v7, "Job \'"

    const-string v12, "#"

    if-nez v6, :cond_27

    sget-object v3, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' has a deadline with no functional constraints. The deadline won\'t improve job execution latency. Consider removing the deadline."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_27
    iget-boolean v13, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eqz v13, :cond_28

    iget-wide v3, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    :cond_28
    iget-wide v13, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    sub-long/2addr v13, v3

    const-wide/32 v15, 0xdbba0

    cmp-long v13, v13, v15

    if-gez v13, :cond_2b

    const-string v13, ", deadline="

    if-eqz p3, :cond_2a

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->enforceMinimumTimeWindows()Z

    move-result v14

    if-nez v14, :cond_29

    goto :goto_10

    :cond_29
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time window too short. Constraints unlikely to be satisfied. Increase deadline to a reasonable duration. Job \'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\' has delay="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2a
    :goto_10
    sget-object v14, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v15, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v12, v0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\' has a deadline with functional constraints and an extremely short time window of "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v11, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    sub-long/2addr v11, v3

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ms (delay="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v11, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "). The functional constraints are not likely to be satisfied when the job runs."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_11
    const/16 v3, 0x1f4

    if-eqz v8, :cond_34

    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v4, :cond_33

    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez v4, :cond_32

    iget-boolean v4, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v4, :cond_31

    if-nez v10, :cond_30

    iget v4, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v4, v3, :cond_2d

    iget v4, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-ne v4, v9, :cond_2c

    goto :goto_12

    :cond_2c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job must be high or max priority. Don\'t use expedited jobs for unimportant tasks."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2d
    :goto_12
    iget v4, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v4, v4, -0x9

    if-nez v4, :cond_2f

    iget v4, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v4, v4, -0x19

    if-nez v4, :cond_2f

    iget-object v4, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v4, :cond_34

    iget-object v4, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v4, v4

    if-gtz v4, :cond_2e

    goto :goto_13

    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on an expedited job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job can only have network and storage-not-low constraints"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_30
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot be user-initiated"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_31
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot be periodic"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_32
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot have a deadline"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot have a time delay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_34
    :goto_13
    if-eqz v10, :cond_3e

    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v4, :cond_3d

    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez v4, :cond_3c

    iget-boolean v4, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v4, :cond_3b

    iget v4, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3a

    iget v4, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-ne v4, v3, :cond_39

    iget v3, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_38

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v3, :cond_36

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v3, v3

    if-gtz v3, :cond_35

    goto :goto_14

    :cond_35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on a user-initiated job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_36
    :goto_14
    iget-object v3, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v3, :cond_37

    goto :goto_15

    :cond_37
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated data transfer job must specify a valid network type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot have a device-idle constraint"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_39
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job must be max priority."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot also be a prefetch job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot be periodic"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot have a deadline"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot have a time delay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3e
    :goto_15
    iget-object v3, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_40

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const/4 v4, 0x0

    :goto_16
    iget-object v7, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v4, v7, :cond_3f

    iget-object v7, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_3f
    iget-object v4, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    iget-object v4, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v4, v0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/job/JobInfo;->validateTraceTag(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have more than 32 tags"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t provide estimated network usage without requiring a network"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/job/JobInfo;

    iget v2, p0, Landroid/app/job/JobInfo;->jobId:I

    iget v3, v0, Landroid/app/job/JobInfo;->jobId:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iget-object v3, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    return v1

    :cond_a
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v3, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    return v1

    :cond_e
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    return v1

    :cond_f
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v1

    :cond_10
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    return v1

    :cond_11
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v1

    :cond_12
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    return v1

    :cond_15
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->flexMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    return v1

    :cond_16
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    return v1

    :cond_17
    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    iget v3, v0, Landroid/app/job/JobInfo;->backoffPolicy:I

    if-eq v2, v3, :cond_18

    return v1

    :cond_18
    iget v2, p0, Landroid/app/job/JobInfo;->mBias:I

    iget v3, v0, Landroid/app/job/JobInfo;->mBias:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget v2, p0, Landroid/app/job/JobInfo;->mPriority:I

    iget v3, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    iget v3, v0, Landroid/app/job/JobInfo;->flags:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget-object v2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    :cond_1c
    iget-object v2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getBackoffPolicy()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public blacklist getBias()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipGrantFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public greylist-max-o getConstraintFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public whitelist getDebugTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDebugTagsArraySet()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getEstimatedNetworkDownloadBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    return-wide v0
.end method

.method public whitelist getEstimatedNetworkUploadBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public whitelist getFlexMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public whitelist getInitialBackoffMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    return-wide v0
.end method

.method public whitelist getIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method public whitelist getMaxExecutionDelayMillis()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinLatencyMillis()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinimumNetworkChunkBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public whitelist getNetworkType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPriority()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    return v0
.end method

.method public whitelist getRequiredNetwork()Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public whitelist getService()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getTraceTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTransientExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTriggerContentMaxDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUpdateDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public greylist-max-o hasEarlyConstraint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public greylist-max-o hasLateConstraint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_0
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_1
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_2
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    add-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int v1, v0, v2

    :cond_3
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v1, :cond_4

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    :cond_4
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_5

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_5
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->mBias:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->mPriority:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_6
    iget-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    if-eqz v1, :cond_7

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_7
    return v0
.end method

.method public greylist-max-o isExemptedFromAppStandby()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isExpedited()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isImportantWhileForeground()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isPeriodic()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public whitelist isPersisted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public whitelist isPrefetch()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isRequireBatteryNotLow()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isRequireCharging()Z
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isRequireDeviceIdle()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isRequireStorageNotLow()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isUserInitiated()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(job:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
