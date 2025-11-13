.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;

    sget v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d044e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;->root:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060947

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p3}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->notifyChange()V

    return-void
.end method
