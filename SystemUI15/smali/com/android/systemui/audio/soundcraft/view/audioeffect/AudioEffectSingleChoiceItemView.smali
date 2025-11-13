.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;
.super Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

.field public chooserMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

.field public final context:Landroid/content/Context;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final parent:Landroid/view/ViewGroup;

.field public final viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->parent:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0x7f0d0444

    invoke-virtual {p1, v2, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    new-instance p4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    new-instance p4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p3}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$3;

    invoke-direct {p4, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    new-instance p4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$4;

    invoke-direct {p4, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p3}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method


# virtual methods
.method public final enable(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public final getRootView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final update()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method
