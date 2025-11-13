.class public final Landroid/view/ContentRecordingSession$Builder;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

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
.method public blacklist build()Landroid/view/ContentRecordingSession;
    .locals 9

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    :cond_0
    iget-wide v4, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    :cond_1
    iget-wide v4, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_2

    iput v4, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    :cond_2
    iget-wide v5, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-nez v0, :cond_3

    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    :cond_3
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x10

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    :cond_4
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x20

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iput-boolean v4, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    :cond_5
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    :cond_6
    new-instance v0, Landroid/view/ContentRecordingSession;

    iget v2, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    iget v3, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    iget v4, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    iget v5, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    iget-object v6, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    iget-boolean v7, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    iget v8, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/ContentRecordingSession;-><init>(IIIILandroid/os/IBinder;ZI)V

    return-object v0
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    return-object p0
.end method
