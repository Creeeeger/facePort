.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$5;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$5;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->audioEffectBox:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->box:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v0, :cond_d

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const-class v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    invoke-static {p1, v0, v0, v2}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->notifyChange()V

    const-string p1, "SoundCraft.AudioEffectBoxView"

    const-string/jumbo v0, "updateLayout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz p1, :cond_c

    check-cast p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    invoke-static {p1}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->createDaggerViewModelFactory(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->get(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isDolbyVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez v3, :cond_1

    move-object v3, v0

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->dolbyView$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->addViewIfNotAttached(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isSpatialAudioVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez v3, :cond_3

    move-object v3, v0

    :cond_3
    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->spatialAudioView$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->addViewIfNotAttached(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    :cond_4
    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isEqualizerVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isVolumeNormalizationVisible:Landroidx/lifecycle/MutableLiveData;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez v4, :cond_5

    move-object v4, v0

    :cond_5
    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->equalizerView$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4}, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->addViewIfNotAttached(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    :cond_7
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isVoiceBoostVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez v1, :cond_8

    move-object v1, v0

    :cond_8
    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->voiceBoostView$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v1}, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->addViewIfNotAttached(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    :cond_9
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->volumeNormalizationView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->addViewIfNotAttached(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
