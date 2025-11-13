.class public abstract Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field public static final SCALE_DOWN_RATIO:F


# instance fields
.field public mAnimatorsInitialiezed:Z

.field public mOverScrollAmount:F

.field public mPanelSplitEnabled:Z

.field public mPanelState:I

.field public mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mUserChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    :goto_0
    sput v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->SCALE_DOWN_RATIO:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mOverScrollAmount:F

    return-void
.end method

.method public static gatherStateOfViews(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v2, p2}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", translationY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static isDetailVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public clearAnimationState()V
    .locals 0

    return-void
.end method

.method public abstract destroyQSViews()V
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/systemui/util/ViewUtil;->getSecQuickStatusBarHeader(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isThereNoView()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0996

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onNotificationScrolled(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed$1()V
    .locals 0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    return-void
.end method

.method public onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    return-void
.end method

.method public onPanelOpened()V
    .locals 0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    return-void
.end method

.method public onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    iget v1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    :cond_1
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    sput p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    return-void
.end method

.method public setFancyClipping(IIIIIZZ)V
    .locals 0

    return-void
.end method

.method public setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method

.method public setOverDragAmount(F)V
    .locals 0

    return-void
.end method

.method public setOverScrollAmount(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mOverScrollAmount:F

    return-void
.end method

.method public setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    return-void
.end method

.method public abstract setQs(Lcom/android/systemui/plugins/qs/QS;)V
.end method

.method public setQsExpanded(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    return-void
.end method

.method public setQsExpansionPosition(F)V
    .locals 0

    return-void
.end method

.method public setShadeRepository(Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    return-void
.end method

.method public setStackScrollerOverscrolling(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->expandedByNotiOverScroll:Z

    return-void
.end method

.method public setTransitionToFullShadeAmount(F)V
    .locals 0

    return-void
.end method

.method public slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V
    .locals 0

    return-void
.end method

.method public abstract updateAnimators()V
.end method

.method public updatePanelExpanded(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    return-void
.end method
