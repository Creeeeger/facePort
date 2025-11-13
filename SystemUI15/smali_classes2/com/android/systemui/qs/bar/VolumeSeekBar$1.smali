.class final Lcom/android/systemui/qs/bar/VolumeSeekBar$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QP volume] updateVolumeModel model: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isTracking : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeSeekBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget v0, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    iput v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    iget v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    iput v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progressMin:I

    iget v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    iput v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progressMax:I

    iget-boolean v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->seekBarEnabled:Z

    iget-boolean v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isAuraCasting:Z

    iget v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isZenMode:Z

    iget-boolean v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isZenModeDisabled:Z

    iget-boolean v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isAllSoundMute:Z

    iget v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->iconAnimationType:Z

    iput v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->device:I

    iget-boolean p1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isSmartViewEnabled:Z

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->handler:Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;

    invoke-virtual {p0, v3, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
