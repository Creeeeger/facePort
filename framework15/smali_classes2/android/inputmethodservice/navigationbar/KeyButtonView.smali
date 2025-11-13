.class public Landroid/inputmethodservice/navigationbar/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# static fields
.field public static final blacklist QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mCode:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDownTime:J

.field private blacklist mGestureAborted:Z

.field private blacklist mHasOvalBg:Z

.field private blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOvalBgPaint:Landroid/graphics/Paint;

.field private final blacklist mPlaySounds:Z

.field private final blacklist mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mTracking:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x4

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    nop

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setClickable(Z)V

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const v2, 0x105021a

    invoke-direct {v1, p1, p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->forceHasOverlappingRendering(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1020377
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 2

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private blacklist sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method private blacklist sendEvent(IIJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_4

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v12, v3

    goto :goto_0

    :cond_0
    move v12, v4

    :goto_0
    new-instance v2, Landroid/view/KeyEvent;

    iget-wide v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iget v11, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    or-int/lit8 v5, v1, 0x2

    or-int/lit8 v16, v5, 0x40

    const/16 v17, 0x101

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v5, v2

    move-wide/from16 v8, p3

    move/from16 v10, p1

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    :cond_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/KeyEvent;->setDisplayId(I)V

    :cond_2
    iget-object v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/inputmethodservice/InputMethodService;

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v6, v3, v2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    move v3, v7

    :goto_2
    if-nez v3, :cond_4

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, v2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist isClickable()Z
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    :cond_0
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    return v2

    :cond_1
    const/16 v3, 0x20

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v2, :cond_9

    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v6

    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_2

    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_9

    :cond_2
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result v5

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v2

    :goto_0
    if-eqz v6, :cond_4

    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    :cond_4
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v7, :cond_7

    if-eqz v5, :cond_6

    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x200

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_9

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_3

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    iget v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v3, :cond_8

    iget-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    :goto_2
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    nop

    :cond_9
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6

    const/16 v0, 0x10

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v3, v3, v4, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    return v2

    :cond_1
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_3

    const/16 v0, 0x80

    invoke-direct {p0, v3, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist playSoundEffect(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public blacklist setCode(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 2

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->invalidate()V

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V

    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
