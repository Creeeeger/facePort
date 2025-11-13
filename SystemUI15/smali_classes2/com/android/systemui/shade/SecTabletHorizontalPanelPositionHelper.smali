.class public final Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public controllerCenter:F

.field public final expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

.field public horizontalPanelTranslation:F

.field public final isFullyCollapsedSupplier:Ljava/util/function/BooleanSupplier;

.field public final isFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public panelCenter:F

.field public final panelViewControllerLazy:Ldagger/Lazy;

.field public final positionMinSideMarginSupplier:Ljava/util/function/IntSupplier;

.field public final qsFrameLayoutSupplier:Ljava/util/function/Supplier;

.field public final viewSupplier:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p2, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyCollapsedSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p3, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p4, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object p5, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->positionMinSideMarginSupplier:Ljava/util/function/IntSupplier;

    iput-object p6, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    iput-object p8, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->panelViewControllerLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final resetHorizontalPanelPosition(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->horizontalPanelTranslation:F

    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyCollapsedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v2

    double-to-float p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skip resetHorizontalPanelPosition("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "), isFullyCollapsed():"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isFullyExpanded():"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", getExpandedFraction():"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecTabletHorizontalPanelPositionHelperImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method public final setHorizontalPanelTranslation(F)V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->horizontalPanelTranslation:F

    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->panelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method
