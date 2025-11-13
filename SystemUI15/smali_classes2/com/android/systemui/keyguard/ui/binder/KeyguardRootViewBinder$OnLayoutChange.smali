.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final blueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

.field public final burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final childViews:Ljava/util/Map;

.field public prevTransition:Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->blueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->childViews:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->childViews:Ljava/util/Map;

    sget p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;->nsslPlaceholderId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->blueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    iget-object p4, p4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->currentTransition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;

    if-eqz p4, :cond_0

    iget-object p5, p4, Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;->config:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    iget-object p5, p5, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->type:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;

    invoke-virtual {p5}, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;->getAnimateNotifChanges()Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    iget-object p6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->prevTransition:Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    if-eqz p5, :cond_1

    return-void

    :cond_1
    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->prevTransition:Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;

    iget-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p7, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    invoke-direct {p7, p6, p1, p5}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZ)V

    iget-object p1, p4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget p4, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->_notificationPlaceholderBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, p2, p7}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    move-object p4, p1

    check-cast p4, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p5

    move-object p6, p5

    check-cast p6, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p7, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;->childViews:Ljava/util/Map;

    sget p8, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;->statusViewId:I

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-interface {p7, p8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/view/View;

    if-eqz p7, :cond_4

    invoke-virtual {p7}, Landroid/view/View;->getTop()I

    move-result p7

    goto :goto_1

    :cond_4
    move p7, p3

    :goto_1
    const/4 p8, 0x5

    invoke-static {p6, p3, p7, p2, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->copy$default(Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;IILkotlin/jvm/functions/Function0;I)Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-void
.end method
