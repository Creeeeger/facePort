.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final keyguardManager$delegate:Lkotlin/Lazy;

.field public viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$keyguardManager$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$keyguardManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->keyguardManager$delegate:Lkotlin/Lazy;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->keyguardManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isActionBarVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromNowBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->updatePadding$1()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "SoundCraft.SoundCraftDetailPageView"

    const-string/jumbo p1, "updatePadding fail"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->keyguardManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromNowBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_0
    return-void
.end method

.method public final updatePadding$1()V
    .locals 8

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isActionBarVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v6, 0x7f07144a

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f071434

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    const/4 v7, 0x0

    if-nez v4, :cond_4

    move-object v4, v7

    :cond_4
    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/LayoutHelperUtil;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/LayoutHelperUtil;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_5

    const v1, 0x3f333333    # 0.7f

    goto :goto_4

    :cond_5
    const v1, 0x3f1ed289    # 0.6204f

    :goto_4
    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f071449

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v2, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move-object v7, v0

    :goto_7
    iget-object v0, v7, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->actionBar:Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->root:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070634

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_8

    :cond_9
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_8
    return-void
.end method
