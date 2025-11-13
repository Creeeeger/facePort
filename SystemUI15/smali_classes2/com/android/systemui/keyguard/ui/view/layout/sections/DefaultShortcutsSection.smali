.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;
.super Lcom/android/systemui/keyguard/ui/view/layout/sections/BaseShortcutSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final indicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final keyguardBlueprintInteractor:Ldagger/Lazy;

.field public final resources:Landroid/content/res/Resources;

.field public final safeInsetBottom:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordancesCombinedViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/VibratorHelper;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordancesCombinedViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/BaseShortcutSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->resources:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 13

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070480

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070485

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->resources:Landroid/content/res/Resources;

    const v2, 0x7f07048e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0a0c09

    invoke-virtual {p1, v11, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p1, v11, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const v2, 0x7f0a0c09

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget v1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->safeInsetBottom:I

    add-int v6, v10, v1

    const/4 v5, 0x4

    const/4 v3, 0x4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const v12, 0x7f0a040f

    invoke-virtual {p1, v12, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p1, v12, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const v2, 0x7f0a040f

    const/4 v3, 0x2

    const/4 v5, 0x2

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;->safeInsetBottom:I

    add-int v5, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const v1, 0x7f0a040f

    const/4 v2, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v0, 0x1

    invoke-virtual {p1, v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibilityMode(II)V

    invoke-virtual {p1, v12, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibilityMode(II)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method
