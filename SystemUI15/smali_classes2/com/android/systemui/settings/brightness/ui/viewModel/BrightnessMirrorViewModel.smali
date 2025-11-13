.class public final Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/brightness/MirrorController;


# instance fields
.field public final _locationAndSize:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _toggleSlider:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final brightnessMirrorShowingInteractor:Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;

.field public final isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final locationAndSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final resources:Landroid/content/res/Resources;

.field public final sliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final tempPosition:[I


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;Landroid/content/res/Resources;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->brightnessMirrorShowingInteractor:Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->resources:Landroid/content/res/Resources;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->tempPosition:[I

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/settings/brightness/ui/viewModel/LocationAndSize;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/settings/brightness/ui/viewModel/LocationAndSize;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->_locationAndSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    return-void
.end method

.method public final hideMirror()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->brightnessMirrorShowingInteractor:Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;->brightnessMirrorShowingRepository:Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;->_isShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    return-void
.end method

.method public final setLocationAndSize(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->tempPosition:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070ed5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->_toggleSlider:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    new-instance v2, Lcom/android/systemui/settings/brightness/ui/viewModel/LocationAndSize;

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {v2, v0, v3, p1}, Lcom/android/systemui/settings/brightness/ui/viewModel/LocationAndSize;-><init>(III)V

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->_locationAndSize:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final showMirror()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;->brightnessMirrorShowingInteractor:Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;->brightnessMirrorShowingRepository:Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;->_isShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
