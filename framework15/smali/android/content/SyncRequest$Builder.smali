.class public Landroid/content/SyncRequest$Builder;
.super Ljava/lang/Object;
.source "SyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o SYNC_TARGET_ADAPTER:I = 0x2

.field private static final greylist-max-o SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final greylist-max-o SYNC_TYPE_ONCE:I = 0x2

.field private static final greylist-max-o SYNC_TYPE_PERIODIC:I = 0x1

.field private static final greylist-max-o SYNC_TYPE_UNKNOWN:I


# instance fields
.field private greylist-max-o mAccount:Landroid/accounts/Account;

.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mCustomExtras:Landroid/os/Bundle;

.field private greylist-max-o mDisallowMetered:Z

.field private greylist-max-o mExpedited:Z

.field private greylist-max-o mIgnoreBackoff:Z

.field private greylist-max-o mIgnoreSettings:Z

.field private greylist-max-o mIsManual:Z

.field private greylist-max-o mNoRetry:Z

.field private greylist-max-o mRequiresCharging:Z

.field private blacklist mScheduleAsExpeditedJob:Z

.field private greylist-max-o mSyncConfigExtras:Landroid/os/Bundle;

.field private greylist-max-o mSyncFlexTimeSecs:J

.field private greylist-max-o mSyncRunTimeSecs:J

.field private greylist-max-o mSyncTarget:I

.field private greylist-max-o mSyncType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccount(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthority(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomExtras(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisallowMetered(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpedited(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScheduleAsExpeditedJob(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncConfigExtras(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncFlexTimeSecs(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncRunTimeSecs(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncTarget(Landroid/content/SyncRequest$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncType(Landroid/content/SyncRequest$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return-void
.end method

.method private greylist-max-o setupInterval(JJ)V
    .locals 2

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified run time for the sync must be after the specified flex time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/content/SyncRequest;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    const-string v1, "ignore_backoff"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v3, "allow_metered"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "require_charging"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    const-string v3, "ignore_settings"

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v4, "do_not_retry"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v4, "expedited"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    const-string/jumbo v4, "schedule_as_expedited_job"

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    if-nez v0, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    :cond_8
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    const-string v1, "Illegal extras were set"

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->hasInvalidScheduleAsEjExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->hasInvalidScheduleAsEjExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-eqz v0, :cond_d

    new-instance v0, Landroid/content/SyncRequest;

    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an adapter with setSyncAdapter(Account, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setDisallowMetered(true) after having specified that settings are ignored."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return-object p0
.end method

.method public whitelist setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    return-object p0
.end method

.method public whitelist setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setIgnoreSettings(true) after having specified sync settings with this builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    return-object p0
.end method

.method public whitelist setManual(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    return-object p0
.end method

.method public whitelist setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    return-object p0
.end method

.method public whitelist setScheduleAsExpeditedJob(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    return-object p0
.end method

.method public whitelist setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .locals 2

    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync target has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist syncOnce()Landroid/content/SyncRequest$Builder;
    .locals 2

    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .locals 2

    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
