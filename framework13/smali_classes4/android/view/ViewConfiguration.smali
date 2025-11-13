.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final greylist-max-o ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final blacklist AMBIGUOUS_GESTURE_MULTIPLIER:F = 2.0f

.field private static final blacklist BIT_COUNT_DENSITY:I = 0xa

.field private static final blacklist BIT_COUNT_WIDTH_HEIGHT:I = 0xb

.field public static final greylist-max-o DEFAULT_LONG_PRESS_TIMEOUT:I = 0x190

.field private static final greylist-max-o DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final greylist-max-o DOUBLE_TAP_SLOP:I = 0x64

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o EDGE_SLOP:I = 0xc

.field private static final greylist-max-o FADING_EDGE_LENGTH:I = 0xc

.field private static final greylist-max-o GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final greylist-max-o HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o HOVER_TAP_SLOP:I = 0x14

.field private static final greylist-max-o HOVER_TAP_TIMEOUT:I = 0x96

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final greylist-max-o HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o KEY_REPEAT_DELAY:I = 0x32

.field private static final greylist-max-o LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final greylist-max-o MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final greylist-max-o MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final greylist-max-o MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final greylist-max-o OVERFLING_DISTANCE:I = 0x6

.field private static final greylist-max-o OVERSCROLL_DISTANCE:I = 0x0

.field private static final greylist-max-o PAGING_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o PRESSED_STATE_DURATION:I = 0x40

.field private static final blacklist SCREENSHOT_CHORD_KEY_TIMEOUT:I = 0x0

.field private static final greylist-max-o SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final greylist-max-o SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final greylist-max-o SCROLL_BAR_SIZE:I = 0x4

.field private static final greylist SCROLL_FRICTION:F = 0.015f

.field private static final greylist-max-o SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final blacklist SMART_SELECTION_INITIALIZED_TIMEOUT_IN_MILLISECOND:I = 0xc8

.field private static final blacklist SMART_SELECTION_INITIALIZING_TIMEOUT_IN_MILLISECOND:I = 0x1f4

.field private static final blacklist TAG:Ljava/lang/String; = "ViewConfiguration"

.field private static final greylist-max-o TAP_TIMEOUT:I = 0x64

.field private static final greylist-max-o TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o WINDOW_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final greylist sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAmbiguousGestureMultiplier:F

.field private final blacklist mConstructedWithContext:Z

.field private final greylist-max-o mDoubleTapSlop:I

.field private final greylist-max-o mDoubleTapTouchSlop:I

.field private final greylist-max-o mEdgeSlop:I

.field private final greylist-max-o mFadingEdgeLength:I

.field private final greylist mFadingMarqueeEnabled:Z

.field private final greylist-max-o mGlobalActionsKeyTimeout:J

.field private final greylist-max-o mHorizontalScrollFactor:F

.field private final greylist-max-o mHoverSlop:I

.field private final greylist-max-o mMaximumDrawingCacheSize:I

.field private final greylist-max-o mMaximumFlingVelocity:I

.field private final blacklist mMinScalingSpan:I

.field private final greylist-max-o mMinScrollbarTouchTarget:I

.field private final greylist-max-o mMinimumFlingVelocity:I

.field private final greylist-max-o mOverflingDistance:I

.field private final greylist-max-o mOverscrollDistance:I

.field private final greylist-max-o mPagingTouchSlop:I

.field private final blacklist mPreferKeepClearForFocusEnabled:Z

.field private final blacklist mScreenshotChordKeyTimeout:J

.field private final greylist-max-o mScrollbarSize:I

.field private final greylist-max-o mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final blacklist mSmartSelectionInitializedTimeout:I

.field private final blacklist mSmartSelectionInitializingTimeout:I

.field private final greylist-max-o mTouchSlop:I

.field private final greylist-max-o mVerticalScrollFactor:F

.field private final greylist-max-o mWindowTouchSlop:I

.field private greylist-max-p sHasPermanentMenuKey:Z

.field private greylist sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 362
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 376
    const/16 v1, 0xc

    iput v1, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 377
    iput v1, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 378
    const/16 v1, 0x32

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 379
    const/16 v1, 0x1f40

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 380
    const/4 v1, 0x4

    iput v1, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 381
    const/16 v2, 0x8

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 382
    iput v1, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 383
    const/16 v1, 0x30

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 384
    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 385
    const/16 v1, 0x10

    iput v1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 386
    const/16 v2, 0x64

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 387
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 388
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 390
    const v1, 0x177000

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 391
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 392
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 394
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 395
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 396
    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 397
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 398
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 402
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 403
    const/16 v1, 0xc8

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 404
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 405
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 406
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 423
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 424
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 425
    .local v3, "config":Landroid/content/res/Configuration;
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 427
    .local v4, "density":F
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v4

    .local v6, "sizeAndDensity":F
    goto :goto_0

    .line 430
    .end local v6    # "sizeAndDensity":F
    :cond_0
    move v6, v4

    .line 433
    .restart local v6    # "sizeAndDensity":F
    :goto_0
    const/high16 v7, 0x41400000    # 12.0f

    mul-float v8, v6, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 434
    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 435
    const v7, 0x10500db

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 437
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 438
    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 440
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 441
    .local v7, "multiplierValue":Landroid/util/TypedValue;
    const v8, 0x10500a9

    invoke-virtual {v1, v8, v7, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 445
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 448
    iget-object v8, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 449
    .local v8, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    mul-int/2addr v10, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v10, v5

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 451
    const/4 v5, 0x0

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 452
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 454
    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v5, :cond_2

    .line 455
    const v5, 0x10e00f6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 458
    .local v5, "configVal":I
    const/4 v9, 0x0

    packed-switch v5, :pswitch_data_0

    .line 461
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .local v10, "wm":Landroid/view/IWindowManager;
    goto :goto_1

    .line 477
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :pswitch_0
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 478
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_3

    .line 472
    :pswitch_1
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 473
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    .line 474
    goto :goto_3

    .line 463
    .restart local v10    # "wm":Landroid/view/IWindowManager;
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v0

    goto :goto_2

    :cond_1
    move v11, v9

    :goto_2
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 464
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_3

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "ex":Landroid/os/RemoteException;
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 483
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "configVal":I
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_3
    const v0, 0x11101e8

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 485
    const v0, 0x10500e2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 487
    const v5, 0x10500e1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 489
    const v5, 0x10500c4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 491
    mul-int/lit8 v5, v0, 0x2

    iput v5, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 493
    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 495
    const v0, 0x10500e4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 497
    const v0, 0x10500e3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 499
    const v0, 0x10e00a0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 502
    const v0, 0x10500b9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 504
    const v0, 0x10500e0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 507
    const v0, 0x11101b4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 510
    const v0, 0x10500c2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 513
    const v0, 0x10e011a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 516
    const v0, 0x10e0120

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 518
    const v0, 0x10e0121

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 520
    const v0, 0x111019d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 522
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 535
    const-string v0, "ViewConfiguration"

    invoke-static {p0, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 538
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 543
    .local v1, "density":I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x15

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    shl-int/lit8 v3, v3, 0xa

    or-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 544
    .local v2, "screenFactor":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewConfiguration;

    .line 545
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    if-nez v4, :cond_0

    .line 546
    new-instance v5, Landroid/view/ViewConfiguration;

    invoke-direct {v5, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 547
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 558
    .end local v2    # "screenFactor":I
    :cond_0
    return-object v4
.end method

.method public static whitelist getAmbiguousGestureMultiplier()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1035
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public static whitelist getDefaultActionModeHideDuration()J
    .locals 2

    .line 1019
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static greylist getDoubleTapMinTime()I
    .locals 1

    .line 697
    const/16 v0, 0x28

    return v0
.end method

.method public static greylist getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getDoubleTapTimeout()I
    .locals 1

    .line 685
    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 956
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static greylist-max-r getHoverTapSlop()I
    .locals 1

    .line 718
    const/16 v0, 0x14

    return v0
.end method

.method public static greylist-max-o getHoverTapTimeout()I
    .locals 1

    .line 707
    const/16 v0, 0x96

    return v0
.end method

.method public static blacklist getHoverTooltipHideShortTimeout()I
    .locals 1

    .line 1169
    const/16 v0, 0xbb8

    return v0
.end method

.method public static blacklist getHoverTooltipHideTimeout()I
    .locals 1

    .line 1159
    const/16 v0, 0x3a98

    return v0
.end method

.method public static blacklist getHoverTooltipShowTimeout()I
    .locals 1

    .line 1149
    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getJumpTapTimeout()I
    .locals 1

    .line 676
    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getKeyRepeatDelay()I
    .locals 1

    .line 658
    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getKeyRepeatTimeout()I
    .locals 1

    .line 651
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getLongPressTimeout()I
    .locals 2

    .line 634
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getLongPressTooltipHideTimeout()I
    .locals 1

    .line 1140
    const/16 v0, 0x5dc

    return v0
.end method

.method public static whitelist getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 907
    const v0, 0x177000

    return v0
.end method

.method public static whitelist getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 861
    const/16 v0, 0x1f40

    return v0
.end method

.method public static whitelist getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getMultiPressTimeout()I
    .locals 2

    .line 643
    const-string/jumbo v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getPressedStateDuration()I
    .locals 1

    .line 624
    const/16 v0, 0x40

    return v0
.end method

.method public static whitelist getScrollBarFadeDuration()I
    .locals 1

    .line 592
    const/16 v0, 0xfa

    return v0
.end method

.method public static whitelist getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getScrollDefaultDelay()I
    .locals 1

    .line 599
    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getScrollFriction()F
    .locals 1

    .line 1012
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static greylist-max-o getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .line 814
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static whitelist getTapTimeout()I
    .locals 1

    .line 667
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 826
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist getZoomControlsTimeout()J
    .locals 2

    .line 943
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public greylist-max-o getAccessibilityShortcutKeyTimeout()J
    .locals 2

    .line 993
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public greylist-max-o getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .locals 2

    .line 1002
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public blacklist getDeviceGlobalActionKeyTimeout()J
    .locals 2

    .line 969
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public whitelist getScaledAmbiguousGestureMultiplier()F
    .locals 1

    .line 1048
    iget v0, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    return v0
.end method

.method public whitelist getScaledDoubleTapSlop()I
    .locals 1

    .line 801
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public greylist getScaledDoubleTapTouchSlop()I
    .locals 1

    .line 772
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public whitelist getScaledEdgeSlop()I
    .locals 1

    .line 737
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public whitelist getScaledFadingEdgeLength()I
    .locals 1

    .line 616
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public whitelist getScaledHorizontalScrollFactor()F
    .locals 1

    .line 886
    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledHoverSlop()I
    .locals 1

    .line 762
    iget v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return v0
.end method

.method public whitelist getScaledMaximumDrawingCacheSize()I
    .locals 1

    .line 916
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public whitelist getScaledMaximumFlingVelocity()I
    .locals 1

    .line 868
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public greylist-max-o getScaledMinScrollbarTouchTarget()I
    .locals 1

    .line 585
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public whitelist getScaledMinimumFlingVelocity()I
    .locals 1

    .line 851
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMinimumScalingSpan()I
    .locals 2

    .line 1088
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    if-eqz v0, :cond_0

    .line 1093
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    return v0

    .line 1089
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Min scaling span cannot be determined when this method is called on a ViewConfiguration that was instantiated using a constructor with no Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getScaledOverflingDistance()I
    .locals 1

    .line 932
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public whitelist getScaledOverscrollDistance()I
    .locals 1

    .line 924
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public whitelist getScaledPagingTouchSlop()I
    .locals 1

    .line 780
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public whitelist getScaledScrollBarSize()I
    .locals 1

    .line 577
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public greylist getScaledScrollFactor()I
    .locals 1

    .line 878
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getScaledTouchSlop()I
    .locals 1

    .line 754
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public whitelist getScaledVerticalScrollFactor()F
    .locals 1

    .line 894
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledWindowTouchSlop()I
    .locals 1

    .line 834
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public blacklist getScreenshotChordKeyTimeout()J
    .locals 2

    .line 981
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getSmartSelectionInitializedTimeout()I
    .locals 1

    .line 1111
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    return v0
.end method

.method public blacklist getSmartSelectionInitializingTimeout()I
    .locals 1

    .line 1120
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    return v0
.end method

.method public whitelist hasPermanentMenuKey()Z
    .locals 1

    .line 1064
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public greylist isFadingMarqueeEnabled()Z
    .locals 1

    .line 1102
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method

.method public blacklist isPreferKeepClearForFocusEnabled()Z
    .locals 1

    .line 1130
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    return v0
.end method

.method public whitelist shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .locals 1

    .line 1073
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return v0
.end method
