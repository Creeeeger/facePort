.class public abstract Landroid/media/midi/MidiUmpDeviceService;
.super Landroid/app/Service;
.source "MidiUmpDeviceService.java"


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.midi.MidiUmpDeviceService"

.field private static final blacklist TAG:Ljava/lang/String; = "MidiUmpDeviceService"


# instance fields
.field private final blacklist mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private blacklist mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private blacklist mMidiManager:Landroid/media/midi/IMidiManager;

.field private blacklist mServer:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/media/midi/MidiUmpDeviceService$1;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiUmpDeviceService$1;-><init>(Landroid/media/midi/MidiUmpDeviceService;)V

    iput-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public final whitelist getOutputPortReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.media.midi.MidiUmpDeviceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onClose()V
    .locals 0

    return-void
.end method

.method public whitelist onCreate()V
    .locals 7

    const-string v0, "MidiUmpDeviceService"

    const-string v1, "midi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/midi/MidiUmpDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiUmpDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    invoke-virtual {p0}, Landroid/media/midi/MidiUmpDeviceService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/midi/IMidiManager;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find MidiDeviceInfo for MidiUmpDeviceService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v1, p0, Landroid/media/midi/MidiUmpDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p0}, Landroid/media/midi/MidiUmpDeviceService;->onGetInputPortReceivers()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get input port receivers for MidiUmpDeviceService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/media/midi/MidiReceiver;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v4, Landroid/media/midi/MidiDeviceServer;

    iget-object v5, p0, Landroid/media/midi/MidiUmpDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v6, p0, Landroid/media/midi/MidiUmpDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-direct {v4, v5, v3, v1, v6}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteException in IMidiManager.getServiceDeviceInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    return-void
.end method

.method public whitelist onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onGetInputPortReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation
.end method
