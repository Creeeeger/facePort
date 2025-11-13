.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->notifyChange()V

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->notifyChange()V

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->updateLayout$1()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result p1

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
