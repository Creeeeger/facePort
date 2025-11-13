.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final dolbyView$delegate:Lkotlin/Lazy;

.field public final equalizerView$delegate:Lkotlin/Lazy;

.field public final spatialAudioView$delegate:Lkotlin/Lazy;

.field public viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

.field public final viewModel$delegate:Lkotlin/Lazy;

.field public final voiceBoostView$delegate:Lkotlin/Lazy;

.field public final volumeNormalizationView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$dolbyView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$dolbyView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->dolbyView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$spatialAudioView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$spatialAudioView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->spatialAudioView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$equalizerView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$equalizerView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->equalizerView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$voiceBoostView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$voiceBoostView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->voiceBoostView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$volumeNormalizationView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$volumeNormalizationView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->volumeNormalizationView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$special$$inlined$lazyViewModel$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$special$$inlined$lazyViewModel$2;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$dolbyView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$dolbyView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->dolbyView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$spatialAudioView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$spatialAudioView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->spatialAudioView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$equalizerView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$equalizerView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->equalizerView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$voiceBoostView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$voiceBoostView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->voiceBoostView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$volumeNormalizationView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$volumeNormalizationView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->volumeNormalizationView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$special$$inlined$lazyViewModel$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$special$$inlined$lazyViewModel$3;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$dolbyView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$dolbyView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->dolbyView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$spatialAudioView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$spatialAudioView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->spatialAudioView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$equalizerView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$equalizerView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->equalizerView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$voiceBoostView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$voiceBoostView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->voiceBoostView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$volumeNormalizationView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$volumeNormalizationView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->volumeNormalizationView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final access$createItemView(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;)Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    invoke-direct {v0, v2, v3, p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    invoke-direct {v0, v2, v3, p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;Landroid/view/ViewGroup;)V

    :goto_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final addDivider()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0447

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    return-object p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const-string v2, "ev.pointerCount="

    const-string v3, "SoundCraft.AudioEffectBoxView"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
