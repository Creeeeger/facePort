.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$TriggerContentUri;,
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

.field public static final greylist-max-o FLAG_EXEMPT_FROM_APP_STANDBY:I = 0x8

.field public static final blacklist FLAG_EXPEDITED:I = 0x10

.field public static final greylist-max-o FLAG_IMPORTANT_WHILE_FOREGROUND:I = 0x2

.field public static final greylist-max-o FLAG_PREFETCH:I = 0x4

.field public static final greylist-max-r FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final whitelist MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

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

.field private final blacklist mPriority:I

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

    .line 68
    const-string v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    .line 1003
    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 927
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 928
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 929
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 930
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 931
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 932
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 933
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
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

    .line 935
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 936
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 937
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 938
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 939
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 940
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 941
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    .line 942
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 943
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 944
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 945
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 946
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 947
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 948
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 949
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 950
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 951
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 952
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mBias:I

    .line 953
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    .line 954
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 955
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 891
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto :goto_0

    .line 894
    :cond_0
    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 895
    iput v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 897
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 898
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 899
    sget-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 900
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_1

    .line 905
    :cond_1
    iput-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 907
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mBias:I

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 923
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getBiasString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bias"    # I

    .line 2055
    sparse-switch p0, :sswitch_data_0

    .line 2072
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

    .line 2067
    :sswitch_0
    const-string v0, "40 [TOP_APP]"

    return-object v0

    .line 2065
    :sswitch_1
    const-string v0, "35 [FGS_APP]"

    return-object v0

    .line 2063
    :sswitch_2
    const-string v0, "30 [BFGS_APP]"

    return-object v0

    .line 2061
    :sswitch_3
    const-string v0, "20 [SYNC_INITIALIZATION]"

    return-object v0

    .line 2059
    :sswitch_4
    const-string v0, "10 [SYNC_EXPEDITED]"

    return-object v0

    .line 2057
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

    .line 212
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final whitelist getMinFlexMillis()J
    .locals 2

    .line 204
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final whitelist getMinPeriodMillis()J
    .locals 2

    .line 193
    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method public static blacklist getPriorityString(I)Ljava/lang/String;
    .locals 2
    .param p0, "priority"    # I

    .line 2080
    sparse-switch p0, :sswitch_data_0

    .line 2092
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

    .line 2090
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

    .line 2088
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

    .line 2086
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

    .line 2084
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

    .line 2082
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


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist enforceValidity(Z)V
    .locals 9
    .param p1, "disallowPrefetchDeadlines"    # Z

    .line 1922
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v4, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    iget-wide v4, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v4, :cond_24

    .line 1928
    :cond_1
    iget-wide v4, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 1929
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .local v0, "estimatedTransfer":J
    goto :goto_0

    .line 1931
    .end local v0    # "estimatedTransfer":J
    :cond_2
    nop

    .line 1932
    cmp-long v8, v0, v6

    if-nez v8, :cond_3

    move-wide v0, v2

    :cond_3
    add-long/2addr v0, v4

    .line 1934
    .restart local v0    # "estimatedTransfer":J
    :goto_0
    iget-wide v4, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v8, v4, v0

    if-gtz v8, :cond_4

    goto :goto_1

    .line 1937
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1940
    :cond_5
    :goto_1
    cmp-long v6, v4, v6

    if-eqz v6, :cond_7

    cmp-long v4, v4, v2

    if-lez v4, :cond_6

    goto :goto_2

    .line 1941
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Minimum chunk size must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1944
    :cond_7
    :goto_2
    iget-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v4, v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    move v4, v5

    goto :goto_3

    :cond_8
    move v4, v6

    .line 1946
    .local v4, "hasDeadline":Z
    :goto_3
    iget-boolean v7, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eqz v7, :cond_c

    .line 1947
    if-nez v4, :cond_b

    .line 1951
    iget-wide v7, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v2, v7, v2

    if-nez v2, :cond_a

    .line 1955
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v2, :cond_9

    goto :goto_4

    .line 1956
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1952
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1948
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1962
    :cond_c
    :goto_4
    if-eqz p1, :cond_e

    if-eqz v4, :cond_e

    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_d

    goto :goto_5

    .line 1963
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call setOverrideDeadline() on a prefetch job."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1967
    :cond_e
    :goto_5
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eqz v2, :cond_14

    .line 1969
    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v2, :cond_10

    .line 1970
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_6

    .line 1971
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Network specifiers aren\'t supported for persistent jobs"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1974
    :cond_10
    :goto_6
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v2, :cond_13

    .line 1978
    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1982
    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-nez v2, :cond_11

    goto :goto_7

    .line 1983
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call setClipData() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1979
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1975
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1988
    :cond_14
    :goto_7
    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v3, v2, 0x2

    const/16 v7, 0x190

    if-eqz v3, :cond_17

    .line 1989
    iget-boolean v3, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v3, :cond_16

    .line 1993
    iget v3, p0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v3, v7, :cond_17

    const/16 v8, 0x12c

    if-ne v3, v8, :cond_15

    goto :goto_8

    .line 1994
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An important while foreground job must be high or default priority. Don\'t mark unimportant tasks as important while foreground."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1990
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An important while foreground job cannot have a time delay"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2000
    :cond_17
    :goto_8
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_18

    goto :goto_9

    :cond_18
    move v5, v6

    :goto_9
    move v3, v5

    .line 2001
    .local v3, "isExpedited":Z
    iget v5, p0, Landroid/app/job/JobInfo;->mPriority:I

    sparse-switch v5, :sswitch_data_0

    .line 2020
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid priority level provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2003
    :sswitch_0
    if-eqz v3, :cond_19

    goto :goto_a

    .line 2004
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Only expedited jobs can have max priority"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2008
    :sswitch_1
    and-int/lit8 v6, v2, 0x4

    if-nez v6, :cond_1b

    .line 2011
    iget-boolean v6, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v6, :cond_1a

    goto :goto_a

    .line 2012
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Periodic jobs cannot be high priority"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2009
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Prefetch jobs cannot be high priority"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2018
    :sswitch_2
    nop

    .line 2023
    :goto_a
    if-eqz v3, :cond_23

    .line 2024
    iget-boolean v6, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v6, :cond_22

    .line 2027
    iget-boolean v6, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez v6, :cond_21

    .line 2030
    iget-boolean v6, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v6, :cond_20

    .line 2033
    const/16 v6, 0x1f4

    if-eq v5, v6, :cond_1d

    if-ne v5, v7, :cond_1c

    goto :goto_b

    .line 2034
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "An expedited job must be high or max priority. Don\'t use expedited jobs for unimportant tasks."

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2038
    :cond_1d
    :goto_b
    iget v5, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v5, v5, -0x9

    if-nez v5, :cond_1f

    and-int/lit8 v2, v2, -0x19

    if-nez v2, :cond_1f

    .line 2043
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v2, :cond_23

    array-length v2, v2

    if-gtz v2, :cond_1e

    goto :goto_c

    .line 2044
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t call addTriggerContentUri() on an expedited job"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2040
    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "An expedited job can only have network and storage-not-low constraints"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2031
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "An expedited job cannot be periodic"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2028
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "An expedited job cannot have a deadline"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2025
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "An expedited job cannot have a time delay"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2048
    :cond_23
    :goto_c
    return-void

    .line 1924
    .end local v0    # "estimatedTransfer":J
    .end local v3    # "isExpedited":Z
    .end local v4    # "hasDeadline":Z
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t provide estimated network usage without requiring a network"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .param p1, "o"    # Ljava/lang/Object;

    .line 749
    instance-of v0, p1, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 750
    return v1

    .line 752
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/job/JobInfo;

    .line 753
    .local v0, "j":Landroid/app/job/JobInfo;
    iget v2, p0, Landroid/app/job/JobInfo;->jobId:I

    iget v3, v0, Landroid/app/job/JobInfo;->jobId:I

    if-eq v2, v3, :cond_1

    .line 754
    return v1

    .line 757
    :cond_1
    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 758
    return v1

    .line 761
    :cond_2
    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 762
    return v1

    .line 766
    :cond_3
    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iget-object v3, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eq v2, v3, :cond_4

    .line 767
    return v1

    .line 769
    :cond_4
    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    if-eq v2, v3, :cond_5

    .line 770
    return v1

    .line 772
    :cond_5
    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 773
    return v1

    .line 775
    :cond_6
    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-eq v2, v3, :cond_7

    .line 776
    return v1

    .line 778
    :cond_7
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 779
    return v1

    .line 781
    :cond_8
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 782
    return v1

    .line 784
    :cond_9
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 785
    return v1

    .line 787
    :cond_a
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eq v2, v3, :cond_b

    .line 788
    return v1

    .line 790
    :cond_b
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eq v2, v3, :cond_c

    .line 791
    return v1

    .line 793
    :cond_c
    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v3, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 794
    return v1

    .line 796
    :cond_d
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 797
    return v1

    .line 799
    :cond_e
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 800
    return v1

    .line 802
    :cond_f
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 803
    return v1

    .line 805
    :cond_10
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 806
    return v1

    .line 808
    :cond_11
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 809
    return v1

    .line 811
    :cond_12
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eq v2, v3, :cond_13

    .line 812
    return v1

    .line 814
    :cond_13
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eq v2, v3, :cond_14

    .line 815
    return v1

    .line 817
    :cond_14
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 818
    return v1

    .line 820
    :cond_15
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->flexMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 821
    return v1

    .line 823
    :cond_16
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 824
    return v1

    .line 826
    :cond_17
    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    iget v3, v0, Landroid/app/job/JobInfo;->backoffPolicy:I

    if-eq v2, v3, :cond_18

    .line 827
    return v1

    .line 829
    :cond_18
    iget v2, p0, Landroid/app/job/JobInfo;->mBias:I

    iget v3, v0, Landroid/app/job/JobInfo;->mBias:I

    if-eq v2, v3, :cond_19

    .line 830
    return v1

    .line 832
    :cond_19
    iget v2, p0, Landroid/app/job/JobInfo;->mPriority:I

    iget v3, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v2, v3, :cond_1a

    .line 833
    return v1

    .line 835
    :cond_1a
    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    iget v3, v0, Landroid/app/job/JobInfo;->flags:I

    if-eq v2, v3, :cond_1b

    .line 836
    return v1

    .line 838
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getBackoffPolicy()I
    .locals 1

    .line 705
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public blacklist getBias()I
    .locals 1

    .line 485
    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipGrantFlags()I
    .locals 1

    .line 473
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public greylist-max-o getConstraintFlags()I
    .locals 1

    .line 538
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public whitelist getEstimatedNetworkDownloadBytes()J
    .locals 2

    .line 611
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    return-wide v0
.end method

.method public whitelist getEstimatedNetworkUploadBytes()J
    .locals 2

    .line 623
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 452
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    .line 498
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public whitelist getFlexMillis()J
    .locals 2

    .line 686
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 445
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public whitelist getInitialBackoffMillis()J
    .locals 2

    .line 696
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    return-wide v0
.end method

.method public whitelist getIntervalMillis()J
    .locals 2

    .line 676
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method public whitelist getMaxExecutionDelayMillis()J
    .locals 2

    .line 650
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    return-wide v0
.end method

.method public whitelist getMinLatencyMillis()J
    .locals 2

    .line 643
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    return-wide v0
.end method

.method public whitelist getMinimumNetworkChunkBytes()J
    .locals 2

    .line 634
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public whitelist getNetworkType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 580
    return v1

    .line 581
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const/4 v0, 0x2

    return v0

    .line 583
    :cond_1
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    const/4 v0, 0x3

    return v0

    .line 585
    :cond_2
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    const/4 v0, 0x4

    return v0

    .line 588
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPriority()I
    .locals 1

    .line 493
    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    return v0
.end method

.method public whitelist getRequiredNetwork()Landroid/net/NetworkRequest;
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public whitelist getService()Landroid/content/ComponentName;
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getTransientExtras()Landroid/os/Bundle;
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTriggerContentMaxDelay()J
    .locals 2

    .line 565
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUpdateDelay()J
    .locals 2

    .line 556
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    .line 547
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public greylist-max-o hasEarlyConstraint()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public greylist-max-o hasLateConstraint()Z
    .locals 1

    .line 744
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 843
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 844
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_0

    .line 845
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 847
    :cond_0
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 848
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 850
    :cond_1
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v1, :cond_2

    .line 851
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 853
    :cond_2
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    add-int/2addr v1, v2

    .line 854
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 855
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 857
    :cond_3
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    add-int/2addr v0, v2

    .line 858
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v1, :cond_4

    .line 859
    mul-int/lit8 v2, v0, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int v0, v2, v1

    .line 861
    :cond_4
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 862
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 863
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 864
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 865
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_5

    .line 866
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 868
    :cond_5
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 869
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 870
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 871
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 872
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 873
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 874
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 875
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 876
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 877
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 878
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    add-int/2addr v1, v2

    .line 879
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->mBias:I

    add-int/2addr v0, v2

    .line 880
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->mPriority:I

    add-int/2addr v1, v2

    .line 881
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    add-int/2addr v0, v2

    .line 882
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public greylist-max-o isExemptedFromAppStandby()Z
    .locals 1

    .line 503
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

    .line 712
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

    .line 719
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

    .line 659
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public whitelist isPersisted()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public whitelist isPrefetch()Z
    .locals 1

    .line 726
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

    .line 517
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

    .line 510
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

    .line 524
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

    .line 531
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

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1017
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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 964
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 966
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 967
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 970
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 972
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    :goto_0
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 975
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 977
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 978
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 979
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 983
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    :goto_1
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 986
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 987
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 988
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 989
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 990
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 993
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 994
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 995
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    return-void
.end method
