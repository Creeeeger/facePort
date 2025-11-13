.class final Landroid/graphics/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/view/IGraphicsStatsCallback;

.field final blacklist mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

.field blacklist mMapping:Ljava/nio/ByteBuffer;

.field final blacklist mPid:I

.field blacklist mProcessBuffer:Landroid/os/SharedMemory;

.field final blacklist mToken:Landroid/os/IBinder;

.field final blacklist mUid:I

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, v7

    move-object v1, p1

    move-object v2, p5

    move-wide v3, p6

    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicsStatsService$BufferInfo;-><init>(Landroid/graphics/GraphicsStatsService;Ljava/lang/String;JJ)V

    iput-object v7, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iput p3, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mUid:I

    iput p4, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v0}, Landroid/view/IGraphicsStatsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GFXStats-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_0
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmZeroData(Landroid/graphics/GraphicsStatsService;)[B

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p1

    invoke-virtual {v0, v2, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-static {v0, p0}, Landroid/graphics/GraphicsStatsService;->-$$Nest$mprocessDied(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method blacklist closeAllBuffers()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    :cond_1
    return-void
.end method

.method blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist readBytes([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SharedMemory has been deactivated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
