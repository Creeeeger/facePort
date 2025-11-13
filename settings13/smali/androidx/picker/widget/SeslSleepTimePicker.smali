.class public Landroidx/picker/widget/SeslSleepTimePicker;
.super Landroid/widget/LinearLayout;
.source "SeslSleepTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;
    }
.end annotation


# instance fields
.field private final CENTER_LAYOUT_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mBedTimeCenterIcon:Landroid/widget/ImageView;

.field private mBedTimeCenterIconRight:Landroid/widget/ImageView;

.field private mBedTimeCenterTextLeftAmPm:Landroid/widget/TextView;

.field private mBedTimeCenterTextRightAmPm:Landroid/widget/TextView;

.field private mBedTimeInMinute:F

.field private mBedTimeTargetLayout:Landroid/widget/LinearLayout;

.field private mBedTimeTargetText:Landroid/widget/TextView;

.field private mBedTimeText:Landroid/widget/TextView;

.field private mBedTimeTextLeftAmPm:Landroid/widget/TextView;

.field private mBedTimeTextRightAmPm:Landroid/widget/TextView;

.field private mBedTimeTopIcon:Landroid/widget/ImageView;

.field private mBedTimeTopIconRight:Landroid/widget/ImageView;

.field private mBedTimeView:Landroid/widget/LinearLayout;

.field private mCircularSeekBar:Landroidx/picker/widget/SeslCircularSeekBarView;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

.field private mOnSleepTimeChangedListener:Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

.field private mSleepDuration:Landroid/widget/TextView;

.field private mSleepInnerCircleContainer:Landroid/widget/FrameLayout;

.field private mSleepOuterCircleContainer:Landroid/widget/RelativeLayout;

.field private mSleepTimePickerFrame:Landroid/widget/FrameLayout;

.field private mWakeUpBottomIcon:Landroid/widget/ImageView;

.field private mWakeUpBottomIconRight:Landroid/widget/ImageView;

.field private mWakeUpCenterIcon:Landroid/widget/ImageView;

.field private mWakeUpCenterIconRight:Landroid/widget/ImageView;

.field private mWakeUpTimeCenterTextLeftAmPm:Landroid/widget/TextView;

.field private mWakeUpTimeCenterTextRightAmPm:Landroid/widget/TextView;

.field private mWakeUpTimeInMinute:F

.field private mWakeUpTimeTargetLayout:Landroid/widget/LinearLayout;

.field private mWakeUpTimeTargetText:Landroid/widget/TextView;

.field private mWakeUpTimeText:Landroid/widget/TextView;

.field private mWakeUpTimeTextLeftAmPm:Landroid/widget/TextView;

.field private mWakeUpTimeTextRightAmPm:Landroid/widget/TextView;

.field private mWakeUpTimeView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->CENTER_LAYOUT_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 89
    iput-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Landroidx/picker/R$layout;->sesl_sleep_time_picker:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->init()V

    return-void
.end method

.method static synthetic access$002(Landroidx/picker/widget/SeslSleepTimePicker;F)F
    .locals 0

    .line 40
    iput p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    return p1
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslSleepTimePicker;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateBedTimeText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslSleepTimePicker;->animateCenter(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslSleepTimePicker;->reverseAnimateCenter(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V

    return-void
.end method

.method static synthetic access$1502(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 40
    iput-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mOnSleepTimeChangedListener:Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/picker/widget/SeslSleepTimePicker;F)F
    .locals 0

    .line 40
    iput p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    return p1
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslSleepTimePicker;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateWakeUpTimeText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslSleepTimePicker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setSleepTimeDurationText()V

    return-void
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->getPrimaryColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Landroidx/picker/widget/SeslSleepTimePicker;->animateText([Landroid/widget/TextView;IIJ)V

    return-void
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private animateCenter(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V
    .locals 11

    .line 368
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->cancelCurrentAnimator()V

    .line 369
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 371
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSleepTimePicker;->getBoundingRectangle(Landroid/widget/LinearLayout;)Landroid/graphics/Rect;

    move-result-object v0

    .line 372
    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->getBoundingRectangle(Landroid/widget/LinearLayout;)Landroid/graphics/Rect;

    move-result-object v1

    .line 373
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 374
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 375
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput p4, v3, v6

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v7, 0x190

    invoke-virtual {p4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 376
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0xc8

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 377
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v2, [F

    fill-array-data v9, :array_1

    invoke-static {p1, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x42

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 378
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v4

    aput v5, v2, v6

    invoke-static {p2, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 379
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 380
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 381
    invoke-virtual {v2, p4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 382
    iget-object p4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->CENTER_LAYOUT_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    new-instance p4, Landroidx/picker/widget/SeslSleepTimePicker$2;

    invoke-direct {p4, p0, p2, p3, p1}, Landroidx/picker/widget/SeslSleepTimePicker$2;-><init>(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 400
    iput-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCurrentAnimator:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateText([Landroid/widget/TextView;IIJ)V
    .locals 8

    .line 446
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 447
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 448
    invoke-virtual {v4, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    new-instance v5, Landroidx/picker/widget/SeslSleepTimePicker$4;

    invoke-direct {v5, p0, v3}, Landroidx/picker/widget/SeslSleepTimePicker$4;-><init>(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelCurrentAnimator()V
    .locals 0

    .line 474
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 475
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private convertToAngle(F)F
    .locals 1

    const/high16 p0, 0x43b40000    # 360.0f

    sub-float/2addr p1, p0

    const/high16 v0, 0x44b40000    # 1440.0f

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    return p1
.end method

.method private getBoundingRectangle(Landroid/widget/LinearLayout;)Landroid/graphics/Rect;
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 440
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 441
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getPrimaryColor()I
    .locals 3

    .line 460
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 461
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroidx/picker/R$attr;->colorPrimary:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 462
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private getTimeTextString(II)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 513
    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz p0, :cond_1

    .line 515
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 516
    rem-int/lit8 p1, p1, 0x18

    invoke-static {p1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toDigitString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {p1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object p0

    .line 520
    :goto_0
    invoke-static {p2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 522
    :cond_1
    rem-int/lit8 p0, p1, 0xc

    const/16 v1, 0xc

    if-nez p0, :cond_4

    .line 523
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v5, "ja"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 524
    invoke-static {v3}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toDigitString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 525
    :cond_2
    invoke-static {v3}, Landroidx/picker/util/SeslSleepTimePickerUtil;->getHourFormatData(Z)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 526
    invoke-static {v1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 528
    :cond_3
    invoke-static {v1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toDigitString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 531
    :cond_4
    invoke-static {v3}, Landroidx/picker/util/SeslSleepTimePickerUtil;->getHourFormatData(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 532
    invoke-static {p0}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 534
    :cond_5
    invoke-static {p0}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toDigitString(I)Ljava/lang/String;

    move-result-object p0

    .line 538
    :goto_1
    invoke-static {p2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->toTwoDigitString(I)Ljava/lang/String;

    move-result-object p2

    .line 539
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    if-lt p1, v1, :cond_6

    .line 542
    aget-object v4, v5, v2

    goto :goto_2

    .line 544
    :cond_6
    aget-object v4, v5, v3

    :cond_7
    :goto_2
    move-object p1, p2

    :goto_3
    aput-object p0, v0, v3

    aput-object p1, v0, v2

    const/4 p0, 0x2

    aput-object v4, v0, p0

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 118
    sget v0, Landroidx/picker/R$id;->circular_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslCircularSeekBarView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCircularSeekBar:Landroidx/picker/widget/SeslCircularSeekBarView;

    .line 119
    sget v0, Landroidx/picker/R$id;->sleep_top_center_duration_bedtime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    .line 120
    sget v0, Landroidx/picker/R$id;->sleep_bottom_center_duration_wakeuptime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    .line 121
    sget v0, Landroidx/picker/R$id;->bedtime_am_pm_left:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextLeftAmPm:Landroid/widget/TextView;

    .line 122
    sget v0, Landroidx/picker/R$id;->bedtime_am_pm_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextRightAmPm:Landroid/widget/TextView;

    .line 123
    sget v0, Landroidx/picker/R$id;->bedtime_center_am_pm_left:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    .line 124
    sget v0, Landroidx/picker/R$id;->bedtime_center_am_pm_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextRightAmPm:Landroid/widget/TextView;

    .line 125
    sget v0, Landroidx/picker/R$id;->wakeuptime_am_pm_left:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextLeftAmPm:Landroid/widget/TextView;

    .line 126
    sget v0, Landroidx/picker/R$id;->wakeuptime_am_pm_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextRightAmPm:Landroid/widget/TextView;

    .line 127
    sget v0, Landroidx/picker/R$id;->wakeuptime_center_am_pm_left:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    .line 128
    sget v0, Landroidx/picker/R$id;->wakeuptime_center_am_pm_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextRightAmPm:Landroid/widget/TextView;

    .line 129
    sget v0, Landroidx/picker/R$id;->sleep_record_center_bedtime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetLayout:Landroid/widget/LinearLayout;

    .line 130
    sget v0, Landroidx/picker/R$id;->sleep_center_duration_bedtime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    .line 131
    sget v0, Landroidx/picker/R$id;->sleep_record_center_wakeuptime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetLayout:Landroid/widget/LinearLayout;

    .line 132
    sget v0, Landroidx/picker/R$id;->sleep_center_duration_wakeuptime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    .line 133
    sget v0, Landroidx/picker/R$id;->sleep_duration_text_id:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepDuration:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 135
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v0, v1, v2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->setLargeTextSize(Landroid/content/Context;[Landroid/widget/TextView;F)V

    .line 136
    sget v0, Landroidx/picker/R$id;->sleep_bottom_center_duration_wakeupimage:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIcon:Landroid/widget/ImageView;

    .line 137
    sget v0, Landroidx/picker/R$id;->sleep_bottom_center_duration_wakeupimage_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIconRight:Landroid/widget/ImageView;

    .line 138
    sget v0, Landroidx/picker/R$id;->sleep_top_center_duration_bedimage:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIcon:Landroid/widget/ImageView;

    .line 139
    sget v0, Landroidx/picker/R$id;->sleep_top_center_duration_bedimage_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIconRight:Landroid/widget/ImageView;

    .line 140
    sget v0, Landroidx/picker/R$id;->sleep_center_icon_wakeuptime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIcon:Landroid/widget/ImageView;

    .line 141
    sget v0, Landroidx/picker/R$id;->sleep_center_icon_bedtime:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIcon:Landroid/widget/ImageView;

    .line 142
    sget v0, Landroidx/picker/R$id;->sleep_center_icon_wakeuptime_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIconRight:Landroid/widget/ImageView;

    .line 143
    sget v0, Landroidx/picker/R$id;->sleep_center_icon_bedtime_right:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIconRight:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    sget v2, Landroidx/picker/R$color;->sesl_bed_wakeup_time_icon_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIconRight:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIconRight:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 150
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIconRight:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIconRight:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 153
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 154
    sget v0, Landroidx/picker/R$id;->sleep_record_top_bed_time_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeView:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Landroidx/picker/R$id;->sleep_record_bottom_wakeup_time_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeView:Landroid/widget/LinearLayout;

    .line 156
    sget v0, Landroidx/picker/R$id;->sleep_visual_edit_outer_circle_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepOuterCircleContainer:Landroid/widget/RelativeLayout;

    .line 157
    sget v0, Landroidx/picker/R$id;->sleep_visual_edit_inner_circle_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepInnerCircleContainer:Landroid/widget/FrameLayout;

    .line 158
    sget v0, Landroidx/picker/R$id;->sleepTimePicker:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepTimePickerFrame:Landroid/widget/FrameLayout;

    .line 159
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->initListeners()V

    const/high16 v0, 0x44a50000    # 1320.0f

    .line 160
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSleepTimePicker;->setBedTimeInMinute(F)V

    const/high16 v0, 0x43d20000    # 420.0f

    .line 161
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSleepTimePicker;->setWakeUpTimeInMinute(F)V

    return-void
.end method

.method private initListeners()V
    .locals 9

    const/4 v0, 0x3

    new-array v6, v0, [Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v6, v3

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextRightAmPm:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v1, v6, v4

    new-array v5, v0, [Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    aput-object v1, v5, v2

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    aput-object v1, v5, v3

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextRightAmPm:Landroid/widget/TextView;

    aput-object v1, v5, v4

    new-array v7, v0, [Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    aput-object v1, v7, v2

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextLeftAmPm:Landroid/widget/TextView;

    aput-object v1, v7, v3

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextRightAmPm:Landroid/widget/TextView;

    aput-object v1, v7, v4

    new-array v0, v0, [Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextLeftAmPm:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextRightAmPm:Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 169
    new-instance v8, Landroidx/picker/widget/SeslSleepTimePicker$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker$1;-><init>(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;)V

    iput-object v8, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    .line 269
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCircularSeekBar:Landroidx/picker/widget/SeslCircularSeekBarView;

    invoke-virtual {p0, v8}, Landroidx/picker/widget/SeslCircularSeekBarView;->setOnSeekBarChangeListener(Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;)V

    return-void
.end method

.method private initSleepTimePickerData()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    .line 274
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSleepTimePicker;->setSleepOuterCircleContainerSize(F)V

    .line 275
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setInnerCircleContainerSize()V

    .line 276
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeTextSize()V

    .line 277
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeTypeFace()V

    .line 278
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSleepTimePicker;->setSleepTimePickerFrameSize(F)V

    .line 279
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateWakeUpTimeText()Z

    .line 280
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateWakeUpTimePointer()V

    .line 281
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateBedTimeText()Z

    .line 282
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateBedTimePointer()V

    .line 283
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setSleepTimeDurationText()V

    .line 284
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->updateWakeUpBedTimeIcon()V

    .line 285
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCircularSeekBar:Landroidx/picker/widget/SeslCircularSeekBarView;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->startRevealAnimation()V

    return-void
.end method

.method private reverseAnimateCenter(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V
    .locals 10

    .line 404
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->cancelCurrentAnimator()V

    .line 405
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 406
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 407
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSleepTimePicker;->getBoundingRectangle(Landroid/widget/LinearLayout;)Landroid/graphics/Rect;

    move-result-object v0

    .line 408
    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->getBoundingRectangle(Landroid/widget/LinearLayout;)Landroid/graphics/Rect;

    move-result-object v1

    .line 409
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 410
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p4, v3, v4

    const/4 p4, 0x1

    const/4 v5, 0x0

    aput v5, v3, p4

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x190

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 411
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    invoke-static {p3, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 412
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v5, v2, v4

    neg-float v0, v0

    aput v0, v2, p4

    invoke-static {p1, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 413
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 414
    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 415
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 416
    iget-object p4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->CENTER_LAYOUT_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    new-instance p4, Landroidx/picker/widget/SeslSleepTimePicker$3;

    invoke-direct {p4, p0, p2, p3, p1}, Landroidx/picker/widget/SeslSleepTimePicker$3;-><init>(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 435
    iput-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCurrentAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBedTimeIconVisibility()V
    .locals 4

    .line 718
    invoke-static {}, Landroidx/picker/util/SeslSleepTimePickerUtil;->isLeftAmPm()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 719
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setBedTimeTextVisibility(IIII)V
    .locals 1

    .line 361
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setInnerCircleContainerSize()V
    .locals 5

    .line 299
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$dimen;->sesl_sleep_time_pointer_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 300
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$dimen;->sesl_sleep_time_icon_touch_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 304
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    .line 305
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v2, v2

    .line 306
    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 307
    invoke-static {v2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->needBedTimePickerAdjustment(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_min_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v2

    :cond_0
    sub-float/2addr v1, v0

    sub-float/2addr v3, v0

    .line 312
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 313
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 314
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/picker/R$dimen;->sesl_time_picker_inner_circle_container_ratio:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 315
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float/2addr v0, v1

    .line 316
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepInnerCircleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    .line 317
    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 318
    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void
.end method

.method private setSleepOuterCircleContainerSize(F)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 290
    invoke-static {p1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->needBedTimePickerAdjustment(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_min_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v0, p1

    .line 293
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepOuterCircleContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 295
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    return-void
.end method

.method private setSleepTimeDurationText()V
    .locals 7

    .line 611
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 612
    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    iget v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x44b40000    # 1440.0f

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_4

    .line 614
    rem-int/lit8 v5, v1, 0x3c

    .line 615
    div-int/2addr v1, v2

    if-eqz v5, :cond_3

    if-eq v5, v4, :cond_1

    if-ne v1, v4, :cond_0

    .line 629
    sget v1, Landroidx/picker/R$string;->sesl_sleep_duration_in_one_hour_minutes:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_0
    sget v2, Landroidx/picker/R$string;->sesl_sleep_duration_in_hours_minutes:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 622
    sget v1, Landroidx/picker/R$string;->sesl_sleep_duration_one_hour_one_minute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_2
    sget v2, Landroidx/picker/R$string;->sesl_sleep_duration_in_hours_one_minute:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :cond_3
    sget v2, Landroidx/picker/R$plurals;->sesl_sleep_duration_in_hour_plurals:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-le v1, v4, :cond_5

    .line 635
    sget v2, Landroidx/picker/R$plurals;->sesl_sleep_duration_in_min_plurals:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, ""

    .line 637
    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepDuration:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSleepTimePickerFrameSize(F)V
    .locals 2

    .line 740
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 741
    invoke-static {p1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->needBedTimePickerAdjustment(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 742
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_min_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v0, p1

    .line 744
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepTimePickerFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 745
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 746
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V
    .locals 1

    .line 605
    sget p0, Landroidx/picker/R$dimen;->sesl_sleep_record_bed_image_icon_size:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 606
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private setTimeTextSize()V
    .locals 3

    .line 572
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 574
    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x122

    if-ge v1, v2, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    .line 575
    invoke-direct {p0, v0, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeTextSizeRatio(Landroid/content/res/Resources;F)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 577
    invoke-direct {p0, v0, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeTextSizeRatio(Landroid/content/res/Resources;F)V

    :goto_0
    return-void
.end method

.method private setTimeTextSizeRatio(Landroid/content/res/Resources;F)V
    .locals 5

    .line 582
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    sget v1, Landroidx/picker/R$dimen;->sesl_sleep_time_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 583
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 584
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 585
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 586
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextLeftAmPm:Landroid/widget/TextView;

    sget v1, Landroidx/picker/R$dimen;->sesl_sleep_time_am_pm_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 587
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 588
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 589
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 591
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 592
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 593
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 594
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 595
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpBottomIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 596
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 597
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpCenterIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 598
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 599
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTopIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 600
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    .line 601
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterIconRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeIconSize(Landroid/content/res/Resources;Landroid/view/ViewGroup$LayoutParams;F)V

    return-void
.end method

.method private setTimeTypeFace()V
    .locals 4

    .line 557
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/picker/util/SeslSleepTimePickerUtil;->getFontFromOpenTheme(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v1, "roboto-num3L"

    const/4 v2, 0x0

    .line 560
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimeTypeFace exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SleepTimePicker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 566
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 567
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 568
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 5

    float-to-int p1, p1

    .line 485
    div-int/lit8 v0, p1, 0x3c

    .line 486
    rem-int/lit8 p1, p1, 0x3c

    .line 487
    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslSleepTimePicker;->getTimeTextString(II)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 488
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 489
    aget-object v2, p1, v1

    const/4 v3, 0x2

    .line 490
    aget-object p1, p1, v3

    .line 491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "h"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/picker/util/SeslSleepTimePickerUtil;->getTimeSeparatorText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 493
    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 494
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    .line 496
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private setWakeUpTimeTextVisibility(IIII)V
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextRightAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextLeftAmPm:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateBedTimePointer()V
    .locals 2

    .line 466
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCircularSeekBar:Landroidx/picker/widget/SeslCircularSeekBarView;

    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->convertToAngle(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setBedTimePosition(F)V

    return-void
.end method

.method private updateBedTimeText()Z
    .locals 9

    .line 345
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 346
    invoke-static {}, Landroidx/picker/util/SeslSleepTimePickerUtil;->isLeftAmPm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0, v1, v1, v2, v2}, Landroidx/picker/widget/SeslSleepTimePicker;->setBedTimeTextVisibility(IIII)V

    .line 348
    iget v4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    iget-object v5, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextLeftAmPm:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    iget-object v8, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    return p0

    .line 350
    :cond_0
    invoke-direct {p0, v2, v2, v1, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->setBedTimeTextVisibility(IIII)V

    .line 351
    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTextRightAmPm:Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeCenterTextRightAmPm:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    return p0

    .line 354
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->setBedTimeTextVisibility(IIII)V

    .line 355
    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeText:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeTargetText:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method private updateWakeUpBedTimeIcon()V
    .locals 0

    .line 714
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setBedTimeIconVisibility()V

    return-void
.end method

.method private updateWakeUpTimePointer()V
    .locals 2

    .line 470
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mCircularSeekBar:Landroidx/picker/widget/SeslCircularSeekBarView;

    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->convertToAngle(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setWakeUpTimePosition(F)V

    return-void
.end method

.method private updateWakeUpTimeText()Z
    .locals 9

    .line 322
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 323
    invoke-static {}, Landroidx/picker/util/SeslSleepTimePickerUtil;->isLeftAmPm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0, v1, v1, v2, v2}, Landroidx/picker/widget/SeslSleepTimePicker;->setWakeUpTimeTextVisibility(IIII)V

    .line 325
    iget v4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    iget-object v5, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextLeftAmPm:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    iget-object v8, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextLeftAmPm:Landroid/widget/TextView;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    return p0

    .line 327
    :cond_0
    invoke-direct {p0, v2, v2, v1, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->setWakeUpTimeTextVisibility(IIII)V

    .line 328
    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTextRightAmPm:Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeCenterTextRightAmPm:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    return p0

    .line 331
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Landroidx/picker/widget/SeslSleepTimePicker;->setWakeUpTimeTextVisibility(IIII)V

    .line 332
    iget v1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeText:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeTargetText:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeViewInTimePicker(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getBedTimeInMinute()F
    .locals 0

    .line 678
    iget p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    return p0
.end method

.method public getBedTimeView()Landroid/widget/LinearLayout;
    .locals 0

    .line 755
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getWakeUpTimeInMinute()F
    .locals 0

    .line 699
    iget p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    return p0
.end method

.method public getWakeUpTimeView()Landroid/widget/LinearLayout;
    .locals 0

    .line 764
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 804
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 805
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    .line 806
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSleepTimePicker;->setSleepOuterCircleContainerSize(F)V

    .line 807
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setInnerCircleContainerSize()V

    .line 808
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeTextSize()V

    .line 809
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->setTimeTypeFace()V

    .line 810
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSleepTimePicker;->setSleepTimePickerFrameSize(F)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 825
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "PARENT"

    .line 826
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 827
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "mBedTime"

    .line 828
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    const-string v0, "mWakeUpTime"

    .line 829
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    .line 830
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->initSleepTimePickerData()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 815
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 816
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARENT"

    .line 817
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 818
    iget v0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    const-string v2, "mBedTime"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 819
    iget p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    const-string v0, "mWakeUpTime"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v1
.end method

.method public setBedTimeInMinute(F)V
    .locals 0

    .line 688
    iput p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mBedTimeInMinute:F

    .line 689
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->initSleepTimePickerData()V

    return-void
.end method

.method public setOnSleepTimeChangeListener(Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;)V
    .locals 0

    .line 790
    iput-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mOnSleepTimeChangedListener:Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    return-void
.end method

.method public setSleepDurationTextStyle(I)V
    .locals 0

    .line 799
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mSleepDuration:Landroid/widget/TextView;

    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setWakeUpTimeInMinute(F)V
    .locals 0

    .line 709
    iput p1, p0, Landroidx/picker/widget/SeslSleepTimePicker;->mWakeUpTimeInMinute:F

    .line 710
    invoke-direct {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->initSleepTimePickerData()V

    return-void
.end method
