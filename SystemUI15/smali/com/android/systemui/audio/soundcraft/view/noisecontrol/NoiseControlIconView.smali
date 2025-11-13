.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

.field public final context:Landroid/content/Context;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;

    sget v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d044c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    invoke-virtual {v1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    invoke-virtual {v1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->iconColor:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    invoke-virtual {v1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p3, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->background:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$5;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    invoke-virtual {p3, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object p0, Lcom/android/systemui/audio/soundcraft/utils/LayoutHelperUtil;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/LayoutHelperUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    const p2, 0x7f071443

    invoke-static {p2, p1}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p2

    if-le p0, p2, :cond_0

    const p0, 0x7f07143a

    goto :goto_0

    :cond_0
    const p0, 0x7f07143b

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object p2, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    return-void
.end method
