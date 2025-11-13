.class public final Landroid/hardware/SyncFence;
.super Ljava/lang/Object;
.source "SyncFence.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/SyncFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SIGNAL_TIME_INVALID:J = -0x1L

.field public static final whitelist SIGNAL_TIME_PENDING:J = 0x7fffffffffffffffL

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mCloser:Ljava/lang/Runnable;

.field private blacklist mNativePtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    nop

    const-class v0, Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/hardware/SyncFence;->nGetDestructor()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/hardware/SyncFence$1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$1;-><init>()V

    sput-object v0, Landroid/hardware/SyncFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/SyncFence;)V
    .locals 4

    iget-wide v0, p1, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;-><init>(J)V

    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/hardware/SyncFence;->nIncRef(J)V

    :cond_0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    sget-object v2, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-virtual {v2, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;-><init>()V

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/SyncFence-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/SyncFence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist adopt(I)Landroid/hardware/SyncFence;
    .locals 1

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p0}, Landroid/hardware/SyncFence;-><init>(I)V

    return-object v0
.end method

.method private blacklist await(J)Z
    .locals 5

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/hardware/SyncFence;->nWait(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;
    .locals 2

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SyncFence;-><init>(I)V

    return-object v0
.end method

.method public static blacklist createEmpty()Landroid/hardware/SyncFence;
    .locals 1

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0}, Landroid/hardware/SyncFence;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0()V
    .locals 0

    return-void
.end method

.method static synthetic blacklist lambda$new$1()V
    .locals 0

    return-void
.end method

.method static synthetic blacklist lambda$new$2()V
    .locals 0

    return-void
.end method

.method private static native blacklist nCreate(I)J
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private static native blacklist nGetFd(J)I
.end method

.method private static native blacklist nGetSignalTime(J)J
.end method

.method private static native blacklist nIncRef(J)V
.end method

.method private static native blacklist nIsValid(J)Z
.end method

.method private static native blacklist nWait(JJ)Z
.end method


# virtual methods
.method public whitelist await(Ljava/time/Duration;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v2

    return v2
.end method

.method public whitelist awaitForever()Z
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    iget-object v1, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFdDup()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot dup the FD of an invalid SyncFence"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist getNativeFence()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getSignalTime()J
    .locals 5

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetSignalTime(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isValid()Z
    .locals 5

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nIsValid(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
