.class final Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;
.super Ljava/lang/Object;
.source "VirtualSensorDirectChannelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectChannelConfiguration"
.end annotation


# instance fields
.field private final blacklist mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mReportToken:I

.field private final blacklist mSensorType:I

.field private final blacklist mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;


# direct methods
.method constructor blacklist <init>(IILandroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mReportToken:I

    iput p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSensorType:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    return-void
.end method


# virtual methods
.method blacklist write(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .locals 9

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAcquire()J

    move-result-wide v4

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    iget v2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mReportToken:I

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSensorType:I

    const-wide/16 v6, 0x1

    add-long v7, v4, v6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->write(IIJLandroid/companion/virtual/sensor/VirtualSensorEvent;)V

    const-wide v0, 0x100000000L

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    const-wide/16 v7, 0x1

    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->setRelease(J)V

    return-void
.end method
