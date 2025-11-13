.class public Lcom/samsung/android/multiwindow/MultiSplitActions;
.super Ljava/lang/Object;
.source "MultiSplitActions.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiSplitActions"


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mHeaderType:I

.field private blacklist mIsChangingHeaderType:Z

.field private blacklist mIsChangingWindowPinState:Z

.field private blacklist mIsDexEnabled:Z

.field private final blacklist mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mWindow:Landroid/view/Window;

.field private blacklist mWindowOpacity:F

.field private blacklist mWindowPinState:I


# direct methods
.method public constructor blacklist <init>(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 54
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    .line 60
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    .line 61
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 63
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 64
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 65
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 67
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    .line 71
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 73
    return-void
.end method

.method private blacklist isFoldMainDisplay()Z
    .locals 1

    .line 376
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist back()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->injectBackEventForDex(Landroid/os/IBinder;I)Z

    .line 265
    :cond_0
    return-void
.end method

.method public blacklist close()V
    .locals 4

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    const-string v1, "MultiSplitActions"

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 204
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dismissTaskInSplitScreen(Landroid/os/IBinder;)V

    .line 205
    const-string v0, "close: success, call dismissTaskInSplitScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    :cond_1
    const-string v0, "close: ignore, call dismissTaskInSplitScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->dispatchOnWindowDismissed(ZZ)V

    .line 200
    const-string v0, "close: success, call dispatchOnWindowDismissed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V

    .line 210
    :goto_1
    return-void
.end method

.method public blacklist dispatchHeaderTypeChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .line 468
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 469
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 471
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 472
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v0, :cond_1

    .line 473
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/DecorCaptionView;->onHeaderTypeChanged(Z)V

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 478
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_2

    .line 479
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 482
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 483
    return-void
.end method

.method public blacklist dispatchWindowPinStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 503
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    if-eq v0, p1, :cond_0

    .line 504
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    .line 506
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 507
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPinned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->onWindowPinStateChanged(Z)V

    .line 511
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    .line 512
    return-void
.end method

.method public blacklist getActivityEmbeddingState()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    return v0
.end method

.method public blacklist getDecorView()Lcom/android/internal/policy/DecorView;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getMultiSplitFlags()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    return v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getWindow()Landroid/view/Window;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public blacklist getWindowOpacity()F
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    return v0

    .line 426
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist hasBarFocus()Z
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    return v2

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 141
    :cond_3
    return v1
.end method

.method public blacklist hasWindowFocus()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInMultiSplitHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 127
    .local v0, "hasWindowFocus":Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInTask()Z

    move-result v1

    or-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public blacklist initWindowPinState()V
    .locals 1

    .line 524
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 526
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result v0

    .line 525
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchWindowPinStateChanged(I)V

    .line 528
    :cond_0
    return-void
.end method

.method public blacklist isAccessibilityServiceEnabled()Z
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 381
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 385
    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0
.end method

.method public blacklist isActivity()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isButtonVisible(Landroid/view/View;)Z
    .locals 5
    .param p1, "button"    # Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    .line 146
    .local v0, "windowingMode":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 173
    return v4

    .line 154
    :sswitch_0
    if-ne v0, v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    return v4

    .line 159
    :cond_0
    return v3

    .line 161
    :cond_1
    if-ne v0, v4, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 168
    :sswitch_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    move v3, v4

    :cond_3
    return v3

    .line 170
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v1

    .line 171
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    return v3

    .line 166
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :sswitch_3
    if-ne v0, v2, :cond_5

    move v3, v4

    :cond_5
    return v3

    .line 163
    :sswitch_4
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v1, :cond_6

    if-ne v0, v2, :cond_6

    move v3, v4

    :cond_6
    return v3

    .line 148
    :sswitch_5
    if-ne v0, v2, :cond_7

    move v3, v4

    :cond_7
    return v3

    .line 150
    :sswitch_6
    if-eq v0, v4, :cond_8

    move v3, v4

    :cond_8
    return v3

    .line 152
    :sswitch_7
    if-eq v0, v2, :cond_9

    move v3, v4

    :cond_9
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x102031c -> :sswitch_7
        0x10203ec -> :sswitch_6
        0x1020408 -> :sswitch_5
        0x102046d -> :sswitch_4
        0x10204a2 -> :sswitch_3
        0x1020501 -> :sswitch_2
        0x10205af -> :sswitch_1
        0x10205d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist isEmbeddedMode()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isEmbedded()Z

    move-result v0

    return v0
.end method

.method public blacklist isFlexPanelRunning()Z
    .locals 1

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFreeformMode()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isFullscreen()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isHeaderTypeBar()Z
    .locals 2

    .line 486
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isHiddenSystemBarInSplitMode()Z
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSplitImmersiveModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isHorizontalSplitState()Z
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    .line 352
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_1

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public blacklist isMultiWindowSupported()Z
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    .line 311
    .local v0, "support":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiWindowSupported: support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSplitActions"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v0

    .line 314
    .end local v0    # "support":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNaturalSwitchingEnabled()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPinned()Z
    .locals 2

    .line 515
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPopupHelpEnabled()Z
    .locals 2

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    return v0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 548
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 553
    :cond_2
    return v1
.end method

.method public blacklist isRestartDialogDisabled()Z
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isDisabledNonResizeableAppRestartDialog()Z

    move-result v0

    return v0
.end method

.method public blacklist isRunning()Z
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isActivity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 119
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 121
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    return v1
.end method

.method public blacklist isSplitMode()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 185
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSplitModeEnabled()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    .line 338
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public blacklist isSplitModeSupported()Z
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 327
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 330
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return v1
.end method

.method public blacklist isSplitWindowBottom()Z
    .locals 3

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    .line 362
    .local v0, "stagePosition":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_1

    .line 363
    const/4 v1, 0x1

    return v1

    .line 365
    :cond_1
    return v1

    .line 358
    .end local v0    # "stagePosition":I
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist isStashed()Z
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 103
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getFreeformStashState()I

    move-result v0

    .line 104
    .local v0, "stashState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 107
    .end local v0    # "stashState":I
    :cond_2
    return v1
.end method

.method public blacklist isWindowPinStateChangeable()Z
    .locals 3

    .line 519
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist maximize()V
    .locals 5

    .line 222
    const-string v0, "maximize: success, call toggleFreeformWindowingMode"

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v1

    const-string v2, "MultiSplitActions"

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    .line 241
    const-string v0, "maximize: success, call exitMultiWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 243
    :cond_1
    const-string v0, "maximize: ignore, call exitMultiWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 223
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_4

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 226
    invoke-interface {v1, v3}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 227
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    if-nez v1, :cond_3

    .line 228
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_3
    nop

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    goto :goto_3

    .line 233
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maximize: Cannot change task workspace. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_1

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    throw v1

    .line 236
    :cond_4
    const-string v0, "maximize: ignore, call toggleFreeformWindowingMode"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_3
    return-void
.end method

.method public blacklist minimize()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    const-string v1, "MultiSplitActions"

    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskByToken(Landroid/os/IBinder;)Z

    .line 215
    const-string v0, "minimize: success, call minimizeTaskByToken"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_0
    const-string v0, "minimize: ignore, call minimizeTaskByToken"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void
.end method

.method public blacklist moveToFreeform()V
    .locals 5

    .line 268
    const-string v0, "moveToFreeform: success, call toggleFreeformWindowingMode"

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v1

    const-string v2, "MultiSplitActions"

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 272
    invoke-interface {v1, v3}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    nop

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto :goto_2

    .line 276
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToFreeform: Cannot change task workspace. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    throw v1

    .line 279
    :cond_0
    const-string v0, "moveToFreeform: ignore, call toggleFreeformWindowingMode"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveSplitTaskToFreeform(Landroid/os/IBinder;)V

    .line 284
    const-string v0, "moveToFreeform: success, call moveSplitTaskToFreeform"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    :cond_2
    const-string v0, "moveToFreeform: ignore, call moveSplitTaskToFreeform"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_2
    return-void
.end method

.method public blacklist moveToSplit()V
    .locals 4

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    const-string v1, "MultiSplitActions"

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->enterSplitScreenTopActivity()V

    .line 294
    const-string v0, "moveToSplit: success, call enterSplitScreenTopActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 297
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 298
    const-string v0, "moveToSplit: success, call moveFreeformTaskToSplit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, "moveToSplit: ignore, call moveFreeformTaskToSplit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    .line 86
    return-void
.end method

.method public blacklist reportPopupHelpSuccess()V
    .locals 2

    .line 570
    const-string v0, "MultiSplitActions"

    const-string/jumbo v1, "reportPopupHelpSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportMultiWindowHandlerHelpShown(I)V

    .line 572
    return-void
.end method

.method public blacklist rotate()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    const-string v1, "MultiSplitActions"

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v0}, Landroid/app/IActivityTaskManager;->rotateDexCompatTask(Landroid/os/IBinder;)V

    .line 252
    const-string/jumbo v0, "rotate: success, call rotateDexCompatTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rotate: Cannot change task workspace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 257
    :cond_0
    const-string/jumbo v0, "rotate: ignore, call rotateDexCompatTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_1
    return-void
.end method

.method public blacklist setHeaderType(I)V
    .locals 7
    .param p1, "type"    # I

    .line 430
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    const-string v1, "bar"

    const-string v2, "handler"

    const-string v3, "MultiSplitActions"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHeaderType: ignore. Changing header type to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 436
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 438
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result v0

    const/4 v5, 0x0

    if-eq v0, p1, :cond_7

    .line 439
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 440
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v6, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 443
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 446
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setFreeformHeaderType(I)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHeaderType: change to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    iget v6, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v6, v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 451
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v0, :cond_5

    .line 452
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DecorCaptionView;->onHeaderTypeChanged(Z)V

    .line 456
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 457
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_6

    .line 458
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 460
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_6
    goto :goto_4

    .line 461
    :cond_7
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHeaderType: ignore. already "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v5, v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_4
    return-void
.end method

.method public blacklist setPopupHelpDisabled()V
    .locals 2

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPopupHelpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "MultiSplitActions"

    const-string/jumbo v1, "setPopupHelpDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->noMoreShowMultiWindowHandlerHelp(I)V

    .line 564
    :cond_0
    return-void
.end method

.method public blacklist setRestartDialogDisabled()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->disableNonResizeableAppRestartDialog()V

    .line 532
    return-void
.end method

.method public blacklist setWindowOpacity(F)V
    .locals 3
    .param p1, "opacity"    # F

    .line 405
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 406
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setFreeformAlpha(Landroid/os/IBinder;F)V

    .line 409
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 412
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_3

    .line 413
    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->updateWindowOpacity(Z)V

    .line 418
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_3
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    .line 420
    :cond_4
    return-void
.end method

.method public blacklist showAllApps([I)V
    .locals 2
    .param p1, "buttonPosition"    # [I

    .line 398
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->showOverlayAllApps(Landroid/os/IBinder;[I)V

    .line 400
    const-string v0, "MultiSplitActions"

    const-string/jumbo v1, "showAllApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    return-void
.end method

.method public blacklist toggleWindowPinState()V
    .locals 4

    .line 490
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    .line 492
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    const-string v3, "MultiSplitActions"

    if-ne v2, v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startFreeformTaskPinning(Landroid/os/IBinder;)V

    .line 494
    const-string/jumbo v0, "toggleWindowPinState: change to pinned"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->stopFreeformTaskPinning(Landroid/os/IBinder;)V

    .line 497
    const-string/jumbo v0, "toggleWindowPinState: change to unpinned"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist update()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    .line 80
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 82
    return-void
.end method
