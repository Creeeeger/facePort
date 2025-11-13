.class public Lcom/samsung/android/widget/SemTipPopup;
.super Ljava/lang/Object;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemTipPopup$TipWindow;,
        Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;,
        Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DURATION_BOUNCE_SCALE1:I = 0xa7

.field private static final blacklist ANIMATION_DURATION_BOUNCE_SCALE2:I = 0xfa

.field private static final blacklist ANIMATION_DURATION_DISMISS_ALPHA:I = 0xa6

.field private static final blacklist ANIMATION_DURATION_DISMISS_SCALE:I = 0xa6

.field private static final blacklist ANIMATION_DURATION_EXPAND_ALPHA:I = 0x53

.field private static final blacklist ANIMATION_DURATION_EXPAND_SCALE:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_EXPAND_TEXT:I = 0xa7

.field private static final blacklist ANIMATION_DURATION_SHOW_SCALE:I = 0x1f4

.field private static final blacklist ANIMATION_OFFSET_BOUNCE_SCALE:I = 0xbb8

.field private static final blacklist ANIMATION_OFFSET_EXPAND_TEXT:I = 0x64

.field public static final whitelist DIRECTION_BOTTOM_LEFT:I = 0x2

.field public static final whitelist DIRECTION_BOTTOM_RIGHT:I = 0x3

.field public static final whitelist DIRECTION_DEFAULT:I = -0x1

.field public static final whitelist DIRECTION_TOP_LEFT:I = 0x0

.field public static final whitelist DIRECTION_TOP_RIGHT:I = 0x1

.field private static blacklist INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator; = null

.field private static blacklist INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator; = null

.field private static blacklist INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator; = null

.field private static blacklist INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator; = null

.field public static final whitelist MODE_NORMAL:I = 0x0

.field public static final whitelist MODE_TRANSLUCENT:I = 0x1

.field private static final blacklist MSG_DISMISS:I = 0x1

.field private static final blacklist MSG_SCALE_UP:I = 0x2

.field private static final blacklist MSG_TIMEOUT:I = 0x0

.field public static final whitelist STATE_DISMISSED:I = 0x0

.field public static final whitelist STATE_EXPANDED:I = 0x2

.field public static final whitelist STATE_HINT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemTipPopup"

.field private static final blacklist TIMEOUT_DURATION_MS:I = 0x1bbc

.field private static final blacklist TYPE_BALLOON_ACTION:I = 0x1

.field private static final blacklist TYPE_BALLOON_CUSTOM:I = 0x2

.field private static final blacklist TYPE_BALLOON_SIMPLE:I = 0x0

.field private static final blacklist localLOGD:Z = true

.field private static blacklist mHandler:Landroid/os/Handler;


# instance fields
.field private blacklist mActionClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mActionText:Ljava/lang/CharSequence;

.field private blacklist mActionTextColor:Ljava/lang/Integer;

.field private final blacklist mActionView:Landroid/widget/Button;

.field private blacklist mArrowDirection:I

.field private final blacklist mArrowHeight:I

.field private blacklist mArrowPositionX:I

.field private blacklist mArrowPositionY:I

.field private final blacklist mArrowWidth:I

.field private blacklist mBackgroundColor:I

.field private blacklist mBalloonBg1:Landroid/widget/ImageView;

.field private blacklist mBalloonBg2:Landroid/widget/ImageView;

.field private blacklist mBalloonBubble:Landroid/widget/FrameLayout;

.field private blacklist mBalloonBubbleHint:Landroid/widget/ImageView;

.field private blacklist mBalloonBubbleIcon:Landroid/widget/ImageView;

.field private blacklist mBalloonContent:Landroid/widget/FrameLayout;

.field private blacklist mBalloonHeight:I

.field private blacklist mBalloonPanel:Landroid/widget/FrameLayout;

.field private blacklist mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

.field private blacklist mBalloonPopupX:I

.field private blacklist mBalloonPopupY:I

.field private final blacklist mBalloonView:Landroid/view/View;

.field private blacklist mBalloonWidth:I

.field private blacklist mBalloonX:I

.field private blacklist mBalloonY:I

.field private blacklist mBorderColor:Ljava/lang/Integer;

.field private blacklist mBubbleBackground:Landroid/widget/ImageView;

.field private blacklist mBubbleHeight:I

.field private blacklist mBubbleIcon:Landroid/widget/ImageView;

.field private blacklist mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

.field private blacklist mBubblePopupX:I

.field private blacklist mBubblePopupY:I

.field private final blacklist mBubbleView:Landroid/view/View;

.field private blacklist mBubbleWidth:I

.field private blacklist mBubbleX:I

.field private blacklist mBubbleY:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mForceRealDisplay:Z

.field private blacklist mHintDescription:Ljava/lang/CharSequence;

.field private final blacklist mHorizontalTextMargin:I

.field private blacklist mInitialmMessageViewWidth:I

.field private blacklist mIsDefaultPosition:Z

.field private blacklist mIsMessageViewMeasured:Z

.field private blacklist mMessageText:Ljava/lang/CharSequence;

.field private blacklist mMessageTextColor:Ljava/lang/Integer;

.field private final blacklist mMessageView:Landroid/widget/TextView;

.field private final blacklist mMode:I

.field private blacklist mNeedToCallParentViewsOnClick:Z

.field private blacklist mOnDismissListener:Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;

.field private blacklist mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

.field private final blacklist mParentView:Landroid/view/View;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mScaleMargin:I

.field private blacklist mSideMargin:I

.field private blacklist mState:I

.field private blacklist mType:I

.field private final blacklist mVerticalTextMargin:I

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionClickListener(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBalloonBubble(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBalloonPanel(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBalloonPopup(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBalloonPopupX(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBalloonPopupY(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBubbleView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/widget/SemTipPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedToCallParentViewsOnClick(Lcom/samsung/android/widget/SemTipPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mNeedToCallParentViewsOnClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/samsung/android/widget/SemTipPopup;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manimateBounce(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateBounce()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manimateScaleUp(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateScaleUp()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissBubble(Lcom/samsung/android/widget/SemTipPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismissBubble(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleTimeout(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->scheduleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINTERPOLATOR_ELASTIC_CUSTOM()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINTERPOLATOR_SINE_IN_OUT_33()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 109
    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 110
    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    .line 111
    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    .line 288
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;I)V
    .locals 9
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "mode"    # I

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    .line 209
    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    .line 210
    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    .line 211
    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 212
    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    .line 213
    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    .line 214
    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    .line 255
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewWidth:I

    .line 256
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsMessageViewMeasured:Z

    .line 271
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    .line 274
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mNeedToCallParentViewsOnClick:Z

    .line 299
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    .line 304
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    .line 305
    const-string/jumbo v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 307
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDisplayMetrics = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 310
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    .line 311
    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    .line 313
    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    .line 316
    sget-object v5, Lcom/android/internal/R$styleable;->SemTipPopup:[I

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 317
    .local v5, "a":Landroid/content/res/TypedArray;
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    .line 318
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->initInterpolator()V

    .line 324
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 325
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109017d

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    .line 326
    const v3, 0x109017c

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    .line 329
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;->initBubblePopup(I)V

    .line 332
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;->initBalloonPopup(I)V

    .line 335
    const v6, 0x1020591

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    .line 336
    const v7, 0x1020587

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    .line 338
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    const/4 v8, -0x1

    iput v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    .line 343
    iput v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    .line 344
    iput v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    .line 345
    iput v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    .line 347
    if-ne p2, v0, :cond_0

    .line 348
    nop

    .line 349
    const v0, 0x10603a3

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 348
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    nop

    .line 351
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 350
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 354
    :cond_0
    const v0, 0x10504b0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    .line 355
    const v0, 0x10504b1

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    .line 357
    const v0, 0x10504a0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    .line 358
    const v0, 0x10504a1

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    .line 360
    const v0, 0x10504a5

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    .line 361
    const v0, 0x10504a6

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$1;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$2;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 400
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemTipPopup$3;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 407
    return-void

    .line 300
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SmartTip mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mode can either be 0 (MODE_NORMAL) or 1 (MODE_TRANSLUCENT)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist animateBounce()V
    .locals 17

    .line 1520
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1521
    .local v1, "pivotX":F
    const/4 v2, 0x0

    .line 1523
    .local v2, "pivotY":F
    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1525
    :pswitch_0
    const/4 v1, 0x0

    .line 1526
    const/4 v2, 0x0

    .line 1527
    goto :goto_0

    .line 1529
    :pswitch_1
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 1530
    const/4 v2, 0x0

    .line 1531
    goto :goto_0

    .line 1533
    :pswitch_2
    const/4 v1, 0x0

    .line 1534
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 1535
    goto :goto_0

    .line 1537
    :pswitch_3
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 1538
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 1541
    :goto_0
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v12, v3

    .line 1543
    .local v12, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v13

    move v9, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1545
    .local v13, "anim1":Landroid/view/animation/Animation;
    const-wide/16 v14, 0xa7

    invoke-virtual {v13, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1546
    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1548
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f553f7d    # 0.833f

    const v7, 0x3f553f7d    # 0.833f

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1550
    .local v3, "anim2":Landroid/view/animation/Animation;
    invoke-virtual {v3, v14, v15}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1551
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1552
    sget-object v4, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1553
    new-instance v4, Lcom/samsung/android/widget/SemTipPopup$10;

    invoke-direct {v4, v0, v12}, Lcom/samsung/android/widget/SemTipPopup$10;-><init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1572
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1573
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1574
    const-wide/16 v4, 0xbb8

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1576
    iget-object v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1577
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist animateScaleUp()V
    .locals 28

    .line 1580
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1581
    .local v1, "deltaHintY":F
    const/4 v2, 0x0

    .line 1582
    .local v2, "pivotHintX":F
    const/4 v3, 0x0

    .line 1583
    .local v3, "pivotHintY":F
    const/4 v4, 0x0

    .line 1584
    .local v4, "pivotPanelX":F
    const/4 v5, 0x0

    .line 1585
    .local v5, "pivotPanelY":F
    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v7, 0x10504a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1586
    .local v6, "questionHeight":I
    const v7, 0x3fd9999a    # 1.7f

    .line 1587
    .local v7, "bubbleScale":F
    int-to-float v8, v6

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1589
    .local v8, "panelScale":F
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v15, 0x0

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1591
    :pswitch_0
    const/4 v2, 0x0

    .line 1592
    const/4 v3, 0x0

    .line 1593
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    .line 1594
    const/4 v5, 0x0

    .line 1595
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float v1, v9, v10

    .line 1596
    goto :goto_0

    .line 1598
    :pswitch_1
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v2, v9

    .line 1599
    const/4 v3, 0x0

    .line 1600
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    .line 1601
    const/4 v5, 0x0

    .line 1602
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float v1, v9, v10

    .line 1603
    goto :goto_0

    .line 1605
    :pswitch_2
    const/4 v2, 0x0

    .line 1606
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 1607
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    .line 1608
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v5, v9

    .line 1609
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float v1, v15, v9

    .line 1610
    goto :goto_0

    .line 1612
    :pswitch_3
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v2, v9

    .line 1613
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 1614
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    .line 1615
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v5, v9

    .line 1616
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float v1, v15, v9

    .line 1621
    :goto_0
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1622
    .local v9, "animationBubble":Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v11

    move/from16 v24, v1

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v14, v11

    .line 1624
    .local v14, "animationBubbleMove":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v12, 0x1f4

    invoke-virtual {v14, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1625
    sget-object v11, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1626
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3fd9999a    # 1.7f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3fd9999a    # 1.7f

    move-object/from16 v16, v11

    move/from16 v22, v2

    move/from16 v24, v3

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1628
    .local v11, "animationBubbleScale":Landroid/view/animation/Animation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1629
    sget-object v12, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1630
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1631
    .local v12, "animationBubbleAlpha":Landroid/view/animation/Animation;
    move-object/from16 v19, v11

    .end local v11    # "animationBubbleScale":Landroid/view/animation/Animation;
    .local v19, "animationBubbleScale":Landroid/view/animation/Animation;
    const-wide/16 v10, 0xa6

    invoke-virtual {v12, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1632
    sget-object v10, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1634
    invoke-virtual {v9, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1635
    move-object/from16 v11, v19

    .end local v19    # "animationBubbleScale":Landroid/view/animation/Animation;
    .restart local v11    # "animationBubbleScale":Landroid/view/animation/Animation;
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1636
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1637
    new-instance v10, Lcom/samsung/android/widget/SemTipPopup$11;

    invoke-direct {v10, v0}, Lcom/samsung/android/widget/SemTipPopup$11;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1652
    iget-object v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1655
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v13, v10

    .line 1656
    .local v13, "animationPanel":Landroid/view/animation/AnimationSet;
    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const v18, 0x3e8a3d71    # 0.27f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move-object/from16 v10, v20

    move-object/from16 v25, v11

    .end local v11    # "animationBubbleScale":Landroid/view/animation/Animation;
    .local v25, "animationBubbleScale":Landroid/view/animation/Animation;
    move/from16 v11, v18

    move-object/from16 v26, v12

    .end local v12    # "animationBubbleAlpha":Landroid/view/animation/Animation;
    .local v26, "animationBubbleAlpha":Landroid/view/animation/Animation;
    move/from16 v12, v21

    move-object/from16 v27, v13

    .end local v13    # "animationPanel":Landroid/view/animation/AnimationSet;
    .local v27, "animationPanel":Landroid/view/animation/AnimationSet;
    move v13, v8

    move-object/from16 v19, v14

    .end local v14    # "animationBubbleMove":Landroid/view/animation/TranslateAnimation;
    .local v19, "animationBubbleMove":Landroid/view/animation/TranslateAnimation;
    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v4

    move/from16 v17, v24

    move/from16 v18, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1658
    .local v10, "animationPanelScale":Landroid/view/animation/Animation;
    sget-object v11, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1659
    const-wide/16 v11, 0x1f4

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1660
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v11, v13, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1661
    .local v11, "animationPanelAlpha":Landroid/view/animation/Animation;
    sget-object v14, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1662
    const-wide/16 v14, 0x53

    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1663
    move-object/from16 v14, v27

    .end local v27    # "animationPanel":Landroid/view/animation/AnimationSet;
    .local v14, "animationPanel":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1664
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1665
    iget-object v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v14}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1668
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v15, v13, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v15

    .line 1669
    .local v12, "animationText":Landroid/view/animation/Animation;
    sget-object v13, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1670
    move v13, v1

    move v15, v2

    .end local v1    # "deltaHintY":F
    .end local v2    # "pivotHintX":F
    .local v13, "deltaHintY":F
    .local v15, "pivotHintX":F
    const-wide/16 v1, 0x64

    invoke-virtual {v12, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1671
    const-wide/16 v1, 0xa7

    invoke-virtual {v12, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1672
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$12;

    invoke-direct {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$12;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v12, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1688
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1689
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1690
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist animateViewIn()V
    .locals 12

    .line 1471
    const/4 v0, 0x0

    .line 1472
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 1474
    .local v1, "pivotY":F
    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1476
    :pswitch_0
    const/4 v0, 0x0

    .line 1477
    const/4 v1, 0x0

    .line 1478
    goto :goto_0

    .line 1480
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1481
    const/4 v1, 0x0

    .line 1482
    goto :goto_0

    .line 1484
    :pswitch_2
    const/4 v0, 0x0

    .line 1485
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1486
    goto :goto_0

    .line 1488
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1489
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1493
    :goto_0
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v2, v11

    move v8, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1495
    .local v2, "animScale":Landroid/view/animation/Animation;
    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1496
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1498
    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemTipPopup$9;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1516
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1517
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist calculateArrowDirection(II)V
    .locals 8
    .param p1, "arrowX"    # I
    .param p2, "arrowY"    # I

    .line 1240
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    if-eqz v5, :cond_3

    .line 1241
    new-array v5, v4, [I

    .line 1242
    .local v5, "location":[I
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1244
    aget v0, v5, v3

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v0, v6

    .line 1246
    .local v0, "parentY":I
    mul-int/lit8 v6, p1, 0x2

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v6, v7, :cond_1

    .line 1247
    if-gt p2, v0, :cond_0

    .line 1248
    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    .line 1250
    :cond_0
    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    .line 1253
    :cond_1
    if-gt p2, v0, :cond_2

    .line 1254
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    .line 1256
    :cond_2
    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    .line 1259
    .end local v0    # "parentY":I
    .end local v5    # "location":[I
    :goto_0
    goto :goto_1

    .line 1260
    :cond_3
    mul-int/lit8 v0, p1, 0x2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v5, :cond_4

    mul-int/lit8 v0, p2, 0x2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v5, :cond_4

    .line 1262
    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_1

    .line 1263
    :cond_4
    mul-int/lit8 v0, p1, 0x2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v2, :cond_5

    mul-int/lit8 v0, p2, 0x2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v2, :cond_5

    .line 1265
    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_1

    .line 1266
    :cond_5
    mul-int/lit8 v0, p1, 0x2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v2, :cond_6

    mul-int/lit8 v0, p2, 0x2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_6

    .line 1268
    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_1

    .line 1269
    :cond_6
    mul-int/lit8 v0, p1, 0x2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v2, :cond_7

    mul-int/lit8 v0, p2, 0x2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_7

    .line 1271
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    .line 1274
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateArrowDirection : arrow position ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") / mArrowDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method private blacklist calculateArrowPosition()V
    .locals 7

    .line 1278
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1279
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    .line 1280
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    .line 1281
    return-void

    .line 1285
    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 1286
    .local v3, "location":[I
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateArrowPosition anchor location : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x1

    aget v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1289
    aget v0, v3, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1290
    .local v0, "x":I
    aget v1, v3, v5

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v1, v5

    .line 1292
    .local v1, "y":I
    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v6, :cond_1

    .line 1293
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    sub-int v2, v1, v5

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    .line 1297
    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateArrowPosition mArrowPosition : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1299
    return-void
.end method

.method private blacklist calculatePopupPosition()V
    .locals 7

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->getDisplayFrame(Landroid/graphics/Rect;)V

    .line 1373
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gez v0, :cond_2

    .line 1374
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1377
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    div-int/2addr v4, v2

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto :goto_1

    .line 1375
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    div-int/2addr v4, v2

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    .line 1382
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const-string v4, "Target position is too far to the right!"

    const-string v5, "Target position is too far to the left!"

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 1391
    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    add-int/2addr v1, v6

    if-ge v0, v1, :cond_4

    .line 1392
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto :goto_3

    .line 1394
    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v1, v5

    if-le v0, v1, :cond_7

    .line 1395
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto :goto_3

    .line 1383
    :cond_5
    :goto_2
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v1, v6

    if-ge v0, v1, :cond_6

    .line 1384
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto :goto_3

    .line 1386
    :cond_6
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    sub-int/2addr v1, v5

    if-le v0, v1, :cond_7

    .line 1387
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    .line 1401
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v3, :cond_b

    .line 1402
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1403
    .local v0, "windowWidthInDexMode":I
    new-array v1, v2, [I

    .line 1404
    .local v1, "windowLocation":[I
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1405
    const/4 v2, 0x0

    aget v3, v1, v2

    if-gez v3, :cond_8

    .line 1406
    aget v3, v1, v2

    add-int/2addr v0, v3

    .line 1408
    :cond_8
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 1409
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto :goto_4

    .line 1410
    :cond_9
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    add-int/2addr v3, v4

    sub-int v6, v0, v5

    if-le v3, v6, :cond_a

    .line 1411
    sub-int v3, v0, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    .line 1412
    aget v4, v1, v2

    if-gez v4, :cond_a

    .line 1413
    aget v2, v1, v2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    .line 1416
    .end local v0    # "windowWidthInDexMode":I
    .end local v1    # "windowLocation":[I
    :cond_a
    :goto_4
    goto :goto_5

    .line 1417
    :cond_b
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_c

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto :goto_5

    .line 1419
    :cond_c
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_d

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    .line 1425
    :cond_d
    :goto_5
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 1427
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    .line 1428
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    .line 1429
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    .line 1430
    goto :goto_6

    .line 1432
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    .line 1433
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    .line 1434
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    .line 1435
    goto :goto_6

    .line 1437
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    .line 1438
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    .line 1439
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    .line 1440
    goto :goto_6

    .line 1442
    :pswitch_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    .line 1443
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    .line 1444
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    .line 1447
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuestionPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BalloonPopup : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1449
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist calculatePopupSize()V
    .locals 16

    .line 1303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1304
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1305
    .local v1, "screenWidthDp":I
    iget v2, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1307
    .local v2, "balloonMinWidth":I
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const v5, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3f19999a    # 0.6f

    const/16 v8, 0x500

    const v9, 0x3f547ae1    # 0.83f

    const/16 v10, 0x3c0

    const/16 v11, 0x1e0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v3, v12, :cond_4

    .line 1308
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1309
    .local v3, "windowWidthInDexMode":I
    new-array v14, v4, [I

    .line 1310
    .local v14, "windowLocation":[I
    iget-object v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1311
    aget v15, v14, v13

    if-gez v15, :cond_0

    .line 1312
    aget v15, v14, v13

    add-int/2addr v3, v15

    .line 1314
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window width in DexMode "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1315
    if-gt v3, v11, :cond_1

    .line 1316
    int-to-float v4, v3

    mul-float/2addr v4, v9

    float-to-int v4, v4

    .local v4, "balloonMaxWidth":I
    goto :goto_0

    .line 1317
    .end local v4    # "balloonMaxWidth":I
    :cond_1
    if-gt v3, v10, :cond_2

    .line 1318
    int-to-float v4, v3

    mul-float/2addr v4, v7

    float-to-int v4, v4

    .restart local v4    # "balloonMaxWidth":I
    goto :goto_0

    .line 1319
    .end local v4    # "balloonMaxWidth":I
    :cond_2
    if-gt v3, v8, :cond_3

    .line 1320
    int-to-float v4, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .restart local v4    # "balloonMaxWidth":I
    goto :goto_0

    .line 1322
    .end local v4    # "balloonMaxWidth":I
    :cond_3
    int-to-float v4, v3

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 1324
    .end local v3    # "windowWidthInDexMode":I
    .end local v14    # "windowLocation":[I
    .restart local v4    # "balloonMaxWidth":I
    :goto_0
    goto :goto_1

    .line 1325
    .end local v4    # "balloonMaxWidth":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen width DP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1326
    if-gt v1, v11, :cond_5

    .line 1327
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v4, v3

    .restart local v4    # "balloonMaxWidth":I
    goto :goto_1

    .line 1328
    .end local v4    # "balloonMaxWidth":I
    :cond_5
    if-gt v1, v10, :cond_6

    .line 1329
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v4, v3

    .restart local v4    # "balloonMaxWidth":I
    goto :goto_1

    .line 1330
    .end local v4    # "balloonMaxWidth":I
    :cond_6
    if-gt v1, v8, :cond_7

    .line 1331
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v4, v3

    .restart local v4    # "balloonMaxWidth":I
    goto :goto_1

    .line 1333
    .end local v4    # "balloonMaxWidth":I
    :cond_7
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v4, v3

    .line 1338
    .restart local v4    # "balloonMaxWidth":I
    :goto_1
    iget-boolean v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mIsMessageViewMeasured:Z

    if-nez v3, :cond_8

    .line 1339
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v13, v13}, Landroid/widget/TextView;->measure(II)V

    .line 1340
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iput v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewWidth:I

    .line 1341
    iput-boolean v12, v0, Lcom/samsung/android/widget/SemTipPopup;->mIsMessageViewMeasured:Z

    .line 1343
    :cond_8
    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewWidth:I

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v3, v6

    .line 1346
    .local v3, "balloonWidth":I
    if-ge v3, v2, :cond_9

    .line 1347
    move v3, v2

    goto :goto_2

    .line 1348
    :cond_9
    if-le v3, v4, :cond_a

    .line 1349
    move v3, v4

    .line 1353
    :cond_a
    :goto_2
    iput v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    .line 1356
    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    const/4 v7, 0x2

    mul-int/2addr v5, v7

    sub-int v5, v3, v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setWidth(I)V

    .line 1357
    iget-object v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v13, v13}, Landroid/widget/TextView;->measure(II)V

    .line 1358
    iget-object v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    .line 1359
    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    if-ne v5, v12, :cond_c

    .line 1360
    iget-object v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5, v13, v13}, Landroid/widget/Button;->measure(II)V

    .line 1361
    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 1362
    iget-object v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v7, 0x10504ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    .line 1364
    :cond_b
    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v8, 0x10504af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    .line 1367
    :cond_c
    return-void
.end method

.method private blacklist debugLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " #### "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTipPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    return-void
.end method

.method private blacklist dismissBubble(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .line 1452
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_0

    .line 1453
    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetUseDismissAnimation(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    .line 1454
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnDismissListener:Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1458
    invoke-interface {v0}, Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;->onDismiss()V

    .line 1460
    :cond_1
    return-void
.end method

.method private blacklist getDisplayFrame(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "screenRect"    # Landroid/graphics/Rect;

    .line 1717
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getNavagationbarHeight()I

    move-result v0

    .line 1718
    .local v0, "navigationbarHeight":I
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isNavigationbarHide()Z

    move-result v1

    .line 1719
    .local v1, "navigationbarHide":Z
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1721
    .local v2, "displayRotation":I
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1722
    .local v3, "realMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "realMetrics = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is tablet? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isTablet()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1726
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    const-string v5, "Screen Rect = "

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 1727
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 1728
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1729
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1730
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mForceRealDisplay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1734
    return-void

    .line 1737
    :cond_0
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 1738
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1739
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1740
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1742
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1743
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v6

    .line 1744
    .local v6, "appRootView":Landroid/view/View;
    if-nez v6, :cond_1

    .line 1745
    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 1747
    :cond_1
    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bounds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1750
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1751
    const-string/jumbo v7, "tablet"

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1752
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_9

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v8

    if-ne v7, v0, :cond_9

    .line 1753
    if-eqz v1, :cond_9

    .line 1754
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1758
    :cond_2
    const-string/jumbo v7, "phone"

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1759
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 1800
    :pswitch_0
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v7, v8

    if-ne v7, v0, :cond_4

    .line 1801
    if-eqz v1, :cond_3

    .line 1802
    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1804
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1805
    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1807
    :cond_4
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_9

    .line 1808
    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-ne v7, v0, :cond_9

    .line 1809
    const-string v7, "Left Docked"

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1810
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1811
    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1784
    :pswitch_1
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_6

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v8

    if-ne v7, v0, :cond_6

    .line 1785
    if-eqz v1, :cond_5

    .line 1786
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1788
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1789
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1791
    :cond_6
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_9

    .line 1792
    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-ne v7, v0, :cond_9

    .line 1793
    const-string v7, "Top Docked"

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1794
    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1795
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1768
    :pswitch_2
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_7

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v7, v8

    if-ne v7, v0, :cond_7

    .line 1769
    if-eqz v1, :cond_7

    .line 1770
    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 1773
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v7

    .line 1774
    .local v7, "windowInsets":Landroid/view/WindowInsets;
    if-eqz v7, :cond_9

    .line 1775
    invoke-virtual {v7}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 1776
    .local v8, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v8, :cond_8

    .line 1777
    iget v9, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p1, Landroid/graphics/Rect;->left:I

    .line 1778
    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p1, Landroid/graphics/Rect;->right:I

    .line 1779
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayCutout.getSafeInsetLeft() :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1781
    .end local v8    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_8
    goto :goto_0

    .line 1761
    .end local v7    # "windowInsets":Landroid/view/WindowInsets;
    :pswitch_3
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_9

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v8

    if-ne v7, v0, :cond_9

    .line 1762
    if-eqz v1, :cond_9

    .line 1763
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 1817
    :cond_9
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1818
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getLocale()Ljava/lang/String;
    .locals 2

    .line 1910
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNavagationbarHeight()I
    .locals 4

    .line 1698
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1699
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 1700
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 1702
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist initBalloonPopup(I)V
    .locals 10
    .param p1, "mode"    # I

    .line 459
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x102058a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    .line 460
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    .line 461
    const v1, 0x102058b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    .line 462
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    .line 463
    const v1, 0x102058c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    .line 464
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x102058e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    .line 465
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x102058d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    .line 467
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x1020588

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    .line 468
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x1020589

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    .line 470
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    const v2, 0x10809f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 473
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 474
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    const v3, 0x10809f8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 476
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 482
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow-IA;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 483
    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setFocusable(Z)V

    .line 484
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setTouchable(Z)V

    .line 485
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setAttachedInDecor(Z)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$4;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 507
    return-void
.end method

.method private blacklist initBubblePopup(I)V
    .locals 8
    .param p1, "mode"    # I

    .line 430
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x102058f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    .line 431
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x1020590

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    .line 433
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 434
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x1080a02

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string v3, "iw_IL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x1080a0a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x1080a09

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 443
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    .line 445
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    goto :goto_1

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    .line 449
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    .line 452
    :goto_1
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow-IA;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 453
    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setTouchable(Z)V

    .line 454
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setAttachedInDecor(Z)V

    .line 456
    return-void
.end method

.method private blacklist initInterpolator()V
    .locals 3

    .line 410
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const v1, 0x10c0042

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 415
    :cond_0
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const v1, 0x10c0044

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 420
    :cond_1
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 421
    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    .line 424
    :cond_2
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 425
    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    .line 427
    :cond_3
    return-void
.end method

.method private blacklist isNavigationbarHide()Z
    .locals 4

    .line 1693
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1694
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigationbar_hide_bar_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1693
    :goto_0
    return v1
.end method

.method private blacklist isRTL()Z
    .locals 2

    .line 1906
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isTablet()Z
    .locals 5

    .line 1706
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1707
    .local v0, "realMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1709
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1710
    .local v1, "shortSize":I
    :goto_0
    mul-int/lit16 v2, v1, 0xa0

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v2, v3

    .line 1711
    .local v2, "shortSizeDp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "short size dp  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1713
    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private blacklist scheduleTimeout()V
    .locals 4

    .line 1463
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1464
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1465
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1bbc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1467
    :cond_0
    return-void
.end method

.method private blacklist setBalloonPanel()V
    .locals 22

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-nez v1, :cond_0

    .line 1065
    return-void

    .line 1067
    :cond_0
    const-string/jumbo v1, "setBalloonPanel()"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1068
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v2, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int v3, v1, v2

    .line 1069
    .local v3, "leftMargin":I
    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    .line 1070
    .local v2, "rightMargin":I
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    sub-int v5, v1, v4

    .line 1071
    .local v5, "topMargin":I
    iget v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    add-int/2addr v4, v6

    iget v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    add-int/2addr v1, v6

    sub-int/2addr v4, v1

    .line 1073
    .local v4, "bottomMargin":I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1074
    .local v1, "realMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1075
    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 1076
    .local v6, "scaleFactor":I
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v8, 0x10504a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1078
    .local v7, "minBackgroundWidth":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "leftMargin["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rightMargin["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] mBalloonWidth["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1080
    iget v8, v0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    iget-object v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v11, 0x10504ae

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int/2addr v8, v10

    .line 1083
    .local v8, "horizontalContentMargin":I
    iget-object v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 1084
    iget-object v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v12, 0x10504af

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 1086
    .local v10, "verticalButtonPadding":I
    :goto_0
    iget-object v12, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    .line 1087
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1088
    .local v12, "paramBalloonBubble":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    .line 1089
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 1090
    .local v13, "paramBalloonPanel":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    .line 1091
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1092
    .local v14, "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    .line 1093
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 1094
    .local v15, "paramBalloonBg1":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    .line 1095
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1097
    .local v11, "paramBalloonBg2":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v16, v1

    .end local v1    # "realMetrics":Landroid/util/DisplayMetrics;
    .local v16, "realMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    move/from16 v17, v6

    .end local v6    # "scaleFactor":I
    .local v17, "scaleFactor":I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    .line 1098
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v6, 0x1080a02

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1099
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemTipPopup;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemTipPopup;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string v6, "iw_IL"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1101
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v6, 0x1080a0a

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1103
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v6, 0x1080a09

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1105
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1107
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v6, 0x10504ab

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1109
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v6, 0x10504a9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1111
    const/4 v6, 0x0

    .end local v17    # "scaleFactor":I
    .restart local v6    # "scaleFactor":I
    goto :goto_2

    .line 1112
    .end local v6    # "scaleFactor":I
    .restart local v17    # "scaleFactor":I
    :cond_3
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v6, 0xff

    if-ge v1, v6, :cond_4

    .line 1113
    const-string v1, "Updating scaleFactor to 0 because transparency is applied to background."

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1114
    const/4 v6, 0x0

    .end local v17    # "scaleFactor":I
    .restart local v6    # "scaleFactor":I
    goto :goto_2

    .line 1112
    .end local v6    # "scaleFactor":I
    .restart local v17    # "scaleFactor":I
    :cond_4
    move/from16 v6, v17

    .line 1117
    .end local v17    # "scaleFactor":I
    .restart local v6    # "scaleFactor":I
    :goto_2
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    move-object/from16 v17, v13

    .end local v13    # "paramBalloonPanel":Landroid/widget/FrameLayout$LayoutParams;
    .local v17, "paramBalloonPanel":Landroid/widget/FrameLayout$LayoutParams;
    const-string v13, "],  rightMargin["

    move/from16 v18, v4

    .end local v4    # "bottomMargin":I
    .local v18, "bottomMargin":I
    const-string/jumbo v4, "updated !! leftMargin["

    move/from16 v19, v5

    .end local v5    # "topMargin":I
    .local v19, "topMargin":I
    const/high16 v5, 0x43340000    # 180.0f

    packed-switch v1, :pswitch_data_0

    move-object v5, v14

    .end local v14    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .local v5, "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_8

    .line 1119
    .end local v5    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v14    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v4, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v9, v9

    invoke-static {v1, v4, v9}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1121
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_5

    .line 1122
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v4, 0x10809ff

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1123
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v4, 0x1080a03

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1125
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1127
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1128
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1129
    const/16 v1, 0x33

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1130
    const/4 v1, 0x0

    invoke-virtual {v15, v3, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1131
    sub-int v4, v2, v6

    invoke-virtual {v11, v1, v1, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1132
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    add-int/2addr v1, v4

    sub-int/2addr v4, v10

    invoke-virtual {v14, v8, v1, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1137
    move-object v5, v14

    goto/16 :goto_8

    .line 1139
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-static {v1, v4, v5}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1141
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_6

    .line 1142
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v4, 0x10809fe

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1143
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v4, 0x1080a03

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1145
    :cond_6
    const/16 v1, 0x35

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1146
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int v1, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v4, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1148
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v6

    invoke-virtual {v11, v1, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1150
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    add-int/2addr v1, v4

    sub-int/2addr v4, v10

    invoke-virtual {v14, v8, v1, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1155
    move-object v5, v14

    goto/16 :goto_8

    .line 1157
    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move/from16 v20, v8

    .end local v8    # "horizontalContentMargin":I
    .local v20, "horizontalContentMargin":I
    iget v8, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v5, v8

    iget v8, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    move-object/from16 v21, v14

    .end local v14    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .local v21, "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    add-int/2addr v14, v8

    int-to-float v8, v14

    invoke-static {v1, v5, v8}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1159
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_7

    .line 1160
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v5, 0x1080a01

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1161
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v5, 0x1080a03

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_4

    .line 1163
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1165
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1166
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1167
    const/16 v1, 0x53

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1170
    if-ge v3, v7, :cond_8

    .line 1171
    move v1, v7

    .line 1172
    .local v1, "scaledLeftMargin":I
    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    sub-int/2addr v5, v1

    .line 1173
    .local v5, "scaledRightMargin":I
    const/4 v8, 0x0

    invoke-virtual {v15, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1174
    sub-int v14, v5, v6

    invoke-virtual {v11, v8, v8, v14, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1175
    const-string v8, "Left Margin is less then minimum background width!"

    invoke-direct {v0, v8}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1177
    .end local v1    # "scaledLeftMargin":I
    .end local v5    # "scaledRightMargin":I
    goto :goto_5

    .line 1178
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v15, v3, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1179
    sub-int v4, v2, v6

    invoke-virtual {v11, v1, v1, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1181
    :goto_5
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v10

    move/from16 v8, v20

    move-object/from16 v5, v21

    .end local v20    # "horizontalContentMargin":I
    .end local v21    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .local v5, "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v8    # "horizontalContentMargin":I
    invoke-virtual {v5, v8, v1, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1186
    goto/16 :goto_8

    .line 1188
    .end local v5    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v14    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_3
    move-object v5, v14

    .end local v14    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move-object/from16 v21, v5

    .end local v5    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v14, v5

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v14, v5

    int-to-float v14, v14

    move/from16 v20, v8

    .end local v8    # "horizontalContentMargin":I
    .restart local v20    # "horizontalContentMargin":I
    iget v8, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    add-int/2addr v8, v5

    int-to-float v5, v8

    invoke-static {v1, v14, v5}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1190
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_9

    .line 1191
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v5, 0x1080a00

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1192
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v5, 0x1080a03

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_6

    .line 1194
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 1196
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 1197
    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 1198
    const/16 v1, 0x55

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1201
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int v5, v2, v1

    if-ge v5, v7, :cond_a

    .line 1202
    move v1, v7

    .line 1203
    .local v1, "scaledRightMargin":I
    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    sub-int/2addr v5, v1

    .line 1204
    .local v5, "scaledLeftMargin":I
    const/4 v8, 0x0

    invoke-virtual {v15, v8, v8, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1205
    sub-int v14, v5, v6

    invoke-virtual {v11, v14, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1206
    const-string v8, "Right Margin is less then minimum background width!"

    invoke-direct {v0, v8}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 1208
    .end local v1    # "scaledRightMargin":I
    .end local v5    # "scaledLeftMargin":I
    goto :goto_7

    .line 1209
    :cond_a
    sub-int v1, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v4, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1210
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v6

    invoke-virtual {v11, v1, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1212
    :goto_7
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v10

    move/from16 v8, v20

    move-object/from16 v5, v21

    .end local v20    # "horizontalContentMargin":I
    .end local v21    # "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .local v5, "paramBalloonContent":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v8    # "horizontalContentMargin":I
    invoke-virtual {v5, v8, v1, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1219
    :goto_8
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int v4, v3, v1

    add-int v9, v19, v1

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int v13, v2, v13

    add-int/2addr v13, v1

    add-int v1, v18, v1

    invoke-virtual {v12, v4, v9, v13, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1223
    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    .line 1224
    .local v1, "balloonPanelMargin":I
    move-object/from16 v4, v17

    .end local v17    # "paramBalloonPanel":Landroid/widget/FrameLayout$LayoutParams;
    .local v4, "paramBalloonPanel":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1226
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    sub-int/2addr v9, v13

    iput v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    .line 1227
    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    sub-int/2addr v9, v13

    iput v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    .line 1229
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v9, v13}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setWidth(I)V

    .line 1236
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v9, v13}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setHeight(I)V

    .line 1237
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setBubblePanel()V
    .locals 8

    .line 977
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-nez v0, :cond_0

    .line 978
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    .line 982
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 984
    .local v0, "paramBubblePanel":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 985
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 987
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 991
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/high16 v2, 0x43340000    # 180.0f

    const v3, 0x1080a08

    const-string v4, "iw_IL"

    const v5, 0x1080a03

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 993
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1, v6, v6}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 994
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 995
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    .line 996
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    .line 997
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x10809ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 999
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1002
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1005
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1007
    goto/16 :goto_0

    .line 1009
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v6}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1010
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1011
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    .line 1012
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    .line 1013
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_9

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x10809fe

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1015
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1016
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1018
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1023
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v1, v6, v7}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1024
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1025
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    .line 1026
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    .line 1027
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_6

    .line 1028
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x1080a01

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1029
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1030
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1032
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1035
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1037
    goto :goto_0

    .line 1039
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 1040
    invoke-virtual {v7}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 1039
    invoke-static {v1, v6, v7}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    .line 1041
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1042
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v7, v6, 0x2

    sub-int/2addr v1, v7

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    .line 1043
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    .line 1044
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_8

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x1080a00

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1046
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1047
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1049
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1052
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 1057
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setWidth(I)V

    .line 1060
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setHeight(I)V

    .line 1061
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setInternal()V
    .locals 10

    .line 830
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemTipPopup$5;-><init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 853
    :cond_1
    const v0, 0x3f99999a    # 1.2f

    .line 854
    .local v0, "maxScale":F
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 856
    .local v1, "currentFontScale":F
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x10504a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 858
    .local v2, "messageTextSize":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x105049f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 861
    .local v3, "actionTextSize":I
    cmpl-float v4, v1, v0

    const/4 v5, 0x0

    if-lez v4, :cond_2

    .line 862
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    int-to-float v6, v2

    div-float/2addr v6, v1

    float-to-double v6, v6

    .line 863
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    .line 862
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 864
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    int-to-float v6, v3

    div-float/2addr v6, v1

    float-to-double v6, v6

    .line 865
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    .line 864
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 868
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    if-nez v4, :cond_3

    goto :goto_0

    .line 874
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 875
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    invoke-virtual {v4, v6, v5}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 876
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/android/widget/SemTipPopup$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemTipPopup$6;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iput v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    goto :goto_1

    .line 870
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 871
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    .line 890
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    .line 891
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 895
    :cond_5
    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-eq v4, v6, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    goto :goto_2

    .line 901
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 902
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 904
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 905
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 907
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 908
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 909
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 910
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 911
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    if-eqz v4, :cond_9

    .line 912
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 913
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 915
    :cond_9
    return-void

    .line 898
    :cond_a
    :goto_2
    return-void

    .line 849
    .end local v0    # "maxScale":F
    .end local v1    # "currentFontScale":F
    .end local v2    # "messageTextSize":I
    .end local v3    # "actionTextSize":I
    :cond_b
    :goto_3
    return-void
.end method

.method private blacklist showInternal()V
    .locals 5

    .line 919
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 920
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    .line 921
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    if-eqz v2, :cond_0

    .line 922
    invoke-interface {v2, v0}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsShowing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_1

    .line 927
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateViewIn()V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$7;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    if-eqz v0, :cond_3

    .line 957
    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    invoke-interface {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    .line 959
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_4

    .line 960
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    .line 965
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$8;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 974
    return-void
.end method


# virtual methods
.method public whitelist dismiss(Z)V
    .locals 2
    .param p1, "withAnimation"    # Z

    .line 608
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_0

    .line 609
    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetUseDismissAnimation(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBubblePopup.mIsDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$fgetmIsDismissing(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_1

    .line 614
    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$msetUseDismissAnimation(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBalloonPopup.mIsDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$fgetmIsDismissing(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnDismissListener:Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;

    if-eqz v0, :cond_2

    .line 620
    invoke-interface {v0}, Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;->onDismiss()V

    .line 622
    :cond_2
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 623
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 624
    sput-object v1, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    .line 626
    :cond_3
    return-void
.end method

.method public whitelist isShowing()Z
    .locals 3

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "isBubbleShowing":Z
    const/4 v1, 0x0

    .line 588
    .local v1, "isBalloonShowing":Z
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->isShowing()Z

    move-result v0

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->isShowing()Z

    move-result v1

    .line 595
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public whitelist semCallParentViewsOnClick(Z)V
    .locals 0
    .param p1, "needToCall"    # Z

    .line 576
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mNeedToCallParentViewsOnClick:Z

    .line 577
    return-void
.end method

.method public blacklist semGetBalloonPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    return-object v0
.end method

.method public blacklist semGetBubblePopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    return-object v0
.end method

.method public whitelist setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "actionText"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 564
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    .line 565
    iput-object p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 566
    return-void
.end method

.method public whitelist setActionTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 762
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    .line 763
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 773
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    .line 774
    return-void
.end method

.method public blacklist setBackgroundColorWithAlpha(I)V
    .locals 0
    .param p1, "color"    # I

    .line 783
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:I

    .line 784
    return-void
.end method

.method public whitelist setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 794
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    .line 795
    return-void
.end method

.method public whitelist setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .line 636
    if-eqz p1, :cond_0

    .line 637
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x10504b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    .line 642
    :goto_0
    return-void
.end method

.method public whitelist setHintDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintDescription"    # Ljava/lang/CharSequence;

    .line 666
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    .line 667
    return-void
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 554
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    .line 555
    return-void
.end method

.method public whitelist setMessageTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 750
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    .line 751
    return-void
.end method

.method public blacklist setOnDismissListener(Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;

    .line 1827
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnDismissListener:Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;

    .line 1828
    return-void
.end method

.method public whitelist setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    .line 93
    return-void
.end method

.method public blacklist setOutsideTouchEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 804
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setFocusable(Z)V

    .line 805
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    .line 806
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setFocusable(Z)V

    .line 807
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "outside enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public blacklist setPopupWindowClippingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 818
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setClippingEnabled(Z)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setClippingEnabled(Z)V

    .line 821
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    .line 822
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x10504b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipping enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public whitelist setTargetPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 651
    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    .line 656
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    .line 657
    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    .line 658
    return-void

    .line 652
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist show(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 522
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setInternal()V

    .line 525
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    if-ne v0, v1, :cond_1

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowPosition()V

    .line 530
    :cond_1
    if-ne p1, v1, :cond_2

    .line 532
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowDirection(II)V

    goto :goto_0

    .line 534
    :cond_2
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    .line 537
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupSize()V

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupPosition()V

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBubblePanel()V

    .line 543
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBalloonPanel()V

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->showInternal()V

    .line 546
    return-void
.end method

.method public whitelist update()V
    .locals 2

    .line 683
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->update(IZ)V

    .line 684
    return-void
.end method

.method public whitelist update(IZ)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "resetHintTimer"    # Z

    .line 697
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_2

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setInternal()V

    .line 704
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    .line 705
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    .line 708
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    if-eqz v1, :cond_1

    .line 709
    const-string/jumbo v1, "update - default position"

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowPosition()V

    .line 714
    :cond_1
    if-ne p1, v0, :cond_2

    .line 716
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowDirection(II)V

    goto :goto_0

    .line 718
    :cond_2
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    .line 722
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupSize()V

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupPosition()V

    .line 725
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBubblePanel()V

    .line 726
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBalloonPanel()V

    .line 729
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v1, :cond_3

    .line 730
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 731
    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v4

    .line 730
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->update(IIII)V

    .line 732
    if-eqz p2, :cond_4

    .line 733
    const-string v0, "Timer Reset!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->scheduleTimeout()V

    goto :goto_1

    .line 736
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_4

    .line 737
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 738
    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v4

    .line 737
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->update(IIII)V

    .line 740
    :cond_4
    :goto_1
    return-void

    .line 698
    :cond_5
    :goto_2
    return-void
.end method
