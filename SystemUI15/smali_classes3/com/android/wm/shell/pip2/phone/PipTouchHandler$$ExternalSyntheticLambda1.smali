.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mEnableResize:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cd3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f070cdb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->updateMagneticTargetSize()V

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v2, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v2, v2, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mTouchSlop:F

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    const v2, 0x7f0703e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mDismissAreaHeight:I

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    new-instance v1, Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/common/bubbles/DismissView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/DismissViewUtils;->setup(Lcom/android/wm/shell/common/bubbles/DismissView;)V

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v2, v1, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    iput-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    const/4 v9, 0x0

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    iget-object v5, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v3, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v6, v3, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    sget-object v8, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;Landroid/content/Context;Landroid/graphics/Rect;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    iput-boolean v9, v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    iput-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    iget-object v1, v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-direct {v3, v2, v9}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(Landroid/view/View;I)V

    iget-object v1, v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {v2, v3}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-object v3, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->updateMagneticTargetSize()V

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;)V

    iput-object v2, v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;-><init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;)V

    iput-object v2, v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "pip_input_consumer"

    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipInputConsumer:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mListener:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipInputConsumer;I)V

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "pip_stashing"

    const/4 v1, 0x1

    const-string/jumbo v2, "systemui"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mEnableStash:Z

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    invoke-static {v2, v3, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string v0, "pip_velocity_threshold"

    const v1, 0x468ca000    # 18000.0f

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mStashVelocityThreshold:F

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    invoke-static {v2, v3, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->updateMovementBounds()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->animateToUnStashedState()V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object v1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v6

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    const/4 v2, 0x1

    const/4 v4, 0x1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
