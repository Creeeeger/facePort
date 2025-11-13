.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;->resources:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

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

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070485

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0a05c1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMinHeight(II)V

    const v3, 0x7f0a05c1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v2, p1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x7

    const/4 v6, 0x7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;->resources:Landroid/content/res/Resources;

    const v0, 0x7f07048e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v6, 0x4

    const/4 v4, 0x4

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 p0, 0x1

    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibilityMode(II)V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    const p0, 0x7f0a05c1

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ExtensionsKt;->removeView(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    return-void
.end method
