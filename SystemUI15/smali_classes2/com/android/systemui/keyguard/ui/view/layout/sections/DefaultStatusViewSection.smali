.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final keyguardViewConfigurator:Ldagger/Lazy;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final statusViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->keyguardViewConfigurator:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    const p1, 0x7f0a05ca

    iput p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->statusViewId:I

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->statusViewId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v3, 0x7

    invoke-virtual {p1, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07049f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->statusViewId:I

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ExtensionsKt;->removeView(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;->keyguardViewConfigurator:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
