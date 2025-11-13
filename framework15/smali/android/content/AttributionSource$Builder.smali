.class public final Landroid/content/AttributionSource$Builder;
.super Ljava/lang/Object;
.source "AttributionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mBuilderFieldsSet:J


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/AttributionSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->uid:I

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->pid:I

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current AttributionSource can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

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
.method public whitelist build()Landroid/content/AttributionSource;
    .locals 9

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/AttributionSourceState;->pid:I

    :cond_0
    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    :cond_1
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    :cond_2
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    :cond_3
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x12

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput v4, v0, Landroid/content/AttributionSourceState;->deviceId:I

    :cond_4
    iget-wide v5, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v7, 0x20

    and-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_5
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {}, Landroid/content/AttributionSource;->-$$Nest$sfgetsDefaultToken()Landroid/os/Binder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    new-array v1, v4, [Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_6
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDeviceId(I)Landroid/content/AttributionSource$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x12

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    return-object p0
.end method

.method public whitelist setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :goto_0
    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    return-object p0
.end method

.method public blacklist setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AttributionSource not permitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setPid(I)Landroid/content/AttributionSource$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->pid:I

    return-object p0
.end method

.method public whitelist setRenouncedPermissions(Ljava/util/Set;)Landroid/content/AttributionSource$Builder;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    return-object p0
.end method
