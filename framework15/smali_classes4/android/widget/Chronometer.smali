.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;,
        Landroid/widget/Chronometer$RefreshProgressRunnable;,
        Landroid/widget/Chronometer$ChronometerProgressDrawable;,
        Landroid/widget/Chronometer$RefreshData;,
        Landroid/widget/Chronometer$HorizontalProgressDrawable;,
        Landroid/widget/Chronometer$CirCleProgressDrawable;
    }
.end annotation


# static fields
.field private static final greylist-max-o HOUR_IN_SEC:I = 0xe10

.field private static final blacklist MAX_LEVEL:I = 0x2710

.field private static final greylist-max-o MIN_IN_SEC:I = 0x3c

.field private static final blacklist PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field private static final blacklist SEM_MODE_CIRCLE_PROGRESS:I = 0x1

.field private static final blacklist SEM_MODE_DEFAULT:I = 0x0

.field private static final blacklist SEM_MODE_DEFAULT_KEEP_UPDATE:I = 0x2

.field private static final blacklist SEM_MODE_HORIZONTAL_PROGRESS:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private blacklist mAttached:Z

.field private greylist-max-o mBase:J

.field private blacklist mBaseTimerSeconds:J

.field private blacklist mCirclePadding:I

.field private greylist-max-o mCountDown:Z

.field private blacklist mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mFirstTimerSeconds:J

.field private greylist-max-o mFormat:Ljava/lang/String;

.field private greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private greylist-max-o mFormatter:Ljava/util/Formatter;

.field private greylist-max-o mFormatterArgs:[Ljava/lang/Object;

.field private greylist-max-o mFormatterLocale:Ljava/util/Locale;

.field private blacklist mIsFixedHourFormat:Z

.field private blacklist mIsShowingSeconds:Z

.field private greylist-max-o mLogged:Z

.field private blacklist mMaxHeight:I

.field private blacklist mMaxProgress:I

.field private blacklist mMaxWidth:I

.field private blacklist mMilliSecondCount:I

.field private blacklist mMinHeight:I

.field private blacklist mMinProgress:I

.field private blacklist mMinWidth:I

.field private blacklist mMode:I

.field private greylist-max-o mNow:J

.field private greylist-max-o mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private blacklist mOriginalBase:J

.field private blacklist mPlaySpeed:F

.field private blacklist mProgress:I

.field private blacklist mProgressAnimationDuration:I

.field private blacklist mProgressBackgroundColor:I

.field private blacklist mProgressColor:I

.field private blacklist mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mProgressWarningColor:I

.field private greylist-max-o mRecycle:Ljava/lang/StringBuilder;

.field private final blacklist mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Chronometer$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRefreshIsPosted:Z

.field private blacklist mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

.field private blacklist mRequestedTickTime:I

.field private blacklist mRoundStrokeWidth:I

.field private greylist-max-o mRunning:Z

.field private blacklist mShouldStartAnimationDrawable:Z

.field private greylist-max-o mStarted:Z

.field private final greylist-max-o mTickRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mVisible:Z

.field private blacklist mWaringTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCirclePadding(Landroid/widget/Chronometer;)I
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mCirclePadding:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxProgress(Landroid/widget/Chronometer;)I
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinProgress(Landroid/widget/Chronometer;)I
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mMinProgress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaySpeed(Landroid/widget/Chronometer;)F
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mPlaySpeed:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressAnimationDuration(Landroid/widget/Chronometer;)I
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressDrawable(Landroid/widget/Chronometer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestedTickTime(Landroid/widget/Chronometer;)I
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mRequestedTickTime:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I
    .locals 0

    iget p0, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/Chronometer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTickRunnable(Landroid/widget/Chronometer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRefreshIsPosted(Landroid/widget/Chronometer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRefreshProgress(Landroid/widget/Chronometer;IIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Chronometer;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostTickOnNextSecond(Landroid/widget/Chronometer;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Chronometer;->postTickOnNextSecond()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateText(Landroid/widget/Chronometer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROGRESS_ANIM_INTERPOLATOR()Landroid/view/animation/LinearInterpolator;
    .locals 1

    sget-object v0, Landroid/widget/Chronometer;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/Chronometer;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Chronometer;->mMode:I

    const/16 v2, 0x2710

    iput v2, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    iput v1, p0, Landroid/widget/Chronometer;->mMinProgress:I

    const v2, -0x737374

    iput v2, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    const v2, -0x7a7802

    iput v2, p0, Landroid/widget/Chronometer;->mProgressColor:I

    const v2, -0x89098

    iput v2, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    const-wide/16 v2, 0x1770

    iput-wide v2, p0, Landroid/widget/Chronometer;->mWaringTime:J

    iput-boolean v1, p0, Landroid/widget/Chronometer;->mIsFixedHourFormat:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/Chronometer;->mIsShowingSeconds:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/Chronometer;->mPlaySpeed:F

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    iput-wide v3, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    iput v0, p0, Landroid/widget/Chronometer;->mRequestedTickTime:I

    iput v1, p0, Landroid/widget/Chronometer;->mMilliSecondCount:I

    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/widget/Chronometer$1;

    invoke-direct {v0, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v5, Lcom/android/internal/R$styleable;->Chronometer:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v0

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/Chronometer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    return-void
.end method

.method private blacklist colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private declared-synchronized blacklist doRefreshProgress(IIZZ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    iget v1, p0, Landroid/widget/Chronometer;->mMinProgress:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v1, p0, Landroid/widget/Chronometer;->mMinProgress:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    instance-of v5, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    if-eqz v3, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_2
    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Chronometer;->invalidate()V

    :goto_3
    if-eqz p3, :cond_5

    invoke-virtual {p0, v1, p2}, Landroid/widget/Chronometer;->onProgressRefresh(FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static greylist-max-o formatDuration(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xe10

    if-lt v0, v3, :cond_1

    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v3, v1, 0xe10

    sub-int/2addr v0, v3

    :cond_1
    const/16 v3, 0x3c

    if-lt v0, v3, :cond_2

    div-int/lit8 v2, v0, 0x3c

    mul-int/lit8 v3, v2, 0x3c

    sub-int/2addr v0, v3

    :cond_2
    move v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez v1, :cond_3

    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez v2, :cond_4

    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v5, v6}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/icu/util/Measure;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/icu/util/Measure;

    invoke-virtual {v5, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getChronometerBackgroundDrawable()Landroid/widget/Chronometer$ChronometerProgressDrawable;
    .locals 2

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    return-object v1

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getChronometerProgressDrawable()Landroid/widget/Chronometer$ChronometerProgressDrawable;
    .locals 2

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    return-object v1

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o init()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method private blacklist initCirCleStrokeWidth()V
    .locals 1

    const/16 v0, 0x20

    iput v0, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Chronometer;->mCirclePadding:I

    return-void
.end method

.method private blacklist initializeHorizontalProgressMode()V
    .locals 8

    new-instance v0, Landroid/widget/Chronometer$HorizontalProgressDrawable;

    iget v1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    invoke-direct {p0, v1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v2, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/widget/Chronometer$HorizontalProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/widget/Chronometer$HorizontalProgressDrawable;

    iget v2, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5, v2, v4}, Landroid/widget/Chronometer$HorizontalProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    const/16 v6, 0x15

    invoke-direct {v4, v1, v6, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    const/16 v7, 0x2710

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v4, v0, v6, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v4, v2, v5

    aget-object v4, v2, v5

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/high16 v6, 0x1020000

    invoke-virtual {v4, v3, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v6, 0x102000d

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-direct {p0, v4}, Landroid/widget/Chronometer;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v3, p0, Landroid/widget/Chronometer;->mProgress:I

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/Chronometer;->mMinWidth:I

    iput v3, p0, Landroid/widget/Chronometer;->mMaxWidth:I

    const/16 v5, 0x22

    iput v5, p0, Landroid/widget/Chronometer;->mMinHeight:I

    iput v3, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    iget v3, p0, Landroid/widget/Chronometer;->mMinHeight:I

    iput v3, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    return-void
.end method

.method private blacklist initializeRoundCicleMode()V
    .locals 7

    new-instance v0, Landroid/widget/Chronometer$CirCleProgressDrawable;

    iget v1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    invoke-direct {p0, v1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v2, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/widget/Chronometer$CirCleProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/widget/Chronometer$CirCleProgressDrawable;

    iget v2, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5, v2, v4}, Landroid/widget/Chronometer$CirCleProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v3

    aput-object v0, v2, v5

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/high16 v6, 0x1020000

    invoke-virtual {v4, v3, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v6, 0x102000d

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-direct {p0, v4}, Landroid/widget/Chronometer;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v3, p0, Landroid/widget/Chronometer;->mProgress:I

    const/16 v3, 0xb4

    iput v3, p0, Landroid/widget/Chronometer;->mMinWidth:I

    iput v3, p0, Landroid/widget/Chronometer;->mMaxWidth:I

    iput v3, p0, Landroid/widget/Chronometer;->mMinHeight:I

    iput v3, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    return-void
.end method

.method private blacklist isShownForSemMode()Z
    .locals 5

    move-object v0, p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    instance-of v4, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v4, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_4

    return v3

    :cond_4
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return v2
.end method

.method private blacklist postTickOnNextSecond()V
    .locals 9

    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-boolean v2, p0, Landroid/widget/Chronometer;->mCountDown:Z

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_0

    iget-wide v5, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v5, v0

    rem-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1

    add-long/2addr v5, v3

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    rem-long/2addr v5, v3

    sub-long v5, v3, v5

    :cond_1
    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    iget-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized blacklist refreshProgress(IIZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Chronometer$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Chronometer$RefreshProgressRunnable;-><init>(Landroid/widget/Chronometer;Landroid/widget/Chronometer$RefreshProgressRunnable-IA;)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/widget/Chronometer$RefreshData;->obtain(IIZ)Landroid/widget/Chronometer$RefreshData;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mAttached:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    if-ge v1, v0, :cond_2

    iput v0, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/Chronometer;->postInvalidate()V

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateDrawableBounds(II)V

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateDrawableState()V

    const v1, 0x102000d

    iget v2, p0, Landroid/widget/Chronometer;->mProgress:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v3}, Landroid/widget/Chronometer;->doRefreshProgress(IIZZ)V

    :cond_3
    return-void
.end method

.method private declared-synchronized blacklist setProgressInternal(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/Chronometer;->mMinProgress:I

    iget v1, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    move p1, v0

    iput p1, p0, Landroid/widget/Chronometer;->mProgress:I

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    :cond_0
    instance-of v2, v0, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    invoke-virtual {v2, p1, p2}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->setProgress(IZ)V

    :cond_1
    iget v0, p0, Landroid/widget/Chronometer;->mProgress:I

    invoke-direct {p0, v1, v0, p2}, Landroid/widget/Chronometer;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private blacklist updateDrawableBounds(II)V
    .locals 6

    iget v0, p0, Landroid/widget/Chronometer;->mPaddingRight:I

    iget v1, p0, Landroid/widget/Chronometer;->mPaddingLeft:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/Chronometer;->mPaddingTop:I

    iget v1, p0, Landroid/widget/Chronometer;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    move v0, p1

    move v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private blacklist updateDrawableState()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->invalidate()V

    :cond_1
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .locals 5

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Chronometer;->isShownForSemMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    :goto_2
    iget v1, p0, Landroid/widget/Chronometer;->mRequestedTickTime:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/Chronometer;->mRequestedTickTime:I

    goto :goto_3

    :cond_3
    iget v1, p0, Landroid/widget/Chronometer;->mPlaySpeed:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v3, p0, Landroid/widget/Chronometer;->mPlaySpeed:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_3

    :cond_4
    const/16 v1, 0x3e8

    :goto_3
    iget-boolean v3, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v3, :cond_8

    if-eqz v0, :cond_7

    iget v3, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/Chronometer;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/widget/Chronometer;->updateText(J)V

    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Landroid/widget/Chronometer;->postTickOnNextSecond()V

    goto :goto_4

    :cond_7
    iget-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_4
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    :cond_8
    return-void
.end method

.method private declared-synchronized greylist-max-o updateText(J)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    :try_start_0
    iput-wide v2, v1, Landroid/widget/Chronometer;->mNow:J

    iget-boolean v0, v1, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v0, :cond_0

    iget-wide v4, v1, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v4, v2

    goto :goto_0

    :cond_0
    iget-wide v4, v1, Landroid/widget/Chronometer;->mBase:J

    sub-long v4, v2, v4

    :goto_0
    iget v0, v1, Landroid/widget/Chronometer;->mPlaySpeed:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_1

    long-to-float v0, v4

    iget v6, v1, Landroid/widget/Chronometer;->mPlaySpeed:F

    mul-float/2addr v0, v6

    float-to-long v4, v0

    :cond_1
    const/4 v0, 0x0

    iget-boolean v6, v1, Landroid/widget/Chronometer;->mIsFixedHourFormat:Z

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x0

    if-nez v6, :cond_5

    iget v6, v1, Landroid/widget/Chronometer;->mMilliSecondCount:I

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    div-long v11, v4, v7

    move-wide v4, v11

    const/4 v0, 0x0

    cmp-long v6, v4, v9

    if-gez v6, :cond_3

    neg-long v4, v4

    const/4 v0, 0x1

    :cond_3
    iget-object v6, v1, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v6, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v12

    const v13, 0x10408dd

    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-wide/from16 v16, v4

    move v4, v0

    move-object v0, v6

    move-wide/from16 v5, v16

    goto :goto_2

    :cond_4
    move-wide/from16 v16, v4

    move v4, v0

    move-object v0, v6

    move-wide/from16 v5, v16

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v6, v1, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Landroid/widget/Chronometer;->mIsFixedHourFormat:Z

    iget v12, v1, Landroid/widget/Chronometer;->mMilliSecondCount:I

    invoke-static {v6, v4, v5, v11, v12}, Landroid/text/format/DateUtils;->semFormatElapsedTime(Ljava/lang/StringBuilder;JZI)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v16, v4

    move v4, v0

    move-object v0, v6

    move-wide/from16 v5, v16

    :goto_2
    iget-boolean v11, v1, Landroid/widget/Chronometer;->mIsShowingSeconds:Z

    const/4 v12, 0x0

    if-nez v11, :cond_6

    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object v11, v0

    goto :goto_3

    :cond_6
    move-object v11, v0

    :goto_3
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    const/4 v13, 0x1

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v14, v0

    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v14, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iput-object v14, v1, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    new-instance v0, Ljava/util/Formatter;

    iget-object v15, v1, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v15, v14}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, v1, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    :cond_8
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    aput-object v11, v0, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v15, v1, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v12, v1, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v15, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, v1, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v12, v1, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v12, :cond_9

    const-string v12, "Chronometer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal format string: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v13, v1, Landroid/widget/Chronometer;->mLogged:Z

    :cond_9
    :goto_4
    iget v0, v1, Landroid/widget/Chronometer;->mMode:I

    if-eqz v0, :cond_b

    iget v0, v1, Landroid/widget/Chronometer;->mMode:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_a

    goto :goto_5

    :cond_a
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {v1, v11}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget v0, v1, Landroid/widget/Chronometer;->mMode:I

    if-eq v0, v13, :cond_c

    iget v0, v1, Landroid/widget/Chronometer;->mMode:I

    const/4 v9, 0x4

    if-ne v0, v9, :cond_10

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Chronometer;->getChronometerProgressDrawable()Landroid/widget/Chronometer$ChronometerProgressDrawable;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-wide v9, v1, Landroid/widget/Chronometer;->mWaringTime:J

    div-long/2addr v9, v7

    cmp-long v7, v5, v9

    if-gez v7, :cond_d

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_d

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v0, v13}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->setWarningMode(Z)V

    :cond_e
    iget-boolean v7, v1, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v7, :cond_10

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_f

    if-eqz v4, :cond_10

    :cond_f
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/widget/Chronometer;->mRunning:Z

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->cancelAnimator()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method greylist-max-o dispatchChronometerTick()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    :cond_0
    return-void
.end method

.method blacklist drawTrack(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroid/widget/Chronometer;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/Chronometer;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v2, p0, Landroid/widget/Chronometer;->mShouldStartAnimationDrawable:Z

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Chronometer;->mShouldStartAnimationDrawable:Z

    :cond_0
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBase()J
    .locals 2

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public blacklist hidden_semInvokeChronometer(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    :cond_0
    return-void
.end method

.method public blacklist hidden_semSetFixedHourFormat(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mIsFixedHourFormat:Z

    return-void
.end method

.method public blacklist hidden_semSetForceTickTime(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/Chronometer;->mRequestedTickTime:I

    return-void
.end method

.method public blacklist hidden_semSetMaxProgressValue(J)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    return-void
.end method

.method public blacklist hidden_semSetMilliSecondCount(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer;->mMilliSecondCount:I

    return-void
.end method

.method public greylist hidden_semSetMode(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/Chronometer;->mMode:I

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Chronometer;->initializeHorizontalProgressMode()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Chronometer;->initializeRoundCicleMode()V

    invoke-direct {p0}, Landroid/widget/Chronometer;->initCirCleStrokeWidth()V

    goto :goto_0

    :pswitch_3
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->invalidate()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public greylist hidden_semSetOriginalBase(J)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    return-void
.end method

.method public blacklist hidden_semSetProgressBackgroundColor(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/Chronometer;->mProgressBackgroundColor:I

    invoke-direct {p0}, Landroid/widget/Chronometer;->getChronometerBackgroundDrawable()Landroid/widget/Chronometer$ChronometerProgressDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->updateColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public blacklist hidden_semSetProgressColor(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    invoke-direct {p0}, Landroid/widget/Chronometer;->getChronometerProgressDrawable()Landroid/widget/Chronometer$ChronometerProgressDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/widget/Chronometer;->mProgressColor:I

    invoke-direct {p0, v1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v2, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    invoke-direct {p0, v2}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->updateColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public blacklist hidden_semSetProgressWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/Chronometer;->mRoundStrokeWidth:I

    return-void
.end method

.method public greylist hidden_semSetShowingSeconds(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mIsShowingSeconds:Z

    return-void
.end method

.method public greylist hidden_semSetTimeSpeed(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/Chronometer;->mPlaySpeed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/widget/Chronometer;->mPlaySpeed:F

    :cond_0
    return-void
.end method

.method public blacklist hidden_semSetWarningColor(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/Chronometer;->mProgressWarningColor:I

    invoke-direct {p0}, Landroid/widget/Chronometer;->getChronometerProgressDrawable()Landroid/widget/Chronometer$ChronometerProgressDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->setWarningColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public blacklist hidden_semSetWarningTime(J)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/Chronometer;->mWaringTime:J

    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/Chronometer;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public whitelist isCountDown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method public whitelist isTheFinalCountDown()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://youtu.be/9jK-NcRmVcw"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x81000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer$RefreshData;

    iget v4, v3, Landroid/widget/Chronometer$RefreshData;->id:I

    iget v5, v3, Landroid/widget/Chronometer$RefreshData;->progress:I

    iget-boolean v6, v3, Landroid/widget/Chronometer$RefreshData;->animate:Z

    invoke-direct {p0, v4, v5, v1, v6}, Landroid/widget/Chronometer;->doRefreshProgress(IIZZ)V

    invoke-virtual {v3}, Landroid/widget/Chronometer$RefreshData;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/Chronometer;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Chronometer;->mAttached:Z

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Chronometer;->mRefreshProgressRunnable:Landroid/widget/Chronometer$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRefreshIsPosted:Z

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mAttached:Z

    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Chronometer;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/widget/Chronometer;->mMinWidth:I

    iget v4, p0, Landroid/widget/Chronometer;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    iget v3, p0, Landroid/widget/Chronometer;->mMinHeight:I

    iget v4, p0, Landroid/widget/Chronometer;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    :cond_1
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateDrawableState()V

    iget v3, p0, Landroid/widget/Chronometer;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/Chronometer;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, p0, Landroid/widget/Chronometer;->mPaddingTop:I

    iget v4, p0, Landroid/widget/Chronometer;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Landroid/widget/Chronometer;->resolveSizeAndState(III)I

    move-result v4

    invoke-static {v1, p2, v3}, Landroid/widget/Chronometer;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/Chronometer;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getMeasuredHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/widget/Chronometer;->updateDrawableBounds(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist onProgressRefresh(FI)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public whitelist sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public whitelist setBase(J)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    :cond_1
    iget-wide v0, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-wide v4, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    :cond_2
    iget-wide v4, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    iget-wide v6, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    iget-wide v4, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    long-to-float v0, v2

    iget-wide v2, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Landroid/widget/Chronometer;->mProgress:I

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Chronometer;->mProgress:I

    iget v3, p0, Landroid/widget/Chronometer;->mProgress:I

    invoke-direct {p0, v3, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    goto :goto_1

    :cond_4
    :goto_0
    iget v0, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    :cond_5
    :goto_1
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public whitelist setCountDown(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public whitelist setFormat(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public whitelist setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-void
.end method

.method public greylist-max-o setStarted(Z)V
    .locals 9
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    :cond_0
    iget-wide v3, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-wide v3, p0, Landroid/widget/Chronometer;->mOriginalBase:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v3, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    iget-wide v7, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_3

    iget-wide v3, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    long-to-float v0, v3

    iget-wide v3, p0, Landroid/widget/Chronometer;->mFirstTimerSeconds:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Landroid/widget/Chronometer;->mProgress:I

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Chronometer;->mProgress:I

    iget v4, p0, Landroid/widget/Chronometer;->mProgress:I

    invoke-direct {p0, v4, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    goto :goto_1

    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    :cond_4
    :goto_1
    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    :cond_5
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public whitelist start()V
    .locals 2

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBaseTimerSeconds:J

    long-to-int v0, v0

    iput v0, p0, Landroid/widget/Chronometer;->mProgressAnimationDuration:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    iput-boolean v1, p0, Landroid/widget/Chronometer;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public whitelist stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    iget v1, p0, Landroid/widget/Chronometer;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/Chronometer;->mMaxProgress:I

    invoke-direct {p0, v1, v0}, Landroid/widget/Chronometer;->setProgressInternal(IZ)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
