.class public final Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _actions:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _badge:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isAnimating:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _preview:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _previewAction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _scrollableRect:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _scrollingScrim:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final actions:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final badge:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isAnimating:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final preview:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final previewAction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final scrollableRect:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final scrollingScrim:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_preview:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->preview:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_scrollingScrim:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->scrollingScrim:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_badge:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->badge:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_previewAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->previewAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_actions:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->actions:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;->NOT_STARTED:Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_isAnimating:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->isAnimating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_scrollableRect:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->scrollableRect:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
