.class Landroid/media/midi/MidiDeviceServer$OutputPortClient;
.super Landroid/media/midi/MidiDeviceServer$PortClient;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputPortClient"
.end annotation


# instance fields
.field private final greylist-max-o mInputPort:Landroid/media/midi/MidiInputPort;

.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    return-void
.end method


# virtual methods
.method greylist-max-o close()V
    .locals 6

    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v0}, Landroid/media/midi/MidiInputPort;->getPortNumber()I

    move-result v0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v2, v3}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aput v2, v3, v0

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v4

    const/4 v5, -0x1

    aput v5, v4, v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmTotalInputBytes(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v4}, Landroid/media/midi/MidiInputPort;->pullTotalBytesCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateTotalBytes(Landroid/media/midi/MidiDeviceServer;)V

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method greylist-max-o getInputPort()Landroid/media/midi/MidiInputPort;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    return-object v0
.end method
