.class public final Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;


# instance fields
.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field public mViewFlipperWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/keyguard/KeyguardSecurityViewFlipper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->updateSecurityViewFlipperWidth()V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->updateSecurityViewPosition(IZ)V

    return-void
.end method

.method public final updateSecurityViewFlipperWidth()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070597

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipperWidth:I

    return-void
.end method

.method public final updateSecurityViewPosition(IZ)V
    .locals 9

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewTransition;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardSecurityViewTransition;-><init>()V

    invoke-static {p2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->updateSecurityViewFlipperWidth()V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0705da

    goto :goto_0

    :cond_1
    const v1, 0x7f0705d9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_4

    goto :goto_4

    :cond_4
    if-ne v0, v4, :cond_5

    :goto_3
    add-int/2addr v1, v2

    :cond_5
    :goto_4
    move v6, v1

    goto :goto_5

    :cond_6
    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    goto :goto_3

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v1, :cond_7

    const v1, 0x10502c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_7

    :cond_8
    move v0, v3

    :goto_7
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v7, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07053f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_8

    :cond_9
    move v2, v3

    :cond_a
    :goto_8
    if-nez v0, :cond_c

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    move v0, v2

    goto :goto_a

    :cond_c
    :goto_9
    move v0, v1

    :goto_a
    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_b

    :cond_d
    if-ne p1, v5, :cond_e

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_b

    :cond_e
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v4, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v5, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :goto_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mViewFlipperWidth:I

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
