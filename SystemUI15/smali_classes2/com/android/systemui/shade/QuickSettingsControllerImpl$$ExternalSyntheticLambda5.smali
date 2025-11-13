.class public final synthetic Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS$ScrollListener;
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQsHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onHeightChanged()V

    return-void
.end method

.method public onQsPanelScrollChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->qsScrollY:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->qsScrollY:I

    iget-boolean v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScrollY(I)V

    :cond_0
    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToQs()V

    :cond_1
    return-void
.end method
