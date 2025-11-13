.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABOVE_ANCHOR_STATE_SET:[I

.field private static final greylist-max-o ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final greylist-max-o DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final blacklist ONEUI_BLUR_POPUP_BACKGROUND_RES:[I


# instance fields
.field private greylist mAboveAnchor:Z

.field private greylist-max-p mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mAllowScrollingAnchorParent:Z

.field private greylist mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorXoff:I

.field private greylist-max-o mAnchorYoff:I

.field private greylist-max-o mAnchoredGravity:I

.field private greylist mAnimationStyle:I

.field private greylist-max-o mAttachedInDecor:Z

.field private greylist-max-o mAttachedInDecorSet:Z

.field private blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mBackground:Landroid/graphics/drawable/Drawable;

.field private greylist mBackgroundView:Landroid/view/View;

.field private greylist-max-p mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mClipToScreen:Z

.field private greylist-max-o mClippingEnabled:Z

.field private greylist mContentView:Landroid/view/View;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private greylist-max-o mElevation:F

.field private greylist-max-o mEnterTransition:Landroid/transition/Transition;

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mExitTransition:Landroid/transition/Transition;

.field private greylist-max-o mFocusable:Z

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHeight:I

.field private greylist mHeightMode:I

.field private greylist-max-o mIgnoreCheekPress:Z

.field private greylist-max-o mInputMethodMode:I

.field private greylist-max-o mIsAnchorRootAttached:Z

.field private blacklist mIsDecorViewBGNull:Z

.field private blacklist mIsDeviceDefault:Z

.field private greylist mIsDropdown:Z

.field private blacklist mIsReplacedPoupBackground:Z

.field private greylist mIsShowing:Z

.field private greylist-max-o mIsTransitioningToDismiss:Z

.field private greylist mLastHeight:I

.field private greylist mLastWidth:I

.field private greylist mLayoutInScreen:Z

.field private greylist-max-o mLayoutInsetDecor:Z

.field private blacklist mNavigationBarHeight:I

.field private greylist-max-r mNotTouchModal:Z

.field private final greylist-max-o mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final greylist-max-o mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final greylist-max-p mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private greylist-max-o mOutsideTouchable:Z

.field private greylist-max-p mOverlapAnchor:Z

.field private greylist-max-o mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPopupViewInitialLayoutDirectionInherited:Z

.field private greylist-max-o mSoftInputMode:I

.field private greylist-max-o mSplitTouchEnabled:I

.field private blacklist mStatusBarHeight:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpAppLocation:[I

.field private final greylist-max-o mTmpDrawingLocation:[I

.field private final greylist-max-o mTmpScreenLocation:[I

.field private greylist mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private greylist-max-o mTouchable:Z

.field private greylist-max-o mWidth:I

.field private greylist mWidthMode:I

.field private greylist mWindowLayoutType:I

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$sBySINsQ840RHdfSximM8t-0I0Y(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAboveAnchor(Landroid/widget/PopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAnchorRootAttached(Landroid/widget/PopupWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$malignToAnchor(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissImmediate(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetABOVE_ANCHOR_STATE_SET()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 305
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/PopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10809a6
        0x10809a5
        0x1080939
        0x1080938
        0x10809c3
        0x10809c2
        0x10809d2
        0x10809d1
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 422
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 423
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 450
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 336
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 337
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 346
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 154
    new-array v3, v2, [I

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 155
    new-array v3, v2, [I

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 156
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 188
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 189
    const/4 v4, 0x1

    iput v4, v0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 191
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 192
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 193
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 194
    const/4 v5, -0x1

    iput v5, v0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 198
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 199
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 202
    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 203
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 210
    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/PopupWindow;->mWidth:I

    .line 215
    iput v6, v0, Landroid/widget/PopupWindow;->mHeight:I

    .line 233
    const/16 v6, 0x3e8

    iput v6, v0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 238
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 240
    iput v5, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 243
    iput v3, v0, Landroid/widget/PopupWindow;->mGravity:I

    .line 249
    new-instance v6, Landroid/widget/PopupWindow$1;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 264
    new-instance v6, Landroid/widget/PopupWindow$2;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 280
    new-instance v6, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 283
    new-instance v6, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, v0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 299
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    .line 301
    iput v3, v0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 302
    iput v3, v0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 318
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    .line 354
    iput-object v1, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 355
    const-string/jumbo v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, v0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 357
    sget-object v6, Lcom/android/internal/R$styleable;->PopupWindow:[I

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual {v1, v7, v6, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 359
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 360
    .local v10, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, v0, Landroid/widget/PopupWindow;->mElevation:F

    .line 361
    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 366
    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v6, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 368
    .local v2, "animStyle":I
    const v11, 0x103030d

    if-ne v2, v11, :cond_0

    .line 369
    iput v5, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 371
    :cond_0
    iput v2, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 373
    .end local v2    # "animStyle":I
    :goto_0
    goto :goto_1

    .line 374
    :cond_1
    iput v5, v0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 377
    :goto_1
    const/4 v2, 0x4

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 380
    .local v2, "enterTransition":Landroid/transition/Transition;
    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 381
    invoke-virtual {v6, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-direct {v0, v11}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v11

    .local v11, "exitTransition":Landroid/transition/Transition;
    goto :goto_2

    .line 384
    .end local v11    # "exitTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v2, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v11

    .line 389
    .restart local v11    # "exitTransition":Landroid/transition/Transition;
    :goto_2
    const/4 v12, 0x0

    .line 390
    .local v12, "isOneUIBlurBackground":Z
    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 391
    .local v5, "popupBackgroundResId":I
    sget-object v13, Landroid/widget/PopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    array-length v14, v13

    move v15, v3

    :goto_3
    if-ge v15, v14, :cond_5

    aget v4, v13, v15

    .line 392
    .local v4, "popupBgResIds":I
    if-ne v4, v5, :cond_4

    .line 393
    const/4 v12, 0x1

    .line 391
    .end local v4    # "popupBgResIds":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 397
    :cond_5
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 400
    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 401
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    xor-int/lit8 v4, v12, 0x1

    iput-boolean v4, v0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    .line 406
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 407
    .local v4, "themeValue":Landroid/util/TypedValue;
    iget-object v13, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x11200b9

    invoke-virtual {v13, v14, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 408
    iget v13, v4, Landroid/util/TypedValue;->data:I

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    .line 410
    iget-object v3, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x10504cc

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 411
    iget-object v3, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x1050244

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 413
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 436
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 466
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 154
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 155
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 191
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 192
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 193
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 194
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 198
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 199
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 202
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 203
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 210
    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 215
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 233
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 238
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 240
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 243
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 249
    new-instance v1, Landroid/widget/PopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 264
    new-instance v1, Landroid/widget/PopupWindow$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 280
    new-instance v1, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 283
    new-instance v1, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 299
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    .line 301
    iput v0, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 302
    iput v0, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    .line 318
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    .line 481
    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 483
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 487
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 488
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 489
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 490
    return-void
.end method

.method private greylist-max-o alignToAnchor()V
    .locals 11

    .line 2747
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 2748
    .local v9, "anchor":Landroid/view/View;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2749
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 2751
    .local v10, "p":Landroid/view/WindowManager$LayoutParams;
    iget v3, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v9

    move-object v2, v10

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2754
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    .line 2755
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v0, :cond_3

    .line 2756
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_1

    .line 2759
    :cond_1
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_1

    .line 2761
    .end local v10    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_3

    .line 2762
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_2

    .line 2761
    :cond_3
    :goto_1
    nop

    .line 2765
    :goto_2
    return-void
.end method

.method private blacklist alignToAnchor(IIIIIIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "oldLeft"    # I
    .param p6, "oldTop"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldBottom"    # I

    .line 2736
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    .line 2737
    if-ne p1, p5, :cond_0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p4, p8, :cond_2

    .line 2738
    :cond_0
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    goto :goto_0

    .line 2741
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    .line 2743
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist computeAnimationResource()I
    .locals 2

    .line 1817
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1818
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1819
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1820
    const v0, 0x1030300

    goto :goto_0

    .line 1821
    :cond_0
    const v0, 0x10302ff

    .line 1819
    :goto_0
    return v0

    .line 1823
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1825
    :cond_2
    return v0
.end method

.method private greylist-max-o computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .line 1769
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1777
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1778
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1780
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    .line 1781
    or-int/lit8 p1, p1, 0x8

    .line 1782
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1783
    or-int/2addr p1, v1

    goto :goto_0

    .line 1785
    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1786
    or-int/2addr p1, v1

    .line 1788
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_3

    .line 1789
    or-int/lit8 p1, p1, 0x10

    .line 1791
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_4

    .line 1792
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1794
    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_6

    .line 1795
    :cond_5
    or-int/lit16 p1, p1, 0x200

    .line 1797
    :cond_6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1798
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1800
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_8

    .line 1801
    or-int/lit16 p1, p1, 0x100

    .line 1803
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_9

    .line 1804
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1806
    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_a

    .line 1807
    or-int/lit8 p1, p1, 0x20

    .line 1809
    :cond_a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_b

    .line 1810
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1812
    :cond_b
    return p1
.end method

.method private greylist-max-o computeGravity()I
    .locals 2

    .line 1707
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_0

    const v0, 0x800033

    .line 1708
    .local v0, "gravity":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_2

    .line 1709
    :cond_1
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 1711
    :cond_2
    return v0
.end method

.method private greylist-max-o createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 5
    .param p1, "contentView"    # Landroid/view/View;

    .line 1629
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1631
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 1632
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_0

    .line 1634
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    .line 1637
    .restart local v1    # "height":I
    :goto_0
    new-instance v2, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1638
    .local v2, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1640
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    return-object v2
.end method

.method private greylist-max-o createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;

    .line 1652
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1654
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 1655
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_0

    .line 1657
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    .line 1660
    .restart local v1    # "height":I
    :goto_0
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1661
    .local v2, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1662
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1663
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1665
    return-object v2
.end method

.method private greylist-max-o dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .line 2370
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2374
    :cond_0
    if-eqz p2, :cond_1

    .line 2375
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2380
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2381
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 2382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2383
    return-void
.end method

.method private greylist-max-o getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 2768
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2769
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2768
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 2770
    .local v0, "appWindowView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2771
    return-object v0

    .line 2773
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getTransition(I)Landroid/transition/Transition;
    .locals 3
    .param p1, "resId"    # I

    .line 577
    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    .line 578
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 579
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 580
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_1

    .line 581
    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    .line 582
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 583
    .local v2, "isEmpty":Z
    :goto_0
    if-nez v2, :cond_1

    .line 584
    return-object v1

    .line 588
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    .end local v2    # "isEmpty":Z
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 1944
    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1948
    :cond_0
    const/4 v0, 0x0

    .line 1949
    .local v0, "isWindowPopupOutsideBound":Z
    const/4 v1, 0x0

    .line 1951
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1952
    .local v2, "vlp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    instance-of v3, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_2

    .line 1953
    move-object v1, v2

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1955
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    move v0, v3

    .line 1958
    :cond_2
    const/4 v3, 0x0

    .line 1959
    .local v3, "hasStatusBar":Z
    if-eqz v1, :cond_4

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_4

    .line 1960
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v7

    .line 1961
    .local v6, "systemUiVisibility":I
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_3

    and-int/lit16 v7, v6, 0x404

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    move v3, v4

    .line 1965
    .end local v6    # "systemUiVisibility":I
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1966
    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    if-eqz v0, :cond_7

    .line 1968
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1969
    .local v6, "dm":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1970
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1972
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1973
    if-eqz v3, :cond_5

    iget v5, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    :cond_5
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1974
    iget v5, v7, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1975
    iget v5, v7, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1977
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->NAVIBAR_ENABLED:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_6

    .line 1978
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1979
    .local v5, "orientation":I
    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    .line 1980
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 1983
    .end local v5    # "orientation":I
    .end local v6    # "dm":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    :cond_6
    goto :goto_2

    .line 1984
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1990
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_8

    .line 1991
    iget v5, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1994
    :cond_8
    :goto_2
    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1995
    return-void

    .line 1945
    .end local v0    # "isWindowPopupOutsideBound":Z
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "hasStatusBar":Z
    .end local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_9
    :goto_3
    return-void
.end method

.method private greylist-max-p invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1678
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1682
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1683
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1685
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1687
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    .line 1690
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1692
    :cond_1
    return-void
.end method

.method private greylist-max-o positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    .line 2094
    const/4 v0, 0x1

    .line 2097
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 2098
    .local v1, "winOffsetX":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2100
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, p2

    .line 2101
    .local v2, "right":I
    if-le v2, p6, :cond_0

    .line 2103
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2106
    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, p5, :cond_2

    .line 2109
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2111
    sub-int v3, p6, p5

    .line 2112
    .local v3, "displayFrameWidth":I
    if-eqz p7, :cond_1

    if-le p2, v3, :cond_1

    .line 2113
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 2115
    :cond_1
    const/4 v0, 0x0

    .line 2119
    .end local v3    # "displayFrameWidth":I
    :cond_2
    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2121
    return v0
.end method

.method private greylist-max-o positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    .line 2043
    const/4 v0, 0x1

    .line 2045
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 2046
    .local v1, "winOffsetY":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2047
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2049
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    .line 2050
    .local v2, "bottom":I
    if-le v2, p6, :cond_0

    .line 2052
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2055
    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, p5, :cond_2

    .line 2058
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2060
    sub-int v3, p6, p5

    .line 2061
    .local v3, "displayFrameHeight":I
    if-eqz p7, :cond_1

    if-le p2, v3, :cond_1

    .line 2062
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 2064
    :cond_1
    const/4 v0, 0x0

    .line 2068
    .end local v3    # "displayFrameHeight":I
    :cond_2
    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2070
    return v0
.end method

.method private greylist preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1566
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    .line 1571
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 1572
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x1040b38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1577
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_1

    .line 1578
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1583
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1584
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1585
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1587
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_3

    .line 1588
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    .line 1592
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1595
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1596
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1599
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_4

    .line 1600
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    .line 1601
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_1

    .line 1604
    :cond_4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    .line 1610
    :goto_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1612
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1613
    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1616
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    if-eqz v0, :cond_6

    .line 1617
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1620
    :cond_6
    return-void

    .line 1567
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setLayoutDirectionFromAnchor()V
    .locals 3

    .line 1695
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1698
    .local v0, "anchor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 1700
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1701
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1704
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private greylist-max-o tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 15
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    .line 2076
    sub-int v8, p6, p5

    .line 2077
    .local v8, "winOffsetX":I
    move-object/from16 v9, p1

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v10, v0, v8

    .line 2078
    .local v10, "anchorLeftInScreen":I
    sub-int v11, p8, v10

    .line 2079
    .local v11, "spaceRight":I
    const/4 v12, 0x1

    move/from16 v13, p7

    if-lt v10, v13, :cond_0

    move/from16 v14, p3

    if-gt v14, v11, :cond_1

    .line 2080
    return v12

    .line 2079
    :cond_0
    move/from16 v14, p3

    .line 2083
    :cond_1
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2085
    return v12

    .line 2088
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 19
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    .line 2001
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    sub-int v14, p6, v11

    .line 2002
    .local v14, "winOffsetY":I
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v15, v0, v14

    .line 2003
    .local v15, "anchorTopInScreen":I
    sub-int v7, v13, v15

    .line 2004
    .local v7, "spaceBelow":I
    const/16 v16, 0x1

    if-lt v15, v12, :cond_0

    if-gt v10, v7, :cond_0

    .line 2005
    return v16

    .line 2008
    :cond_0
    sub-int v0, v15, p4

    sub-int v6, v0, v12

    .line 2009
    .local v6, "spaceAbove":I
    if-gt v10, v6, :cond_4

    .line 2011
    iget-boolean v0, v8, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_2

    .line 2012
    if-gt v11, v13, :cond_4

    .line 2014
    iget-boolean v0, v8, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_1

    .line 2015
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_0

    .line 2014
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_1
    move/from16 v0, p2

    .line 2017
    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_0
    sub-int v1, v11, v10

    add-int/2addr v1, v0

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2018
    return v16

    .line 2023
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_2
    iget-boolean v0, v8, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_3

    .line 2024
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    goto :goto_1

    .line 2023
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_3
    move/from16 v0, p2

    .line 2026
    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_1
    sub-int v1, v11, v10

    add-int/2addr v1, v0

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2027
    return v16

    .line 2032
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v17, v6

    .end local v6    # "spaceAbove":I
    .local v17, "spaceAbove":I
    move/from16 v6, p8

    move/from16 v18, v7

    .end local v7    # "spaceBelow":I
    .local v18, "spaceBelow":I
    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2034
    return v16

    .line 2037
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 2
    .param p1, "onBackInvokedDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 2317
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2318
    .local v0, "backCallback":Landroid/window/OnBackInvokedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2319
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2320
    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2323
    :cond_0
    return-void
.end method

.method private greylist-max-o update(Landroid/view/View;ZIIII)V
    .locals 23
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 2627
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 2631
    :cond_0
    iget-object v13, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2632
    .local v13, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget v14, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2634
    .local v14, "gravity":I
    const/16 v16, 0x0

    if-eqz p2, :cond_2

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v0, v11, :cond_1

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v0, v12, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move/from16 v0, v16

    :goto_0
    move/from16 v17, v0

    .line 2635
    .local v17, "needsUpdate":Z
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    if-eqz v17, :cond_3

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 2637
    :cond_3
    if-eqz v17, :cond_5

    .line 2639
    iput v11, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2640
    iput v12, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 2636
    :cond_4
    :goto_1
    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2643
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2644
    .local v8, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2645
    .local v7, "oldGravity":I
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2646
    .local v6, "oldWidth":I
    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2647
    .local v5, "oldHeight":I
    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2648
    .local v4, "oldX":I
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2652
    .local v3, "oldY":I
    if-gez p5, :cond_6

    .line 2653
    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v18, v0

    .end local p5    # "width":I
    .local v0, "width":I
    goto :goto_3

    .line 2652
    .end local v0    # "width":I
    .restart local p5    # "width":I
    :cond_6
    move/from16 v18, p5

    .line 2655
    .end local p5    # "width":I
    .local v18, "width":I
    :goto_3
    if-gez p6, :cond_7

    .line 2656
    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v19, v0

    .end local p6    # "height":I
    .local v0, "height":I
    goto :goto_4

    .line 2655
    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_7
    move/from16 v19, p6

    .line 2659
    .end local p6    # "height":I
    .local v19, "height":I
    :goto_4
    iget v2, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v1, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object v2, v8

    move v15, v3

    .end local v3    # "oldY":I
    .local v15, "oldY":I
    move/from16 v3, v22

    move v10, v4

    .end local v4    # "oldX":I
    .local v10, "oldX":I
    move/from16 v4, v21

    move v11, v5

    .end local v5    # "oldHeight":I
    .local v11, "oldHeight":I
    move/from16 v5, v18

    move v12, v6

    .end local v6    # "oldWidth":I
    .local v12, "oldWidth":I
    move/from16 v6, v19

    move-object/from16 v21, v13

    move v13, v7

    .end local v7    # "oldGravity":I
    .local v13, "oldGravity":I
    .local v21, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move v7, v14

    move/from16 v22, v14

    move-object v14, v8

    .end local v8    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v14, "p":Landroid/view/WindowManager$LayoutParams;
    .local v22, "gravity":I
    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v6

    .line 2661
    .local v6, "aboveAnchor":Z
    invoke-virtual {v9, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2663
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v11, v0, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v5, v16

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v5, 0x1

    .line 2670
    .local v5, "paramsChanged":Z
    :goto_6
    if-gez v18, :cond_a

    move/from16 v3, v18

    goto :goto_7

    :cond_a
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    move v3, v0

    .line 2671
    .local v3, "newWidth":I
    :goto_7
    if-gez v19, :cond_b

    move/from16 v4, v19

    goto :goto_8

    :cond_b
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    move v4, v0

    .line 2672
    .local v4, "newHeight":I
    :goto_8
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2673
    return-void

    .line 2628
    .end local v3    # "newWidth":I
    .end local v4    # "newHeight":I
    .end local v5    # "paramsChanged":Z
    .end local v6    # "aboveAnchor":Z
    .end local v10    # "oldX":I
    .end local v11    # "oldHeight":I
    .end local v12    # "oldWidth":I
    .end local v13    # "oldGravity":I
    .end local v14    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "oldY":I
    .end local v17    # "needsUpdate":Z
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v21    # "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v22    # "gravity":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 2707
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2709
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2710
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2711
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2713
    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2715
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2716
    .local v1, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2717
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2719
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2720
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2721
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2722
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2724
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2725
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2726
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2727
    return-void
.end method

.method protected greylist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1725
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1731
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1732
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1733
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1734
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1735
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1736
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1738
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1739
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1741
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1744
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    .line 1745
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1747
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1750
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    .line 1751
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 1753
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1756
    :goto_2
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1759
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1765
    return-object v0
.end method

.method protected greylist-max-o detachFromAnchor()V
    .locals 4

    .line 2687
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 2688
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2689
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2690
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2691
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2694
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 2695
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    .line 2696
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2697
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2700
    :cond_2
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2701
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2702
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2703
    return-void
.end method

.method public whitelist dismiss()V
    .locals 9

    .line 2247
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2251
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2252
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2254
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2257
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2258
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 2259
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_0

    .line 2261
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    :cond_1
    const/4 v3, 0x0

    .line 2265
    .restart local v3    # "contentHolder":Landroid/view/ViewGroup;
    :goto_0
    if-nez v0, :cond_2

    .line 2266
    return-void

    .line 2271
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 2273
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 2274
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2281
    iget-object v4, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2282
    .local v4, "exitTransition":Landroid/transition/Transition;
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_5

    .line 2285
    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2286
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2287
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2288
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2289
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2291
    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 2292
    .local v6, "anchorRoot":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    .line 2297
    .local v7, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v0, v3, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 2304
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "anchorRoot":Landroid/view/View;
    .end local v7    # "epicenter":Landroid/graphics/Rect;
    goto :goto_2

    .line 2305
    :cond_5
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2309
    :goto_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2311
    iget-object v5, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v5, :cond_6

    .line 2312
    invoke-interface {v5}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2314
    :cond_6
    return-void

    .line 2248
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "contentParent":Landroid/view/ViewParent;
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_7
    :goto_3
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 31
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 1849
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1850
    .local v13, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1851
    .local v14, "anchorWidth":I
    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 1852
    sub-int v0, p4, v13

    move v15, v0

    .end local p4    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_0

    .line 1851
    .end local v0    # "yOffset":I
    .restart local p4    # "yOffset":I
    :cond_0
    move/from16 v15, p4

    .line 1856
    .end local p4    # "yOffset":I
    .local v15, "yOffset":I
    :goto_0
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1857
    .local v9, "appScreenLocation":[I
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 1858
    .local v8, "appRootView":Landroid/view/View;
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1860
    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1861
    .local v7, "screenLocation":[I
    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1863
    iget-object v6, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1864
    .local v6, "drawingLocation":[I
    const/16 v16, 0x0

    aget v0, v7, v16

    aget v1, v9, v16

    sub-int/2addr v0, v1

    aput v0, v6, v16

    .line 1865
    const/4 v5, 0x1

    aget v0, v7, v5

    aget v1, v9, v5

    sub-int/2addr v0, v1

    aput v0, v6, v5

    .line 1866
    aget v0, v6, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1867
    aget v0, v6, v5

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1869
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 1871
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-direct {v10, v8, v4}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1873
    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_1

    .line 1874
    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    move v3, v1

    .end local p5    # "width":I
    .local v1, "width":I
    goto :goto_1

    .line 1873
    .end local v1    # "width":I
    .restart local p5    # "width":I
    :cond_1
    move v3, v1

    .line 1876
    .end local p5    # "width":I
    .local v3, "width":I
    :goto_1
    move/from16 v1, p6

    if-ne v1, v0, :cond_2

    .line 1877
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    move v2, v0

    .end local p6    # "height":I
    .local v0, "height":I
    goto :goto_2

    .line 1876
    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_2
    move v2, v1

    .line 1881
    .end local p6    # "height":I
    .local v2, "height":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v0

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1882
    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1883
    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1887
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 1889
    .local v0, "hgrav":I
    move-object/from16 p4, v9

    .end local v9    # "appScreenLocation":[I
    .local p4, "appScreenLocation":[I
    const/4 v9, 0x5

    if-ne v0, v9, :cond_3

    .line 1890
    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v17, v3, v14

    sub-int v9, v9, v17

    iput v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1894
    :cond_3
    aget v9, v6, v5

    aget v17, v7, v5

    move-object/from16 v18, v7

    .end local v7    # "screenLocation":[I
    .local v18, "screenLocation":[I
    iget v7, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v19, v8

    .end local v8    # "appRootView":Landroid/view/View;
    .local v19, "appRootView":Landroid/view/View;
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    const/16 v20, 0x0

    move v10, v0

    .end local v0    # "hgrav":I
    .local v10, "hgrav":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v21, v2

    .end local v2    # "height":I
    .local v21, "height":I
    move v2, v15

    move/from16 v22, v3

    .end local v3    # "width":I
    .local v22, "width":I
    move/from16 v3, v21

    move/from16 p6, v10

    move-object v10, v4

    .end local v4    # "displayFrame":Landroid/graphics/Rect;
    .local v10, "displayFrame":Landroid/graphics/Rect;
    .local p6, "hgrav":I
    move v4, v13

    move v12, v5

    move v5, v9

    move-object/from16 v23, v6

    .end local v6    # "drawingLocation":[I
    .local v23, "drawingLocation":[I
    move/from16 v6, v17

    move-object/from16 v9, v18

    .end local v18    # "screenLocation":[I
    .local v9, "screenLocation":[I
    move-object/from16 v17, v19

    .end local v19    # "appRootView":Landroid/view/View;
    .local v17, "appRootView":Landroid/view/View;
    move-object/from16 v18, p4

    move-object v12, v9

    .end local v9    # "screenLocation":[I
    .end local p4    # "appScreenLocation":[I
    .local v12, "screenLocation":[I
    .local v18, "appScreenLocation":[I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v20

    .line 1899
    .local v20, "fitsVertical":Z
    aget v5, v23, v16

    aget v6, v12, v16

    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x0

    move/from16 v2, p3

    move/from16 v3, v22

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v25

    .line 1904
    .local v25, "fitsHorizontal":Z
    if-eqz v20, :cond_5

    if-nez v25, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v11, p0

    move/from16 v26, p6

    move/from16 v30, v13

    const/16 v19, 0x1

    move-object/from16 v13, p2

    goto/16 :goto_5

    .line 1905
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1906
    .local v9, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 1907
    .local v8, "scrollY":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, v9, v22

    add-int v3, v3, p3

    add-int v2, v8, v21

    add-int/2addr v2, v13

    add-int/2addr v2, v15

    invoke-direct {v0, v9, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    .line 1909
    .local v7, "r":Landroid/graphics/Rect;
    if-eqz p8, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v11, v7, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1911
    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1912
    aget v1, v12, v16

    aget v2, v18, v16

    sub-int/2addr v1, v2

    aput v1, v23, v16

    .line 1913
    aget v1, v12, v0

    aget v2, v18, v0

    sub-int/2addr v1, v2

    aput v1, v23, v0

    .line 1914
    aget v1, v23, v16

    add-int v1, v1, p3

    move-object/from16 v6, p2

    move/from16 v19, v0

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1915
    aget v0, v23, v19

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1918
    move/from16 v0, p6

    const/4 v1, 0x5

    .end local p6    # "hgrav":I
    .restart local v0    # "hgrav":I
    if-ne v0, v1, :cond_8

    .line 1919
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v22, v14

    sub-int/2addr v1, v3

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    .line 1909
    .end local v0    # "hgrav":I
    .restart local p6    # "hgrav":I
    :cond_6
    move-object/from16 v6, p2

    move/from16 v19, v0

    move/from16 v0, p6

    goto :goto_4

    :cond_7
    move-object/from16 v6, p2

    move/from16 v0, p6

    const/16 v19, 0x1

    .line 1924
    .end local p6    # "hgrav":I
    .restart local v0    # "hgrav":I
    :cond_8
    :goto_4
    aget v5, v23, v19

    aget v24, v12, v19

    iget v4, v10, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    move/from16 v26, v0

    .end local v0    # "hgrav":I
    .local v26, "hgrav":I
    iget-boolean v1, v2, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, p2

    move-object v11, v2

    move v2, v15

    move/from16 v28, v3

    move/from16 v3, v21

    move/from16 v29, v4

    move v4, v13

    move/from16 v30, v13

    move-object v13, v6

    .end local v13    # "anchorHeight":I
    .local v30, "anchorHeight":I
    move/from16 v6, v24

    move-object/from16 v24, v7

    .end local v7    # "r":Landroid/graphics/Rect;
    .local v24, "r":Landroid/graphics/Rect;
    move/from16 v7, v29

    move/from16 v29, v8

    .end local v8    # "scrollY":I
    .local v29, "scrollY":I
    move/from16 v8, v28

    move/from16 v28, v9

    .end local v9    # "scrollX":I
    .local v28, "scrollX":I
    move/from16 v9, v27

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1926
    aget v5, v23, v16

    aget v6, v12, v16

    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v11, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v2, p3

    move/from16 v3, v22

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1939
    .end local v24    # "r":Landroid/graphics/Rect;
    .end local v28    # "scrollX":I
    .end local v29    # "scrollY":I
    :goto_5
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v23, v19

    if-ge v0, v1, :cond_9

    move/from16 v16, v19

    :cond_9
    return v16
.end method

.method protected final greylist-max-o getAllowScrollingAnchorParent()Z
    .locals 1

    .line 1016
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected greylist-max-o getAnchor()Landroid/view/View;
    .locals 1

    .line 2731
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .locals 1

    .line 680
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 2587
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .locals 1

    .line 660
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 512
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2

    .line 554
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 1247
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .locals 1

    .line 811
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 2135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .line 2150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 2170
    const/4 v0, 0x0

    .line 2171
    .local v0, "displayFrame":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2173
    .local v1, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2174
    .local v2, "appView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2175
    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 2180
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v4

    .line 2181
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 2182
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2183
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2184
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 2188
    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->NAVIBAR_ENABLED:Z

    if-eqz v4, :cond_3

    .line 2189
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2190
    .local v4, "orientation":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 2191
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2193
    .end local v4    # "orientation":I
    :cond_0
    goto :goto_1

    .line 2196
    :cond_1
    move-object v0, v1

    .line 2201
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2202
    .local v4, "vlp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 2203
    move-object v5, v4

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2205
    .local v5, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v7

    .line 2206
    .local v6, "systemUiVisibility":I
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_2

    and-int/lit16 v7, v6, 0x404

    if-nez v7, :cond_2

    move v7, v3

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 2209
    .local v7, "hasStatusBar":Z
    :goto_0
    if-eqz v7, :cond_3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_3

    .line 2210
    iget v8, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 2216
    .end local v4    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "systemUiVisibility":I
    .end local v7    # "hasStatusBar":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 2217
    .local v4, "anchorPos":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2219
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2222
    .local v5, "bottomEdge":I
    iget-boolean v6, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v6, :cond_4

    .line 2223
    aget v6, v4, v3

    sub-int v6, v5, v6

    sub-int/2addr v6, p2

    .local v6, "distanceToBottom":I
    goto :goto_2

    .line 2225
    .end local v6    # "distanceToBottom":I
    :cond_4
    aget v6, v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v5, v6

    sub-int/2addr v6, p2

    .line 2227
    .restart local v6    # "distanceToBottom":I
    :goto_2
    aget v3, v4, v3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    add-int/2addr v3, p2

    .line 2230
    .local v3, "distanceToTop":I
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2231
    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 2232
    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2233
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 2236
    :cond_5
    return v7
.end method

.method protected final greylist-max-o getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .line 2396
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public whitelist getOverlapAnchor()Z
    .locals 1

    .line 1325
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public whitelist getSoftInputMode()I
    .locals 1

    .line 853
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final greylist-max-o getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 8

    .line 2338
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2339
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2340
    .local v2, "decor":Landroid/view/View;
    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 2344
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 2345
    .local v1, "anchorLocation":[I
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v3

    .line 2348
    .local v3, "popupLocation":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2349
    .local v4, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v3, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v6, v3, v6

    sub-int/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2352
    iget-object v5, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    .line 2353
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 2354
    .local v5, "offsetX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 2355
    .local v6, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2356
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2359
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_2
    return-object v4

    .line 2341
    .end local v1    # "anchorLocation":[I
    .end local v3    # "popupLocation":[I
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 1279
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public whitelist getWindowLayoutType()I
    .locals 1

    .line 1174
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected greylist-max-o hasContentView()Z
    .locals 1

    .line 2577
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected greylist-max-o hasDecorView()Z
    .locals 1

    .line 2582
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAboveAnchor()Z
    .locals 1

    .line 1554
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public whitelist isAttachedInDecor()Z
    .locals 1

    .line 1113
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public greylist isClipToScreenEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippedToScreen()Z
    .locals 1

    .line 985
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippingEnabled()Z
    .locals 1

    .line 927
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public whitelist isFocusable()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public whitelist isLaidOutInScreen()Z
    .locals 1

    .line 1087
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public greylist isLayoutInScreenEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1061
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final greylist-max-o isLayoutInsetDecor()Z
    .locals 1

    .line 1152
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public whitelist isOutsideTouchable()Z
    .locals 1

    .line 895
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .locals 1

    .line 1334
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public whitelist isSplitTouchEnabled()Z
    .locals 4

    .line 1027
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 1028
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1030
    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public whitelist isTouchModal()Z
    .locals 1

    .line 1186
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isTouchable()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final greylist-max-o isTransitioningToDismiss()Z
    .locals 1

    .line 1354
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-widget-PopupWindow(Landroid/view/View;IIIIIIII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 286
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->alignToAnchor(IIIIIIII)V

    return-void
.end method

.method blacklist semIsAvailableBlurBackground()Z
    .locals 1

    .line 3071
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist semShowPopupWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1504
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1509
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1514
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1515
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1516
    return-void

    .line 1505
    :cond_1
    :goto_0
    return-void
.end method

.method greylist setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1011
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 1012
    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .line 712
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 713
    return-void
.end method

.method public whitelist setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1129
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 1131
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    .line 614
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 625
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 626
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 629
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result v1

    .line 633
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 634
    .local v2, "count":I
    const/4 v3, -0x1

    .line 635
    .local v3, "belowAnchorStateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 636
    if-eq v4, v1, :cond_0

    .line 637
    move v3, v4

    .line 638
    goto :goto_1

    .line 635
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 644
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    if-eq v3, v4, :cond_2

    .line 645
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 648
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 649
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 652
    .end local v0    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "belowAnchorStateIndex":I
    :cond_3
    :goto_2
    return-void
.end method

.method public greylist setClipToScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 973
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 974
    return-void
.end method

.method public whitelist setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 945
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 946
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .line 738
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    return-void

    .line 742
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 744
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 748
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 756
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v1, :cond_4

    .line 760
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 764
    :cond_4
    return-void
.end method

.method public blacklist setDecorViewBGNull(Z)V
    .locals 0
    .param p1, "isNull"    # Z

    .line 3078
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDecorViewBGNull:Z

    .line 3079
    return-void
.end method

.method protected final greylist-max-o setDropDown(Z)V
    .locals 0
    .param p1, "isDropDown"    # Z

    .line 1344
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1345
    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 671
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 672
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 500
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 501
    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 573
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 574
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 523
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 524
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .line 802
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 803
    return-void
.end method

.method public whitelist setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 1265
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1266
    return-void
.end method

.method public whitelist setIgnoreCheekPress()V
    .locals 1

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 696
    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 828
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 829
    return-void
.end method

.method public whitelist setIsClippedToScreen(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1000
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 1001
    return-void
.end method

.method public whitelist setIsLaidOutInScreen(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1100
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1101
    return-void
.end method

.method public greylist setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1075
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1076
    return-void
.end method

.method public greylist setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1147
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 1148
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 2391
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2392
    return-void
.end method

.method public whitelist setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .line 916
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 917
    return-void
.end method

.method public whitelist setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    .line 1313
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1314
    return-void
.end method

.method protected final greylist-max-o setShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .line 1339
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1340
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 842
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 843
    return-void
.end method

.method public whitelist setSplitTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1047
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 1048
    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 771
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 772
    return-void
.end method

.method public whitelist setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .line 1203
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1204
    return-void
.end method

.method public whitelist setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .line 883
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 884
    return-void
.end method

.method protected final greylist-max-o setTransitioningToDismiss(Z)V
    .locals 0
    .param p1, "transitioningToDismiss"    # Z

    .line 1349
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1350
    return-void
.end method

.method public whitelist setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 1297
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1298
    return-void
.end method

.method public whitelist setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1232
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1233
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1234
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .line 1165
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 1166
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1424
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 1444
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1445
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1468
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1472
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1474
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1477
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1479
    nop

    .line 1480
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1481
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1483
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 1485
    .local v1, "aboveAnchor":Z
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1486
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1488
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1489
    return-void

    .line 1469
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "aboveAnchor":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public greylist showAtLocation(Landroid/os/IBinder;III)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1389
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1395
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1399
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1401
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1402
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1404
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1405
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1407
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1408
    return-void

    .line 1390
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1372
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1373
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1374
    return-void
.end method

.method public whitelist update()V
    .locals 6

    .line 2416
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2420
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2422
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 2424
    .local v1, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 2425
    .local v2, "newAnim":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1

    .line 2426
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2427
    const/4 v1, 0x1

    .line 2430
    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 2431
    .local v3, "newFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2

    .line 2432
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2433
    const/4 v1, 0x1

    .line 2436
    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v4

    .line 2437
    .local v4, "newGravity":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_3

    .line 2438
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2439
    const/4 v1, 0x1

    .line 2442
    :cond_3
    if-eqz v1, :cond_5

    .line 2443
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v5, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2445
    :cond_5
    return-void

    .line 2417
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "update":Z
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .end local v4    # "newGravity":I
    :cond_6
    :goto_1
    return-void
.end method

.method public whitelist update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2463
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2464
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2465
    return-void
.end method

.method public whitelist update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 2480
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2481
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .line 2499
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v3, :cond_0

    .line 2500
    iput v3, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2501
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2504
    :cond_0
    if-ltz v4, :cond_1

    .line 2505
    iput v4, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2506
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2509
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 2513
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2515
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v6, p5

    .line 2517
    .local v6, "update":Z
    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_3

    goto :goto_0

    :cond_3
    iget v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2518
    .local v7, "finalWidth":I
    :goto_0
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v7, :cond_4

    .line 2519
    iput v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2520
    const/4 v6, 0x1

    .line 2523
    :cond_4
    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_5

    goto :goto_1

    :cond_5
    iget v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2524
    .local v9, "finalHeight":I
    :goto_1
    if-eq v4, v8, :cond_6

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v9, :cond_6

    .line 2525
    iput v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2526
    const/4 v6, 0x1

    .line 2529
    :cond_6
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, v1, :cond_7

    .line 2530
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2531
    const/4 v6, 0x1

    .line 2534
    :cond_7
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, v2, :cond_8

    .line 2535
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2536
    const/4 v6, 0x1

    .line 2539
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v8

    .line 2540
    .local v8, "newAnim":I
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v8, v10, :cond_9

    .line 2541
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2542
    const/4 v6, 0x1

    .line 2545
    :cond_9
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v10

    .line 2546
    .local v10, "newFlags":I
    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v10, v11, :cond_a

    .line 2547
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2548
    const/4 v6, 0x1

    .line 2551
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v11

    .line 2552
    .local v11, "newGravity":I
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v11, v12, :cond_b

    .line 2553
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2554
    const/4 v6, 0x1

    .line 2557
    :cond_b
    const/4 v12, 0x0

    .line 2558
    .local v12, "anchor":Landroid/view/View;
    const/4 v13, -0x1

    .line 2560
    .local v13, "newAccessibilityIdOfAnchor":I
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 2561
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Landroid/view/View;

    .line 2562
    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v13

    .line 2565
    :cond_c
    int-to-long v14, v13

    iget-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_d

    .line 2566
    int-to-long v1, v13

    iput-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2567
    const/4 v6, 0x1

    .line 2570
    :cond_d
    if-eqz v6, :cond_e

    .line 2571
    invoke-virtual {v0, v12, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2573
    :cond_e
    return-void

    .line 2510
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "update":Z
    .end local v7    # "finalWidth":I
    .end local v8    # "newAnim":I
    .end local v9    # "finalHeight":I
    .end local v10    # "newFlags":I
    .end local v11    # "newGravity":I
    .end local v12    # "anchor":Landroid/view/View;
    .end local v13    # "newAccessibilityIdOfAnchor":I
    :cond_f
    :goto_2
    return-void
.end method

.method public whitelist update(Landroid/view/View;II)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2601
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2602
    return-void
.end method

.method public whitelist update(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 2621
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2622
    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2449
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2450
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2451
    return-void
.end method

.method protected final greylist updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .line 1522
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    .line 1523
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1525
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1529
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1530
    if-eqz p1, :cond_0

    .line 1531
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1533
    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1536
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 1540
    :cond_2
    :goto_0
    return-void
.end method
