.class public final Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progressMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    iget v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progressMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->springFinalPosition:I

    iget-object p1, v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object p1, v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->springFinalPosition:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->updateStatusIcon()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->stream:I

    iget v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->device:I

    iget v4, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    iget-boolean v5, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->seekBarEnabled:Z

    iget-boolean v6, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->iconAnimationType:Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    iget-object v9, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->initialize(IIIZZZLcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->animateProgressDrawable()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->seekBarEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isZenModeDisabled:Z

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->device:I

    const v4, 0x8000

    if-ne v3, v4, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isSmartViewEnabled:Z

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iput-boolean v1, p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isSmartViewPlaying:Z

    :cond_4
    return-void
.end method
