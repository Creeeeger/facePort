.class public final Landroid/app/ambientcontext/AmbientContextEvent$Builder;
.super Ljava/lang/Object;
.source "AmbientContextEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ambientcontext/AmbientContextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mDensityLevel:I

.field private blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEventType:I

.field private blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

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
.method public whitelist build()Landroid/app/ambientcontext/AmbientContextEvent;
    .locals 8

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultEventType()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    :cond_0
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultStartTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    :cond_1
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultEndTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    :cond_2
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    :cond_3
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultDensityLevel()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    :cond_4
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultVendorData()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mVendorData:Landroid/os/PersistableBundle;

    :cond_5
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEvent;

    iget v2, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    iget v5, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    iget v6, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    iget-object v7, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mVendorData:Landroid/os/PersistableBundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ambientcontext/AmbientContextEvent;-><init>(ILjava/time/Instant;Ljava/time/Instant;IILandroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    return-object p0
.end method

.method public whitelist setDensityLevel(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    return-object p0
.end method

.method public whitelist setEndTime(Ljava/time/Instant;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    return-object p0
.end method

.method public whitelist setEventType(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    return-object p0
.end method

.method public whitelist setStartTime(Ljava/time/Instant;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    return-object p0
.end method

.method public whitelist setVendorData(Landroid/os/PersistableBundle;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mVendorData:Landroid/os/PersistableBundle;

    return-object p0
.end method
