.class public final Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/brightness/MirrorController;


# instance fields
.field public mBrightnessMirror:Landroid/widget/FrameLayout;

.field public mBrightnessMirrorBackgroundPadding:I

.field public final mBrightnessMirrorListeners:Landroid/util/ArraySet;

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final mInt2Cache:[I

.field public final mLastBrightnessSliderWidth:I

.field public final mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

.field public final mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

.field public final mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mVisibilityCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/NotificationShadeWindowView;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mLastBrightnessSliderWidth:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d035e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {p4, v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    invoke-interface {p2, p1}, Lcom/android/systemui/shade/ShadeViewController;->setAlphaChangeAnimationEndAction(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    new-instance p1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->reinflate(Landroid/widget/FrameLayout;Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources$1()V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final hideMirror()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    const/16 v2, 0xff

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/shade/ShadeViewController;->setAlpha(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->hideMirror()V

    :cond_1
    return-void
.end method

.method public final reinflate$1()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d035e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v3, v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->reinflate(Landroid/widget/FrameLayout;Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources$1()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/qs/bar/BrightnessBar;->$r8$clinit:I

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setLocationAndSize(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorBackgroundPadding:I

    sub-int/2addr v2, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget v1, v0, v1

    aget v0, v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorBackgroundPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mLastBrightnessSliderWidth:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showMirror()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/shade/ShadeViewController;->setAlpha(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result v1

    float-to-int v1, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->showMirror()V

    :cond_1
    return-void
.end method

.method public final updateResources$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->updateLayout()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ed5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorBackgroundPadding:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method
