.class public final Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-boolean p3, p3, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTracking:Z

    if-eqz p3, :cond_7

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object v0, p3, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p2, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    :goto_0
    iget-object v0, p3, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iget-boolean v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    iget-boolean v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    if-eqz v2, :cond_5

    iget-object p3, p3, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz p3, :cond_6

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    iget v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStream:I

    invoke-interface {p3, v0, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_3

    :cond_5
    iget-object p3, p3, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz p3, :cond_6

    mul-int/lit8 v0, p2, 0xa

    const/4 v1, 0x3

    invoke-interface {p3, v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_6
    :goto_3
    iget-object p3, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget p3, p3, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->stream:I

    invoke-static {p1, p3, p2}, Lcom/android/systemui/volume/util/SeekBarUtil;->vibrateIfNeeded(Landroid/widget/SeekBar;II)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->setProgressChanged(I)V

    :cond_7
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1034"

    const-string v0, "location"

    const-string v1, "quick panel"

    const-string v2, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
