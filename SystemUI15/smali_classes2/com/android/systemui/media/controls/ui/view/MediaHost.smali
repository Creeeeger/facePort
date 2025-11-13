.class public final Lcom/android/systemui/media/controls/ui/view/MediaHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/view/MediaHostState;


# instance fields
.field public final currentBounds:Landroid/graphics/Rect;

.field public final currentClipping:Landroid/graphics/Rect;

.field public hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

.field public inited:Z

.field public final listener:Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;

.field public listeningToMediaData:Z

.field public location:I

.field public final mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

.field public final state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

.field public final tmpLocationOnScreen:[I

.field public final visibleChangedListeners:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->location:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->tmpLocationOnScreen:[I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentClipping:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->listener:Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentBounds()Landroid/graphics/Rect;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->tmpLocationOnScreen:[I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v3, v2, v0

    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v5

    aget v5, v2, v0

    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v7, v5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, v1

    :goto_5
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v2, :cond_6

    move-object v1, v2

    :cond_6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v3, v1

    if-ge v7, v4, :cond_7

    move v4, v0

    move v7, v4

    :cond_7
    if-ge v3, v6, :cond_8

    move v3, v0

    goto :goto_6

    :cond_8
    move v0, v6

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v0, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    return-object p0
.end method

.method public final getExpandedMatchesParentHeight()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    return p0
.end method

.method public final getExpansion()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    return p0
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    return p0
.end method

.method public final getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    return-object p0
.end method

.method public final getShowsOnlyActiveMedia()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    return p0
.end method

.method public final getSquishFraction()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    return p0
.end method

.method public final getVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    return p0
.end method

.method public final init(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->inited:Z

    iput p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->location:I

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->register(Lcom/android/systemui/media/controls/ui/view/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->setListeningToMediaData(Z)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_2
    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;->setMeasurementManager(Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;I)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iput-object v0, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method public final setExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    return-void
.end method

.method public final setListeningToMediaData(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->listeningToMediaData:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->listeningToMediaData:Z

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->listener:Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->removeListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateViewVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->allowMediaPlayerOnLockScreen:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->Companion:Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-eq v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasAnyMediaOrRecommendation()Z

    move-result v0

    :goto_0
    iget-boolean v1, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    iget-boolean v0, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v0, :cond_6

    move-object v1, v0

    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-boolean v1, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void
.end method
