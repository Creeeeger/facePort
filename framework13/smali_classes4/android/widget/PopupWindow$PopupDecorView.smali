.class public Landroid/widget/PopupWindow$PopupDecorView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupDecorView"
.end annotation


# instance fields
.field private greylist-max-o mCleanupAfterExit:Ljava/lang/Runnable;

.field private blacklist mIsPenSelectionMode:Z

.field private final greylist-max-o mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field final synthetic blacklist this$0:Landroid/widget/PopupWindow;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCleanupAfterExit(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartEnterTransition(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/PopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    .line 2785
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    .line 2786
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2782
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    .line 3001
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView$4;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView$4;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 2787
    return-void
.end method

.method private greylist-max-o startEnterTransition(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 2905
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v0

    .line 2906
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2907
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2908
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2909
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 2906
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2912
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2914
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2915
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2916
    .restart local v2    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 2914
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2918
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelTransitions()V
    .locals 1

    .line 2992
    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 2996
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2997
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2999
    :cond_0
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2791
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2792
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2812
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2793
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2794
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2797
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2798
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2799
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    .line 2800
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2802
    :cond_3
    return v1

    .line 2803
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 2804
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2805
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2806
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2807
    return v1

    .line 2810
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2819
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2821
    .local v0, "action":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2822
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2832
    :pswitch_0
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_2

    .line 2833
    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 2837
    :pswitch_1
    iget-boolean v3, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    if-eqz v3, :cond_0

    .line 2838
    const/16 v3, 0xd4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2840
    :cond_0
    iput-boolean v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    .line 2841
    goto :goto_0

    .line 2824
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 2825
    iput-boolean v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    .line 2826
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 2828
    :cond_1
    iput-boolean v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    .line 2848
    .end local v0    # "action":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2849
    return v1

    .line 2851
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic blacklist lambda$startExitTransition$0$android-widget-PopupWindow$PopupDecorView(Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "anchorRoot"    # Landroid/view/View;

    .line 2944
    invoke-interface {p1, p2}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 2946
    if-eqz p3, :cond_0

    .line 2947
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2951
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    .line 2952
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 3028
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3029
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3030
    return-void

    .line 3033
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 3034
    .local v0, "dispatcher":Landroid/window/OnBackInvokedDispatcher;
    if-nez v0, :cond_1

    .line 3035
    return-void

    .line 3038
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    invoke-static {v1, v2}, Landroid/widget/PopupWindow;->-$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V

    .line 3040
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v2}, Landroid/widget/PopupWindow;->-$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 3042
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 3046
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3047
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/PopupWindow;->-$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V

    .line 3048
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2857
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2859
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    .line 2860
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2861
    :cond_0
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2862
    return v3

    .line 2863
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 2864
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2865
    return v3

    .line 2867
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public greylist-max-o requestEnterTransition(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2875
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2876
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2877
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    .line 2880
    .local v1, "enterTransition":Landroid/transition/Transition;
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/PopupWindow$PopupDecorView$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2899
    .end local v1    # "enterTransition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public greylist-max-o requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 1
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 3018
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3019
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3020
    .local v0, "parentRoot":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3021
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 3024
    .end local v0    # "parentRoot":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public greylist-max-o startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "anchorRoot"    # Landroid/view/View;
    .param p3, "epicenter"    # Landroid/graphics/Rect;
    .param p4, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 2930
    if-nez p1, :cond_0

    .line 2931
    return-void

    .line 2937
    :cond_0
    if-eqz p2, :cond_1

    .line 2938
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2943
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p4, p1, p2}, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    .line 2954
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    .line 2955
    .local v0, "exitTransition":Landroid/transition/Transition;
    new-instance v1, Landroid/widget/PopupWindow$PopupDecorView$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$PopupDecorView$2;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2967
    new-instance v1, Landroid/widget/PopupWindow$PopupDecorView$3;

    invoke-direct {v1, p0, p3}, Landroid/widget/PopupWindow$PopupDecorView$3;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 2974
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v1

    .line 2975
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2976
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2977
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2975
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2980
    .end local v2    # "i":I
    :cond_2
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2982
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 2983
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2984
    .restart local v3    # "child":Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2982
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2986
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
