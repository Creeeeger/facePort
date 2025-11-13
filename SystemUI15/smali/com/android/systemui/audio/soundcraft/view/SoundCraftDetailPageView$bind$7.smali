.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$7;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$7;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeBar:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeBar:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    iget-boolean p1, p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->notifyChange()V

    :cond_1
    return-void
.end method
