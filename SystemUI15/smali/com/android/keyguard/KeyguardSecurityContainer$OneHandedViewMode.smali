.class public final Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;
.super Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/KeyguardSecurityViewFlipper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mDefaultSideSetting:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final updatePositionByTouchX(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    xor-int/lit8 v2, p1, 0x1

    const-string v3, "one_handed_keyguard_side"

    invoke-interface {v1, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(Ljava/lang/String;I)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final updateSecurityViewLocation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final updateSecurityViewLocation(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewTransition;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardSecurityViewTransition;-><init>()V

    invoke-static {p2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {p2, p1, v1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/4 v1, 0x3

    invoke-virtual {p2, p1, v1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
