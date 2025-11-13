.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public final mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsButtonLongPressed:Z

.field public mIsButtonTouched:Z

.field public mIsDoubleTapEnabled:Z

.field public mIsDragging:Z

.field public mIsLongPressed:Z

.field public mIsScrolled:Z

.field public mShouldPilferCaptionEvents:Z

.field public mTargetView:Landroid/view/View;

.field public final mTaskId:I

.field public final mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

.field public final mTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    new-instance v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    new-instance p2, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance p2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    check-cast p3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mShouldPilferCaptionEvents:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    return-void
.end method


# virtual methods
.method public final dismissPopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget-boolean v5, v5, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const/4 v8, 0x6

    if-ne v2, v8, :cond_2

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    if-eqz v5, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    move-result-object v8

    iget-object v8, v8, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object v8, v8, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissViewManager;)V

    iget-object v8, v8, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    if-nez v5, :cond_6

    return v1

    :cond_4
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v5, :cond_5

    if-ne v2, v7, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    if-ne v5, v7, :cond_6

    return v1

    :cond_6
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v2, -0x1

    if-eq v5, v7, :cond_f

    if-eq v5, v3, :cond_7

    if-eq v5, v4, :cond_f

    goto :goto_1

    :cond_7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    :cond_8
    iget v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v2, :cond_9

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    :cond_9
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz v0, :cond_a

    :goto_1
    return v7

    :cond_a
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eqz v6, :cond_d

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-static {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->-$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    if-eqz p1, :cond_e

    :cond_b
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)Landroid/graphics/Rect;

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)Landroid/graphics/Rect;

    :cond_e
    :goto_2
    iput-boolean v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return v7

    :cond_f
    iget p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v2, :cond_10

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    :cond_10
    iget p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_11

    iget v7, v3, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mMaximumFlingVelocity:I

    int-to-float v7, v7

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-virtual {v5, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_11
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object v5, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    :cond_12
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v3, :cond_13

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mIsResizingOrAnimatingResize:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-interface {v0, v4, v4}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    :cond_13
    const/4 v0, 0x0

    if-eqz v6, :cond_16

    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    if-eqz v4, :cond_14

    goto :goto_3

    :cond_14
    if-eqz v3, :cond_17

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    instance-of p2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    if-eqz p2, :cond_17

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz p2, :cond_17

    iget-boolean v3, p2, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    if-eqz v3, :cond_15

    iget-object v3, p2, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v4, p2, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v1, p2, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    :cond_15
    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    goto :goto_4

    :cond_16
    :goto_3
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v3, v4, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    :cond_17
    :goto_4
    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_18
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    :cond_19
    if-eqz v6, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iput-boolean v1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsUserInteracting:Z

    :cond_1a
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return p1

    :cond_1b
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    if-eqz v6, :cond_1c

    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1f

    :cond_1c
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-static {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->-$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_5

    :cond_1d
    if-eqz v6, :cond_1e

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iput-boolean v7, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsUserInteracting:Z

    :cond_1e
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    :cond_1f
    :goto_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_20

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_6

    :cond_20
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :goto_6
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    :cond_21
    if-eqz p1, :cond_22

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    iget v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    if-eq v0, p2, :cond_22

    iput p2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mToolType:I

    :cond_22
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    :cond_23
    :goto_7
    return v1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v3, :cond_32

    iget v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isHandleMenuActive()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mToggleButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_f

    :cond_1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v4, :cond_2

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isMotionAnimating()Z

    move-result v5

    if-nez v5, :cond_32

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isBoundsAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_f

    :cond_2
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v12, v5

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown activity for SA logging. taskId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiTaskingWindowDecorViewModel"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto :goto_0

    :goto_1
    const v5, 0x7f0a02a7

    if-ne v2, v5, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v2, v4}, Lcom/android/wm/shell/windowdecor/TaskOperations;->closeTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    iget-boolean v11, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    :cond_4
    const v1, 0x7f13107b

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    goto/16 :goto_e

    :cond_5
    const v5, 0x7f0a013b

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v2, v5, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v14, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    goto/16 :goto_e

    :cond_6
    const v5, 0x7f0a0717

    if-ne v2, v5, :cond_8

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskById(I)Z

    if-eqz v4, :cond_30

    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {v0, v14}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->removeTaskToMotionInfo(Z)V

    goto/16 :goto_e

    :cond_7
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->minimizeTask(Landroid/window/WindowContainerToken;)V

    goto/16 :goto_e

    :cond_8
    const v4, 0x7f0a0480

    if-ne v2, v4, :cond_b

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v4}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v13, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    move v2, v13

    move v13, v14

    goto :goto_2

    :cond_9
    move v2, v13

    :goto_2
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v5, v13, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;->moveToFreeform(Landroid/window/WindowContainerToken;ZI)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    const/4 v11, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    :cond_a
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f13108c

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_b
    const v4, 0x7f0a06b4

    if-ne v2, v4, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    goto :goto_3

    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    iget-boolean v11, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    const/4 v8, 0x3

    const/4 v9, 0x2

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    :cond_d
    const v1, 0x7f13107c

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    goto/16 :goto_e

    :cond_e
    const v4, 0x7f0a024b

    if-ne v2, v4, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v1, :cond_f

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, v14}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_f
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->showHandleMenu()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    const/4 v11, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    goto/16 :goto_e

    :cond_10
    const v4, 0x7f0a024c

    const/4 v5, 0x5

    if-ne v2, v4, :cond_15

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    :cond_11
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2, v14}, Lcom/android/wm/shell/ShellTaskOrganizer;->changeByFreeformCaptionType(II)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10503aa

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v4, v7, v8, v13}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v4

    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Insets;->top:I

    sub-int/2addr v7, v4

    if-ge v7, v6, :cond_12

    sub-int/2addr v6, v7

    goto :goto_4

    :cond_12
    move v6, v13

    :goto_4
    if-eqz v6, :cond_13

    invoke-virtual {v2, v13, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v4, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_13
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v4, :cond_14

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    invoke-virtual {v2, v1, v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_5

    :cond_14
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_5
    const v1, 0x7f131080

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    goto/16 :goto_e

    :cond_15
    const v4, 0x7f0a024d

    if-ne v2, v4, :cond_17

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2, v13}, Lcom/android/wm/shell/ShellTaskOrganizer;->changeByFreeformCaptionType(II)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v4, :cond_16

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    invoke-virtual {v2, v1, v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_6

    :cond_16
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_6
    const v1, 0x7f131081

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    goto/16 :goto_e

    :cond_17
    const v4, 0x7f0a0bf2

    if-ne v2, v4, :cond_1d

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    const/4 v11, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x2

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    :cond_18
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    if-ne v2, v14, :cond_1a

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v1, :cond_19

    goto :goto_7

    :cond_19
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->enterSplitScreen$1()V

    goto :goto_7

    :cond_1a
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {v2, v1, v13}, Lcom/android/wm/shell/windowdecor/TaskOperations;->moveFreeformToSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_1b
    :goto_7
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLeftRightSplit()Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0x7f130036

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    goto/16 :goto_e

    :cond_1c
    const v1, 0x7f13003c

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    goto/16 :goto_e

    :cond_1d
    const v4, 0x7f0a09f2

    if-ne v2, v4, :cond_1e

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->rotateDexCompatTask(Landroid/os/IBinder;)V

    goto/16 :goto_e

    :cond_1e
    const v4, 0x7f0a013e

    if-ne v2, v4, :cond_1f

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v13, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    invoke-virtual {v0, v14, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    goto/16 :goto_e

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a010f

    if-ne v4, v5, :cond_20

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPivotX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPivotY()F

    move-result v1

    float-to-int v2, v2

    float-to-int v1, v1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-static {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getExternalAppsServiceIntent(I[I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/content/Intent;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/4 v15, 0x6

    invoke-virtual/range {v11 .. v16}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    goto/16 :goto_e

    :cond_20
    const v4, 0x7f0a09a9

    if-ne v2, v4, :cond_22

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    goto/16 :goto_e

    :cond_21
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V

    goto/16 :goto_e

    :cond_22
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v4, :cond_28

    const v4, 0x7f0a08e7

    if-ne v2, v4, :cond_28

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v4, v5}, Landroid/window/TaskOrganizer;->togglePinTaskState(I)Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsPinned:Z

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsPinned:Z

    if-eqz v4, :cond_23

    iget v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    goto :goto_8

    :cond_23
    const/4 v5, -0x1

    :goto_8
    iput v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mPinTaskId:I

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    if-eqz v2, :cond_24

    iput-boolean v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsPopupWindowPinned:Z

    :cond_24
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v2, :cond_25

    instance-of v2, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    if-eqz v2, :cond_25

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_27

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->showPinButtonIconBackground(Z)V

    goto :goto_a

    :cond_25
    instance-of v2, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v2, :cond_27

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iput-boolean v4, v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsPinned:Z

    if-eqz v4, :cond_26

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    const v4, 0x7f131091

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_26
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    const v4, 0x7f131090

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_a
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsPinned:Z

    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->toggleDisableAllPinButton(IZ)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v1, :cond_30

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, v14}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_e

    :cond_28
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v0, :cond_2f

    const v0, 0x7f0a073c

    if-ne v2, v0, :cond_2f

    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    if-nez v0, :cond_29

    new-instance v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wm/shell/windowdecor/DexMorePopup;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;)V

    iput-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    :cond_29
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/window/SurfaceSyncGroup;

    const-string v2, "DexMorePopup"

    invoke-direct {v1, v2}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-nez v4, :cond_2d

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iget v6, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mBackgroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    new-instance v6, Lcom/android/wm/shell/windowdecor/DexMorePopup$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/wm/shell/windowdecor/DexMorePopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DexMorePopup;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    const v6, 0x7f070f8c

    if-nez v5, :cond_2a

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :cond_2a
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1050449

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v7, v13, v13}, Landroid/view/View;->measure(II)V

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v7, :cond_2b

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_2b
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    const/high16 v8, -0x80000000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v13}, Landroid/view/View;->measure(II)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v7, v13, v13, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v7

    :goto_b
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v5

    const v6, 0x7f070f97

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    if-ne v7, v14, :cond_2c

    move/from16 v20, v5

    goto :goto_c

    :cond_2c
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v7, v22

    sub-int/2addr v7, v5

    move/from16 v20, v7

    :goto_c
    const v5, 0x7f070f8d

    invoke-static {v4, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v21

    int-to-float v4, v6

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    const-string v17, "Caption More menu"

    const/16 v27, 0x1

    iget-object v15, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/16 v16, -0x1

    const/16 v24, 0x2

    const v25, 0x40008

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move/from16 v26, v4

    move-object/from16 v28, v5

    invoke-virtual/range {v15 .. v28}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    const-wide/16 v5, 0xfa

    sget-object v7, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-static {v4, v14, v5, v6, v7}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mShowAnimation:Landroid/animation/Animator;

    new-instance v5, Lcom/android/wm/shell/windowdecor/DexMorePopup$1;

    invoke-direct {v5, v0}, Lcom/android/wm/shell/windowdecor/DexMorePopup$1;-><init>(Lcom/android/wm/shell/windowdecor/DexMorePopup;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    const-wide/16 v5, 0x15e

    sget-object v7, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-static {v4, v13, v5, v6, v7}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mHideAnimation:Landroid/animation/Animator;

    new-instance v5, Lcom/android/wm/shell/windowdecor/DexMorePopup$2;

    invoke-direct {v5, v0}, Lcom/android/wm/shell/windowdecor/DexMorePopup$2;-><init>(Lcom/android/wm/shell/windowdecor/DexMorePopup;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_d

    :cond_2d
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_d
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mShowAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_2e
    invoke-virtual {v1, v2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    goto :goto_e

    :cond_2f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz v0, :cond_30

    iget-boolean v0, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v0, :cond_30

    const v0, 0x7f0a073b

    if-ne v2, v0, :cond_30

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->showHandleMenu()V

    :cond_30
    :goto_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v0, :cond_32

    iget-boolean v0, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v0, :cond_32

    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    if-eqz v0, :cond_32

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v1, :cond_32

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    if-eqz v2, :cond_32

    if-eqz v0, :cond_32

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_31
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    :cond_32
    :goto_f
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    if-eq p1, v1, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    :cond_8
    :goto_0
    return v1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    iget-boolean v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isImmersiveMode()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p0, :cond_b

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    iget p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->offsetCaptionLocation(IILandroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_b

    iget v4, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eqz v3, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-eqz p0, :cond_b

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eqz v3, :cond_3

    if-nez v6, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/16 v8, 0x2002

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    iget v7, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaptionHeight:I

    const-wide/16 v8, 0x3e8

    iget-object v10, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    const/4 v12, 0x7

    if-eq p2, v12, :cond_7

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    if-eqz p0, :cond_b

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    div-int/lit8 v4, v7, 0x2

    :cond_6
    iput v4, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mPositionToShow:I

    goto :goto_3

    :cond_7
    iget-boolean p2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    if-eqz p2, :cond_9

    if-le p1, v7, :cond_8

    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_9
    iget p2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mPositionToShow:I

    if-gt p1, p2, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    invoke-virtual {v10, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_b

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    sget p0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    const/4 p2, -0x1

    if-eq p0, p2, :cond_a

    int-to-long v0, p0

    goto :goto_2

    :cond_a
    const-wide/16 v0, 0x1f4

    :goto_2
    invoke-virtual {v10, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_3
    return v2

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->unschedulePopupDismiss()V

    :goto_4
    return v2
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-nez v2, :cond_0

    instance-of v1, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsUserInteracting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DragPositioningStart from onLongPress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTaskingWindowDecorViewModel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v0, v2, p1, v1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissViewManager;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-boolean p3, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsTranslucent:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsTranslucent:Z

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/window/WindowContainerTransaction;->setFreeformTranslucent(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p3, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p0, p3}, Landroid/window/TaskOrganizer;->setFreeformTaskOpacity(IF)V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget p4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p2, p4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-static {v0, p2, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->-$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const-string v0, "MultiTaskingWindowDecorViewModel"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isHandleMenuActive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mShouldPilferCaptionEvents:Z

    if-nez v1, :cond_2

    return p4

    :cond_2
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    if-nez v1, :cond_6

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DragPositioningStart from scrolled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-boolean p2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsUserInteracting:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result p2

    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {p0, p2, p1, p4}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    goto :goto_2

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "OnScroll : Decoration not exist or HandleMenu Activated "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return p4

    :cond_6
    :goto_2
    return p3
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a024b

    const/4 v5, 0x0

    const v6, 0x7f0a024a

    if-eq v3, v6, :cond_1

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v4, :cond_1

    instance-of v3, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const-string v7, "MultiTaskingWindowDecorViewModel"

    if-eqz v3, :cond_2

    const-string v0, "Not support multi-touch."

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    const/4 v8, 0x1

    const/high16 v9, 0x4000000

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget v13, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    iget v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    if-ne v13, v14, :cond_e

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isImmersiveMode()Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object v13, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v13, :cond_e

    iget-object v13, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-eqz v13, :cond_e

    iget-boolean v13, v13, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    xor-int/2addr v13, v8

    if-eqz v13, :cond_e

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isHandleMenuActive()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v8, :cond_5

    if-eq v1, v12, :cond_5

    if-eq v1, v10, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {v0, v11, v2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return v5

    :cond_6
    :goto_2
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v0, :cond_d

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->offsetCaptionLocation(IILandroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_d

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eqz v3, :cond_d

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-eqz v0, :cond_d

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-eq v3, v8, :cond_9

    if-eq v3, v12, :cond_9

    if-ne v3, v10, :cond_d

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_c

    if-eq v3, v12, :cond_a

    goto :goto_3

    :cond_a
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_d

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v9, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownTime:J

    sub-long/2addr v6, v9

    iget v2, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownY:F

    iget v9, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaptionHeight:I

    int-to-float v9, v9

    cmpg-float v10, v2, v9

    if-gtz v10, :cond_d

    cmpl-float v2, v1, v2

    if-lez v2, :cond_d

    cmpl-float v1, v1, v9

    if-lez v1, :cond_d

    const-wide/16 v1, 0x1f4

    cmp-long v6, v6, v1

    if-gez v6, :cond_d

    iput-boolean v8, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    sget v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_b

    int-to-long v1, v0

    :cond_b
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_c
    int-to-float v1, v1

    iput v1, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownTime:J

    :cond_d
    :goto_3
    return v5

    :cond_e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v13, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v3, v13}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v13, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v3, :cond_2a

    if-nez v13, :cond_f

    goto/16 :goto_b

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    if-eq v14, v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v4, :cond_12

    :cond_10
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v6, :cond_11

    iget-boolean v6, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eqz v6, :cond_11

    goto :goto_4

    :cond_11
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mNSController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    iget v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v6, v2, v14}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v6

    if-eqz v6, :cond_12

    return v8

    :cond_12
    :goto_4
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v6, :cond_14

    iget-boolean v14, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eqz v14, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_14

    iget-boolean v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mShouldPilferCaptionEvents:Z

    if-nez v14, :cond_13

    return v5

    :cond_13
    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v14, v14, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v14, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_1c

    if-eq v14, v8, :cond_16

    if-eq v14, v12, :cond_15

    if-eq v14, v10, :cond_16

    goto/16 :goto_c

    :cond_15
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2d

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2d

    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    if-eqz v3, :cond_2d

    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    if-eqz v3, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_c

    :cond_16
    iput-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    :cond_17
    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    if-eqz v3, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_18

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    new-array v4, v5, [I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    :cond_18
    if-eqz v6, :cond_19

    iget-boolean v3, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eqz v3, :cond_19

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mShouldPilferCaptionEvents:Z

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f0a010f

    if-ne v1, v3, :cond_1b

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v1

    float-to-int v3, v3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    iget v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-static {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getExternalAppsServiceIntent(I[I)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    iget-object v1, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x0

    const/16 v18, 0x6

    const/16 v16, 0x7

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v19}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->log(Ljava/lang/String;IIIZ)V

    :cond_1b
    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    goto/16 :goto_c

    :cond_1c
    if-eqz v6, :cond_21

    iget-boolean v6, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eqz v6, :cond_21

    iget-object v6, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCustomizableCaptionRegion:Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v6, v10, v14}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/Region;->contains(II)Z

    move-result v10

    iget-object v14, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v14}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v14

    new-array v15, v12, [I

    invoke-virtual {v1, v15}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v11, Landroid/graphics/Point;

    aget v9, v15, v5

    aget v15, v15, v8

    invoke-direct {v11, v9, v15}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-eqz v9, :cond_1d

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    invoke-virtual {v9, v2, v11}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->shouldHandleEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v9

    if-eqz v9, :cond_1d

    move v9, v8

    goto :goto_5

    :cond_1d
    move v9, v5

    :goto_5
    if-eqz v6, :cond_1e

    if-eqz v10, :cond_1e

    if-nez v14, :cond_1f

    :cond_1e
    if-nez v9, :cond_1f

    move v6, v8

    goto :goto_6

    :cond_1f
    move v6, v5

    :goto_6
    iput-boolean v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mShouldPilferCaptionEvents:Z

    if-nez v6, :cond_20

    return v5

    :cond_20
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v6, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    :cond_21
    iget-boolean v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v6, :cond_22

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v9, v8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v9, v6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_22
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_HANDLE_VIEW:Z

    if-eqz v6, :cond_23

    instance-of v6, v1, Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-eqz v6, :cond_23

    invoke-virtual {v1, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_23
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    if-eqz v6, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->unschedulePopupDismiss()V

    :cond_24
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-nez v6, :cond_26

    instance-of v6, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v6, :cond_25

    goto :goto_7

    :cond_25
    move v6, v5

    goto :goto_8

    :cond_26
    :goto_7
    move v6, v8

    :goto_8
    iput-boolean v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    if-nez v6, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v4, :cond_27

    goto :goto_9

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_9
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v4, :cond_2d

    if-nez v1, :cond_29

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_29

    move v1, v8

    goto :goto_a

    :cond_29
    move v1, v5

    :goto_a
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    iget-boolean v1, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    if-nez v1, :cond_2d

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v12, :cond_2d

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_2d

    iput-boolean v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Allow DragPositioningStart from TouchPad down : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_2a
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnTouch: task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " might be vanished."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_2b

    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->close()V

    :cond_2b
    return v5

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v1, :cond_2d

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v3, v8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_2d
    :goto_c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v1, :cond_30

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    if-nez v1, :cond_2f

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v1, :cond_2e

    goto :goto_d

    :cond_2e
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isHandleMenuActive()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    if-eqz v1, :cond_30

    :cond_2f
    return v5

    :cond_30
    :goto_d
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final schedulePopupDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final sendTalkBackFeedback(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final supportTaskMotion()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final unschedulePopupDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
