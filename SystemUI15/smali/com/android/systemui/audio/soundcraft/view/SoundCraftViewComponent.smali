.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# instance fields
.field public binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

.field public final defaultViewModelProviderFactory:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelFactory;

.field public lifecycle:Landroidx/lifecycle/Lifecycle;

.field public final lifecycleObserver:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public registry:Landroidx/lifecycle/LifecycleRegistry;

.field public final viewModelStore:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelFactory;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    new-instance p2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->lifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;

    invoke-direct {p2}, Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->viewModelStore:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->defaultViewModelProviderFactory:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelFactory;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;->INSTANCE:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->lifecycleObserver:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

    const-string p0, "SoundCraft.SoundCraftViewComponent"

    const-string p1, "initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->defaultViewModelProviderFactory:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelFactory;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->viewModelStore:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;

    return-object p0
.end method

.method public final onCreate(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "SoundCraft.SoundCraftViewComponent"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->lifecycleObserver:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->registry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    sget v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d044a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;-><init>(Landroid/view/View;)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->detailPageContent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-static {p1, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$createView$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$createView$1$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string p2, "SoundCraft.SoundCraftViewBinding"

    const-string v1, "bindRoots"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isBatteryInfoBoxVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;

    invoke-direct {v3, v0, p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;)V

    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateBatteryInfoBox:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V

    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isNoiseControlBoxVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;

    invoke-direct {v3, v0, p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$3;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;)V

    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$4;

    invoke-direct {v3, v0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$4;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V

    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateEffectBox:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$5;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V

    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0605dc

    invoke-virtual {v4, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isActionBarVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;

    invoke-direct {v3, v0, p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;)V

    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateVolumeBar:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$7;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->actionBar:Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->root:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    iget-object v1, p2, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;)V

    invoke-virtual {v1, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->backButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->notifyChange()V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeBar:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    iput-object p1, p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;

    invoke-direct {v1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;-><init>()V

    iput-object v1, p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->soundCraftVolumeMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v1, p2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v4, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion$getSeekBarTouchDownAnimation$1$1;

    invoke-direct {v4, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion$getSeekBarTouchDownAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v4, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v1, p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->soundCraftVolumeMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion$getSeekBarTouchUpAnimation$1$1;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion$getSeekBarTouchUpAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v6, 0x43480000    # 200.0f

    invoke-virtual {v3, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v3, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v1, p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v3

    iget-object v5, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance v6, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$1;

    invoke-direct {v6, p1, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V

    invoke-virtual {v5, v1, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v5, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isAuraCasting:Landroidx/lifecycle/MutableLiveData;

    new-instance v6, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;

    invoke-direct {v6, p1, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V

    invoke-virtual {v5, v1, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isTouching:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$3;

    invoke-direct {v5, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V

    invoke-virtual {v3, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeBar:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0810a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p2, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->setContext(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    const/16 v2, 0x96

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v2

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$1;

    invoke-direct {v4, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    invoke-virtual {v3, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMin:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$2;

    invoke-direct {v4, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    invoke-virtual {v3, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMax:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$3;

    invoke-direct {v4, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    invoke-virtual {v3, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$4;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$initialize$1$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f131483

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeIcon:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->stream:I

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v1

    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;)V

    invoke-virtual {v2, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$2;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;)V

    invoke-virtual {v2, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->iconAnimationType:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;

    invoke-direct {v3, p1, v1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;)V

    invoke-virtual {v2, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->batteryInfoBox:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;

    iput-object p1, p2, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iput-object p1, p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->audioEffectBox:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->box:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    iput-object p1, p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    invoke-static {p2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isDolbyVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$1;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isDolbyEnable:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$2;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isSpatialAudioVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$3;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isEqualizerVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$4;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isVoiceBoostVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$5;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$5;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isVoiceBoostEnable:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$6;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$6;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isVolumeNormalizationVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$7;

    invoke-direct {v3, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$7;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isFallbackTextVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$8;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$8;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->fallbackMessage:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;

    invoke-direct {v3, p2, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isShowBoxBg:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;

    invoke-direct {v3, p1, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isDetailJumpButtonVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$11;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$11;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->detailJumpButton:Landroid/widget/TextView;

    const v2, 0x7f071061

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/Typeface;->isLikeDefault:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f081095

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->detailJumpButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$13;

    invoke-direct {v2, p2}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$13;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->header:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v2, p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$2;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$2;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v2, p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->isVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$3;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$3;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v2, p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->marginTop:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$4;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$4;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p2, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->notifyChange()V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->routineTestView:Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;

    if-eqz p1, :cond_2

    iget-object p2, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->routineCount:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->startButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$2;

    invoke-direct {v2, p2}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->updateButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$3;

    invoke-direct {v2, p2}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->stopButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$4;

    invoke-direct {v1, p2}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    sget-object p0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const-class p2, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-static {p0, p1, p1, p2}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    const-string v0, "SoundCraft.SoundCraftViewComponent"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v1, :cond_5

    check-cast v1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const-class v3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;

    invoke-static {v0, v1, v1, v3}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->dismiss()V

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->createDaggerViewModelFactory(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    const-class v3, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;

    invoke-static {v0, v3, v1}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->get(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->dismiss()V

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->createDaggerViewModelFactory(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    const-class v2, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->get(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->viewModelStore:Lcom/android/systemui/audio/soundcraft/di/vm/SoundCraftViewModelStore;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->registry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->lifecycleObserver:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->detailPageContent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateModel(I)V
    .locals 4

    const-string/jumbo v0, "updateModel from="

    const-string v1, "SoundCraft.SoundCraftViewComponent"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-boolean v2, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromNowBar:Z

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromCover:Z

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const-class v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-static {p1, v0, v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateModel()V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->detailPageContent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
