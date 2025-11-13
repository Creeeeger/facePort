.class public final Lcom/android/systemui/qs/SecQSGradationDrawableController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public statusBarState:I

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final view:Lcom/android/systemui/qs/SecQSGradationDrawableView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSGradationDrawableView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->view:Lcom/android/systemui/qs/SecQSGradationDrawableView;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarState:I

    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarState:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->view:Lcom/android/systemui/qs/SecQSGradationDrawableView;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarState:I

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v0, Lcom/android/systemui/qs/SecQSGradationDrawableController$onViewAttached$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQSGradationDrawableController$onViewAttached$1;-><init>(Lcom/android/systemui/qs/SecQSGradationDrawableController;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->view:Lcom/android/systemui/qs/SecQSGradationDrawableView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableView;->configChangedCallback:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070dc0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method
