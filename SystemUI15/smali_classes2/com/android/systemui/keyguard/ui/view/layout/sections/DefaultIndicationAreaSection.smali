.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final indicationAreaViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel;Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;->context:Landroid/content/Context;

    const p1, 0x7f0a0597

    iput p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;->indicationAreaViewId:I

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 9

    iget v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;->indicationAreaViewId:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x4

    iget v4, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;->indicationAreaViewId:I

    const/4 v5, 0x4

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 p0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 p0, 0x7

    invoke-virtual {p1, v0, p0, v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;->indicationAreaViewId:I

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ExtensionsKt;->removeView(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    return-void
.end method
