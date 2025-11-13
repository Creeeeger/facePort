.class public final Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public appMirroring:Z

.field public bluetoothDeviceAddress:Ljava/lang/String;

.field public bluetoothDeviceName:Ljava/lang/String;

.field public dynamic:Z

.field public level:I

.field public levelMax:I

.field public levelMin:I

.field public muteSupported:Z

.field public muted:Z

.field public name:I

.field public nameRes:Ljava/lang/String;

.field public remoteFixedVolume:Z

.field public remoteLabel:Ljava/lang/String;

.field public remoteSpeaker:Z

.field public routedToBluetooth:Z

.field public routedToBuds:Z

.field public routedToBuds3:Z

.field public routedToHeadset:Z

.field public routedToHearingAid:Z

.field public routedToHomeMini:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[routedToHeadset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", routedToBuds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", routedToBuds3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", routedToHomeMini="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", routedToHearingAid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remoteFixedVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remoteSpeaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
