.class public final Lcom/android/systemui/shade/SecNotificationPanelViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final expandFractionSupplier:Ljava/util/function/Supplier;

.field public final expandedHeightInternalConsumer:Ljava/util/function/Consumer;

.field public final hideNotificationShadeInMirrorInteractor:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

.field public final isTrackingSupplier:Ljava/util/function/BooleanSupplier;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final maxPanelHeightSupplier:Ljava/util/function/IntSupplier;

.field public final notificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public final notifyExpandingFinishedRunnable:Ljava/lang/Runnable;

.field public final onTrackingStoppedConsumer:Ljava/util/function/Consumer;

.field public final panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

.field public final panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final quickSettingsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public final secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecNotificationPanelViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecNotificationPanelViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/shade/QuickSettingsControllerImpl;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/data/repository/ShadeRepository;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/IntSupplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/shade/NotificationsQSContainerController;",
            "Lcom/android/systemui/shade/QuickSettingsControllerImpl;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/animation/ValueAnimator;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p2, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->notificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    iput-object p3, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p5, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iput-object p8, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->isTrackingSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p9, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->expandFractionSupplier:Ljava/util/function/Supplier;

    iput-object p10, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->maxPanelHeightSupplier:Ljava/util/function/IntSupplier;

    iput-object p11, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->expandedHeightInternalConsumer:Ljava/util/function/Consumer;

    iput-object p12, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->onTrackingStoppedConsumer:Ljava/util/function/Consumer;

    iput-object p13, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->notifyExpandingFinishedRunnable:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->hideNotificationShadeInMirrorInteractor:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-interface {p6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelRootView:Landroid/view/View;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    const p5, 0x7f0a0826

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    iput-object p2, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    iget-object p2, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelRootView:Landroid/view/View;

    if-eqz p2, :cond_1

    const p4, 0x7f0a0975

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    :cond_1
    iput-object p4, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsFrame:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/shade/SecNotificationPanelViewController$panelSplitHelper$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shade/SecNotificationPanelViewController$panelSplitHelper$1$1;-><init>(Lcom/android/systemui/shade/SecNotificationPanelViewController;)V

    iget-object p4, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iput-object p2, p4, Lcom/android/systemui/shade/PanelSlideEventHandler;->interceptCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    sget-object p1, Lcom/android/systemui/shade/SecNotificationPanelViewController$resourcePicker$2;->INSTANCE:Lcom/android/systemui/shade/SecNotificationPanelViewController$resourcePicker$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->resourcePicker$delegate:Lkotlin/Lazy;

    iget-object p1, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    return-void
.end method


# virtual methods
.method public final onPanelSplitIntercepted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->closeQSTooltip()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->expandFractionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->notifyExpandingFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->expandedHeightInternalConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->maxPanelHeightSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->isTrackingSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->onTrackingStoppedConsumer:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
