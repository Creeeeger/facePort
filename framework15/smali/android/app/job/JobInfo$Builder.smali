.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBackoffPolicy:I

.field private greylist-max-o mBackoffPolicySet:Z

.field private blacklist mBias:I

.field private greylist-max-o mClipData:Landroid/content/ClipData;

.field private greylist-max-o mClipGrantFlags:I

.field private greylist-max-o mConstraintFlags:I

.field private final blacklist mDebugTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFlexMillis:J

.field private greylist-max-o mHasEarlyConstraint:Z

.field private greylist-max-o mHasLateConstraint:Z

.field private greylist-max-o mInitialBackoffMillis:J

.field private greylist-max-o mIntervalMillis:J

.field private greylist-max-o mIsPeriodic:Z

.field private greylist-max-o mIsPersisted:Z

.field private final greylist-max-o mJobId:I

.field private final greylist-max-o mJobService:Landroid/content/ComponentName;

.field private greylist-max-o mMaxExecutionDelayMillis:J

.field private greylist-max-o mMinLatencyMillis:J

.field private blacklist mMinimumNetworkChunkBytes:J

.field private greylist-max-o mNetworkDownloadBytes:J

.field private greylist-max-o mNetworkRequest:Landroid/net/NetworkRequest;

.field private greylist-max-o mNetworkUploadBytes:J

.field private greylist-max-o mPriority:I

.field private blacklist mTraceTag:Ljava/lang/String;

.field private greylist-max-o mTransientExtras:Landroid/os/Bundle;

.field private greylist-max-o mTriggerContentMaxDelay:J

.field private greylist-max-o mTriggerContentUpdateDelay:J

.field private greylist-max-o mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDebugTags(Landroid/app/job/JobInfo$Builder;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceTag(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>(ILandroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/job/JobInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return-void
.end method


# virtual methods
.method public whitelist addDebugTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addDebugTags(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/app/job/JobInfo;
    .locals 5

    const-wide/32 v0, 0xb98555f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    const-wide/32 v1, 0xf1e9ef7

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    const-wide/32 v2, 0x128fa179

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    const-wide/32 v3, 0x1345eb5a

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(ZZZZ)Landroid/app/job/JobInfo;
    .locals 2

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/job/JobInfo;->enforceValidity(ZZZZ)V

    return-object v0
.end method

.method public whitelist removeDebugTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 5

    invoke-static {}, Landroid/app/job/JobInfo;->getMinBackoffMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested backoff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too small; raising to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return-object p0
.end method

.method public blacklist setBias(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    return-object p0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return-object p0
.end method

.method public whitelist setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    return-object p0
.end method

.method public whitelist setExpedited(Z)Landroid/app/job/JobInfo$Builder;
    .locals 3

    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    if-eqz p1, :cond_0

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v0, :cond_2

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v1, :cond_1

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    :cond_1
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public greylist-max-r setFlags(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x12c

    const/16 v1, 0x190

    if-eqz p1, :cond_0

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v0, :cond_2

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v1, :cond_1

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    :cond_1
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public whitelist setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return-object p0
.end method

.method public whitelist setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum chunk size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    return-object p0
.end method

.method public whitelist setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return-object p0
.end method

.method public whitelist setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 11

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    const-string v3, " is too small; raising to "

    const-string v4, " for job "

    if-gez v2, :cond_0

    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested interval "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_0
    const-wide/16 v5, 0x5

    mul-long/2addr v5, p1

    const-wide/16 v7, 0x64

    div-long/2addr v5, v7

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    cmp-long v2, p3, v7

    if-gez v2, :cond_1

    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested flex "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p3, v7

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return-object p0
.end method

.method public whitelist setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return-object p0
.end method

.method public whitelist setPrefetch(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/app/job/JobInfo$Builder;
    .locals 2

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return-object p0

    :cond_1
    :goto_0
    const-wide/32 v0, 0x8653c4b

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid priority value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method public whitelist setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public whitelist setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public whitelist setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x9

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public whitelist setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/app/job/JobInfo;->validateTraceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-object p0
.end method

.method public whitelist setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-object p0
.end method

.method public whitelist setUserInitiated(Z)Landroid/app/job/JobInfo$Builder;
    .locals 3

    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    if-eqz p1, :cond_0

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v0, :cond_2

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v1, :cond_1

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    :cond_1
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public blacklist summarize()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobInfo.Builder{job:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
