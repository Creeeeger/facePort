.class Landroid/media/midi/MidiUmpDeviceService$1;
.super Ljava/lang/Object;
.source "MidiUmpDeviceService.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiUmpDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiUmpDeviceService;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiUmpDeviceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/midi/MidiUmpDeviceService$1;->this$0:Landroid/media/midi/MidiUmpDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onClose()V
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService$1;->this$0:Landroid/media/midi/MidiUmpDeviceService;

    invoke-virtual {v0}, Landroid/media/midi/MidiUmpDeviceService;->onClose()V

    return-void
.end method

.method public blacklist onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService$1;->this$0:Landroid/media/midi/MidiUmpDeviceService;

    invoke-virtual {v0, p2}, Landroid/media/midi/MidiUmpDeviceService;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method
