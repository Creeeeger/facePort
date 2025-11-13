.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$4;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$4;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->notifyChange()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingLevelViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingLevelViewModel;->notifyChange()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->notifyChange()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientVolumeViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/AmbientVolumeViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/AmbientVolumeViewModel;->notifyChange()V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->updateSeekBarView$1()V

    return-void
.end method
