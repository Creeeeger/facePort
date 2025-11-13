.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final viewId:I

.field public final viewModel:Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewModel:Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;

    const p1, 0x7f0a0dc6

    iput p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewId:I

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewId:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewId:I

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v0, 0x7f0a0dc7

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {p1, p0, v2, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    invoke-virtual {p1, p0, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewModel:Lcom/android/systemui/deviceentry/ui/viewmodel/DeviceEntryUdfpsAccessibilityOverlayViewModel;

    invoke-static {p1, p0}, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder;->bind(Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;)V

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;->viewId:I

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ExtensionsKt;->removeView(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    return-void
.end method
