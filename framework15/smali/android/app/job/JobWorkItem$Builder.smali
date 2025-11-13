.class public final Landroid/app/job/JobWorkItem$Builder;
.super Ljava/lang/Object;
.source "JobWorkItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobWorkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeliveryCount:I

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mMinimumNetworkChunkBytes:J

.field private blacklist mNetworkDownloadBytes:J

.field private blacklist mNetworkUploadBytes:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeliveryCount(Landroid/app/job/JobWorkItem$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobWorkItem$Builder;->mDeliveryCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/app/job/JobWorkItem$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobWorkItem$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntent(Landroid/app/job/JobWorkItem$Builder;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobWorkItem$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobWorkItem$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobWorkItem$Builder;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobWorkItem$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobWorkItem$Builder;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobWorkItem$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobWorkItem$Builder;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobWorkItem$Builder;->mExtras:Landroid/os/PersistableBundle;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/job/JobWorkItem$Builder;->mNetworkDownloadBytes:J

    iput-wide v0, p0, Landroid/app/job/JobWorkItem$Builder;->mNetworkUploadBytes:J

    iput-wide v0, p0, Landroid/app/job/JobWorkItem$Builder;->mMinimumNetworkChunkBytes:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/job/JobWorkItem;
    .locals 2

    const-wide/32 v0, 0xf1e9ef7

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobWorkItem$Builder;->build(Z)Landroid/app/job/JobWorkItem;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Z)Landroid/app/job/JobWorkItem;
    .locals 2

    new-instance v0, Landroid/app/job/JobWorkItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/app/job/JobWorkItem$Builder;Landroid/app/job/JobWorkItem-IA;)V

    invoke-virtual {v0, p1}, Landroid/app/job/JobWorkItem;->enforceValidity(Z)V

    return-object v0
.end method

.method public blacklist setDeliveryCount(I)Landroid/app/job/JobWorkItem$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobWorkItem$Builder;->mDeliveryCount:I

    return-object p0
.end method

.method public whitelist setEstimatedNetworkBytes(JJ)Landroid/app/job/JobWorkItem$Builder;
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    cmp-long v2, p1, v3

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network download bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    cmp-long v0, p3, v0

    if-eqz v0, :cond_3

    cmp-long v0, p3, v3

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network upload bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iput-wide p1, p0, Landroid/app/job/JobWorkItem$Builder;->mNetworkDownloadBytes:J

    iput-wide p3, p0, Landroid/app/job/JobWorkItem$Builder;->mNetworkUploadBytes:J

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobWorkItem$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/app/job/JobWorkItem$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extras cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/app/job/JobWorkItem$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobWorkItem$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist setMinimumNetworkChunkBytes(J)Landroid/app/job/JobWorkItem$Builder;
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
    iput-wide p1, p0, Landroid/app/job/JobWorkItem$Builder;->mMinimumNetworkChunkBytes:J

    return-object p0
.end method
