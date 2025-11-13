.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/AlignShortcutsToUdfpsSection;
.super Lcom/android/systemui/keyguard/ui/view/layout/sections/BaseShortcutSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final indicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordancesCombinedViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/BaseShortcutSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AlignShortcutsToUdfpsSection;->resources:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AlignShortcutsToUdfpsSection;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AlignShortcutsToUdfpsSection;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AlignShortcutsToUdfpsSection;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070480

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    const v1, 0x7f0a0c09

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v4, 0x2

    const v5, 0x7f0a0371

    invoke-virtual {p1, v1, v4, v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v6, 0x3

    invoke-virtual {p1, v1, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v7, 0x4

    invoke-virtual {p1, v1, v7, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v1, 0x7f0a040f

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    invoke-virtual {p1, v1, v4, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1, v1, v2, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1, v1, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1, v1, v7, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method
