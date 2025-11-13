.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

.field public final mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field public final mBubbleExpandedViewPinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

.field public final mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

.field public mDragController:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

.field public final mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

.field public mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public final mHandleTouchBounds:Landroid/graphics/Rect;

.field public mIsExpanded:Z

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final mScrimView:Landroid/view/View;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public mUnBubbleConversationCallback:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mHandleTouchBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    new-instance p3, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-direct {p3, p1, p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    new-instance p3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    invoke-direct {p3, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Listener;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    new-instance p3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mScrimView:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance p3, Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/wm/shell/common/bubbles/DismissView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-static {p3}, Lcom/android/wm/shell/bubbles/DismissViewUtils;->setup(Lcom/android/wm/shell/common/bubbles/DismissView;)V

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p3, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    invoke-direct {p3, p1, p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleExpandedViewPinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    iput-object p1, p3, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final collapse(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    sget-object v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    new-instance v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDragController:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    const-string v1, "BubbleBarAnimationHelper"

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->isStuckToDismiss:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    iput-boolean v0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p1, "Trying to animate dismiss without a bubble"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v1

    iget-object v5, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aget v1, v1, v4

    sub-int/2addr v5, v1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->cancelAnimations()V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    mul-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    iput-boolean v0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p1, "Trying to animate collapse without a bubble"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v5, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object v8, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v8, v8, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v7, v9, :cond_5

    goto :goto_0

    :cond_5
    sget-object v8, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v7, v8, :cond_6

    move v8, v4

    goto :goto_0

    :cond_6
    move v8, v0

    :goto_0
    if-eqz v8, :cond_7

    iget v6, v6, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v6, v6

    goto :goto_2

    :cond_7
    iget v6, v6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :goto_2
    iget v5, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    int-to-float v5, v5

    iget-object v7, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v7, v1, v1, v6, v5}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    sget-object v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    invoke-static {v7}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v5, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    const v6, 0x43bb7fff    # 374.99997f

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v5, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v3, v6}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;I)V

    iget-object v6, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v4, [Ljava/lang/Runnable;

    new-instance v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda5;)V

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v1, p1, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;

    iget-object v3, p1, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Lcom/android/systemui/model/SysUiState;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDragController:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showScrim(Z)V

    return-void
.end method

.method public final hideModalOrCollapse()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    invoke-virtual {v0, v2, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->hideMenu(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->hideCurrentInputMethod()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v2, v0}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_1
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    sget-object v1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    :cond_0
    return-void
.end method

.method public final showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 11

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->cancelAnimations()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overflow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v0, :cond_3

    iget v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    iget v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v0

    int-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    iput-object v3, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mLayerBoundsSupplier:Ljava/util/function/Supplier;

    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;

    invoke-direct {v3, p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iput-object v3, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;

    new-instance v10, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v9, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleExpandedViewPinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Lcom/android/wm/shell/common/bubbles/DismissView;Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$DragListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mDragController:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    invoke-virtual {p1, v2, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    :cond_6
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v0, p1, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;

    iget-object v4, p1, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-direct {v3, p1, v4, v2}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Lcom/android/systemui/model/SysUiState;Z)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    iput-object v0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    iput-boolean v2, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->updateExpandedView()V

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v6, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v5}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_8
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v7, v6, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object v9, v6, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v9, v9, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v8, v10, :cond_9

    goto :goto_2

    :cond_9
    sget-object v9, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v8, v9, :cond_a

    move v9, v2

    goto :goto_2

    :cond_a
    move v9, v1

    :goto_2
    if-eqz v9, :cond_b

    iget v7, v7, Landroid/graphics/Rect;->left:I

    :goto_3
    int-to-float v7, v7

    goto :goto_4

    :cond_b
    iget v7, v7, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :goto_4
    iget v6, v6, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    int-to-float v6, v6

    const v8, 0x3f666666    # 0.9f

    invoke-virtual {v4, v8, v8, v7, v6}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v6, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    sget-object v6, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    invoke-static {v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v4

    sget-object v6, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    const v7, 0x43f9ffff    # 499.99997f

    iget-object v8, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleInSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v4, v6, v7, v5, v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v6, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    invoke-virtual {v4, v6, v7, v5, v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, v6}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;I)V

    iget-object v6, v4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v2, [Ljava/lang/Runnable;

    new-instance v6, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, v0, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda2;)V

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showScrim(Z)V

    return-void
.end method

.method public final showScrim(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mScrimView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mScrimView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final showUserEducation(Landroid/graphics/Point;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    new-instance v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$1;

    invoke-direct {v3, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$1;-><init>(Landroid/graphics/Point;)V

    const v3, 0x7f0d006f

    invoke-virtual {v0, v3, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->createEducationView(ILandroid/view/ViewGroup;)Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;->DOWN:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;

    iget-object v5, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupView;->popupDrawable:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowDirection$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;

    sget-object v7, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v7, v7, v2

    invoke-virtual {v6, v5, v7, v4}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    sget-object v4, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$End;->INSTANCE:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$End;

    iget-object v5, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupView;->popupDrawable:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowPosition$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;

    sget-object v8, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v8, v8, v6

    invoke-virtual {v7, v5, v8, v4}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v5, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupView;->popupDrawable:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    if-eqz v5, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    iget v7, v5, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    div-float/2addr v7, v2

    iget v2, v5, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    add-float/2addr v7, v2

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    :cond_2
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupView;->popupDrawable:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$lambda$1$$inlined$doOnLayout$1;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$lambda$1$$inlined$doOnLayout$1;-><init>(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$2$2;

    invoke-direct {p1, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$2$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    iput-object p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    sget-object p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p1

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->springConfig$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object v1, p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->scrimView$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$3;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$3;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;)V

    invoke-virtual {v0, v6, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animateTransition(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final updateExpandedView()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overflow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v3, v3, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBarExpandedViewBounds(Landroid/graphics/Rect;ZZ)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setWindowBounds(Landroid/graphics/Rect;)V

    :cond_3
    :goto_2
    return-void
.end method
