.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mClipboardCallbacks:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;

.field public final mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

.field public mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

.field public final mContext:Landroid/content/Context;

.field public mEnterAnimator:Landroid/animation/Animator;

.field public mExitAnimator:Landroid/animation/Animator;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsMinimized:Z

.field public final mOnPreviewTapped:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1;

.field public final mOnRemoteCopyTapped:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1;

.field public mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;

.field public final mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

.field public final mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

.field public final mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils;Ljava/util/concurrent/Executor;Lcom/android/systemui/clipboardoverlay/ClipboardImageLoader;Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    iput-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    iput-object v4, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    move-object/from16 v8, p12

    invoke-direct {v7, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    iput-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    iput-object v7, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOnKeyboardChangeListener:Ljava/util/function/BiConsumer;

    iput-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOnOrientationChangeListener:Ljava/lang/Runnable;

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v7, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->requestApplyInsets()V

    :goto_0
    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda0;

    invoke-direct {v7, p3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;)V

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda0;->run()V

    :goto_1
    move-object/from16 v7, p7

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;

    invoke-direct {v11, p3, v8, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    goto :goto_1

    :goto_2
    iput-object v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object v5, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    const/16 v8, 0x1770

    iput v8, v5, Lcom/android/systemui/screenshot/TimeoutHandler;->mDefaultTimeout:I

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    sget-object v8, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setCallbacks(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;)V

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;->run()V

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;

    invoke-direct {v8, p3, v6, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :goto_3
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    iput-object v2, v5, Lcom/android/systemui/screenshot/TimeoutHandler;->mOnTimeout:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.android.systemui.SCREENSHOT"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "com.android.systemui.permission.SELF"

    move-object/from16 p6, p4

    move-object/from16 p7, v2

    move-object/from16 p8, v3

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    move/from16 p11, v7

    move-object/from16 p12, v8

    invoke-virtual/range {p6 .. p12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    const-string v3, "clipboard overlay"

    invoke-virtual {v2, v3, v9}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.COPY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast$1(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final animateFromMinimized()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x42

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$3;

    invoke-direct {v2, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final animateOut()V
    .locals 9

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v0, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    invoke-direct {v3, v1, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;I)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xa6

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;I)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$7;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final hideImmediate()V
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_4
    return-void
.end method

.method public final onDismissButtonTapped()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDismissComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->hideImmediate()V

    return-void
.end method

.method public onInsetsChanged(Landroid/view/WindowInsets;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setInsets(Landroid/view/WindowInsets;I)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setMinimized(Z)V

    :cond_0
    return-void
.end method

.method public final onInteraction()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onMinimizedViewTapped()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateFromMinimized()V

    return-void
.end method

.method public final onPreviewTapped()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onRemoteCopyButtonTapped()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onShareButtonTapped()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSwipeDismissInitiated(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    sget-object p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
