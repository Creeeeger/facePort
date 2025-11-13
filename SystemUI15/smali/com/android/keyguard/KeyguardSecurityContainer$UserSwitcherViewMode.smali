.class public final Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;
.super Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

.field public mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

.field public mResources:Landroid/content/res/Resources;

.field public final mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;

.field public mUserSwitcher:Landroid/widget/TextView;

.field public final mUserSwitcherCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$UserSwitcherCallback;

.field public mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public mUserSwitcherViewGroup:Landroid/view/ViewGroup;

.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$UserSwitcherCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;-><init>()V

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$UserSwitcherCallback;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/KeyguardSecurityViewFlipper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mDefaultSideSetting:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p4, 0x7f0d0148

    invoke-virtual {p1, p4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a057d

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a0dff

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcher:Landroid/widget/TextView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->updateSecurityViewLocation()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->setupUserSwitcher()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->addUserSwitchCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->removeCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->setupUserSwitcher()V

    return-void
.end method

.method public final setupUserSwitcher()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/data/source/UserRecord;

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecurityView"

    const-string v0, "Current user in user switcher is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/user/data/source/UserRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v1

    iget-boolean v5, v5, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserAutoCreated:Z

    iget-boolean v1, v1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserResetting:Z

    invoke-static {v4, v2, v5, v1, v3}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserRecordName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;ZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v4, Lcom/android/settingslib/drawable/CircleFramedDrawable;->$r8$clinit:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071772

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {v4, v2, v3}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a0df7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcher:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0dfc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUserSwitcherAnchor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/user/data/source/UserRecord;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;Lcom/android/keyguard/KeyguardUserSwitcherAnchor;Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final startAppearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x28a

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startDisappearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07033a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    int-to-float p1, p1

    new-array v5, v1, [F

    aput p1, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v3, Lcom/android/app/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p0, v3, v0

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateSecurityViewLocation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final updateSecurityViewLocation(ZZ)V
    .locals 21

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityViewTransition;

    invoke-direct {v2}, Lcom/android/keyguard/KeyguardSecurityViewTransition;-><init>()V

    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v13, 0x0

    if-ne v1, v2, :cond_1

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    const/4 v7, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v16

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v18

    const/16 v19, 0x3

    const/16 v17, 0x4

    move-object v15, v1

    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v10, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v10

    const/4 v2, 0x4

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v9, v1

    move v3, v13

    move v13, v2

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->centerHorizontally(II)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->centerHorizontally(II)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalChainStyle(II)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalChainStyle(II)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_2

    :cond_1
    move v3, v13

    if-eqz p1, :cond_2

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    :goto_1
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    const/4 v5, 0x6

    invoke-virtual {v4, v1, v5, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v6, 0x7

    invoke-virtual {v4, v1, v6, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v4, v2, v5, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v4, v2, v6, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v10, v3, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v9, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v10, v3, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v9, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalChainStyle(II)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalChainStyle(II)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_2
    return-void
.end method
