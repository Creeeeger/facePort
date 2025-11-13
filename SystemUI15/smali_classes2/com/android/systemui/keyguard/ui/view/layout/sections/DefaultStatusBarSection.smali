.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final statusBarViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;->context:Landroid/content/Context;

    const p1, 0x7f0a0593

    iput p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;->statusBarViewId:I

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;->statusBarViewId:I

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;->statusBarViewId:I

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ExtensionsKt;->removeView(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    return-void
.end method
