.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$7;
.super Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/wm/shell/Flags;->enableBubbleStashing()V

    return-void
.end method

.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean v2, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v2, :cond_5

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide()V

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    iget-object v2, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    move-object v2, v0

    move-object v3, p2

    move-object v5, p1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V

    iput-object v0, p2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    const p1, 0x45bb8000    # 6000.0f

    iput p1, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    iget-object p1, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    sget v0, Lcom/android/wm/shell/bubbles/animation/FlingToDismissUtils;->$r8$clinit:I

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_3

    const/high16 p1, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_3
    const/16 v0, 0x5dc

    if-lt p1, v0, :cond_4

    const/high16 p1, 0x40900000    # 4.5f

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40400000    # 3.0f

    :goto_0
    iput p1, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->hideCurrentInputMethod()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    iput-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    goto/16 :goto_1

    :cond_5
    iget-object p1, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v9, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v3, v9, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    if-nez v3, :cond_6

    new-instance v10, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    iget-object v3, v9, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    invoke-direct {v7, v9, p2, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)V

    new-instance v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    invoke-direct {v8, v9, v2, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)V

    move-object v3, v10

    move-object v4, v9

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroid/content/Context;Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v10, v9, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    :cond_6
    iget-object p2, v9, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    iput-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object p2, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    iput-object v2, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    iput-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/DismissView;->show()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_2

    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    sget-object v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v5, 0x43e0ffff    # 449.99997f

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v3, v5, v6, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda23;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda23;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    iget-object v4, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v4, v3, Lcom/android/wm/shell/common/bubbles/DismissView;->dismissArea:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    const/4 v6, 0x0

    if-gez v5, :cond_3

    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_3

    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_3

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float p2, v1, p2

    if-lez p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v6

    :goto_1
    iget-boolean v1, v3, Lcom/android/wm/shell/common/bubbles/DismissView;->isBeingEntered:Z

    if-eq v1, p2, :cond_4

    iput-boolean p2, v3, Lcom/android/wm/shell/common/bubbles/DismissView;->isBeingEntered:Z

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateDismissBubble(Landroid/view/View;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_c

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    add-float/2addr p3, p5

    add-float/2addr p4, p6

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    if-nez p2, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-boolean p5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    const p6, 0x461c4000    # 10000.0f

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    iget-object p2, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p2

    new-array p5, v6, [Ljava/lang/Runnable;

    iput-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-virtual {p2, v0, p3, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    new-array p5, v6, [Ljava/lang/Runnable;

    invoke-virtual {p2, p4, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    iput p6, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    new-array p5, v6, [Ljava/lang/Runnable;

    invoke-virtual {p2, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    goto :goto_2

    :cond_6
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    sget-object p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    filled-new-array {p5, v1}, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    iget-object p2, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p2

    new-array v1, v6, [Ljava/lang/Runnable;

    iput-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p5, p3, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    new-array p5, v6, [Ljava/lang/Runnable;

    invoke-virtual {p2, p4, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    iput p6, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    new-array p5, v6, [Ljava/lang/Runnable;

    invoke-virtual {p2, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewYTopAligned()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float p3, p1, p2

    cmpl-float p3, p4, p3

    if-gtz p3, :cond_b

    sub-float/2addr p1, p2

    cmpg-float p1, p4, p1

    if-gez p1, :cond_a

    goto :goto_3

    :cond_a
    move v2, v6

    :cond_b
    :goto_3
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    if-eq v2, p1, :cond_12

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    goto :goto_6

    :cond_c
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {p1, v6}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    add-float/2addr p3, p5

    add-float/2addr p4, p6

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    if-eqz p1, :cond_e

    const p1, 0x463b8000    # 12000.0f

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    goto :goto_5

    :cond_e
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    sget-object p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean p5, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez p5, :cond_10

    iget-boolean p5, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p5, :cond_f

    goto :goto_4

    :cond_f
    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    goto :goto_5

    :cond_10
    :goto_4
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_11
    :goto_5
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const p1, -0x7fffffff

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    iput-boolean v6, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    :cond_12
    :goto_6
    return-void
.end method

.method public final onUp(Landroid/view/View;FFFF)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    return-void

    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateDismissBubble(Landroid/view/View;Z)V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/bubbles/DismissView;->isBeingEntered:Z

    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-boolean p1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    iget-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->onReleasedInTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;)V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->onReleasedInTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$mshowExpandedViewIfNeeded(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object p2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p2, p1, p4, p5}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$mshowExpandedViewIfNeeded(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    goto :goto_3

    :cond_4
    iget-boolean p1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    add-float/2addr p2, p3

    invoke-virtual {v1, p2, p4, p5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    const/4 p3, 0x1

    if-gtz p2, :cond_5

    move p2, p3

    goto :goto_1

    :cond_5
    move p2, v2

    :goto_1
    iput-boolean p2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean p4, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-eq p1, p4, :cond_6

    goto :goto_2

    :cond_6
    move p3, v2

    :goto_2
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 p2, 0x7

    invoke-virtual {p1, v3, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-boolean v2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    iput-object v3, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/wm/shell/Flags;->enableBubbleStashing()V

    return-void
.end method
