.class public final Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    iput v0, v1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->springFinalPosition:I

    iget-object v2, v1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object v2, v1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, v1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->springFinalPosition:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;->this$0:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->setProgressChanged(I)V

    :cond_2
    return-void
.end method
