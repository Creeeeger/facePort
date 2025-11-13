.class public final Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;


# instance fields
.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/KeyguardSecurityViewFlipper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getId()I

    move-result p2

    const/4 p3, 0x6

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getId()I

    move-result p2

    const/4 p3, 0x7

    invoke-virtual {p1, p2, p3, p4, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getId()I

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3, p4, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getId()I

    move-result p2

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3, p4, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getId()I

    move-result p2

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getId()I

    move-result p2

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
