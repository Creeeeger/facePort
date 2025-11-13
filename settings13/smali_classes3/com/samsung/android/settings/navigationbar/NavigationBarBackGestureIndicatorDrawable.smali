.class public Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NavigationBarBackGestureIndicatorDrawable.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mCurrentWidth:F

.field private mDrawLocation:I

.field private mFinalHeight:F

.field private mFinalWidth:F

.field private final mHandler:Landroid/os/Handler;

.field private mHeightChangePerMs:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mWidthChangePerMs:F


# direct methods
.method public static synthetic $r8$lambda$Pgc6wcRZGfoVIt44qfwnbRBRXdg(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->lambda$new$0(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentHeight(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentHeight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWidth(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinalHeight(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalHeight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinalWidth(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeAnimator(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)Landroid/animation/TimeAnimator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFinalHeight(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalHeight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFinalWidth(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalWidth:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHeightChangePerMs(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHeightChangePerMs:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidthChangePerMs(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mWidthChangePerMs:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 49
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mContext:Landroid/content/Context;

    .line 83
    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mDrawLocation:I

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance p2, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    .line 87
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->updateCurrentWidth(JJ)V

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private updateCurrentWidth(JJ)V
    .locals 2

    long-to-float p3, p3

    .line 93
    iget p4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mWidthChangePerMs:F

    mul-float/2addr p4, p3

    .line 94
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHeightChangePerMs:F

    mul-float/2addr p3, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    .line 95
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalWidth:F

    iget p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentWidth:F

    sub-float/2addr p1, p2

    .line 96
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentWidth:F

    iget p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalWidth:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p4, p2

    add-float/2addr p1, p4

    .line 102
    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentWidth:F

    .line 103
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentHeight:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentHeight:F

    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalWidth:F

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentWidth:F

    .line 98
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalHeight:F

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentHeight:F

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->end()V

    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->samsung_navigationbar_back_gesture_indicator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentWidth:F

    float-to-int v0, v0

    .line 113
    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mCurrentHeight:F

    float-to-int v1, v1

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 117
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 119
    iget v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mDrawLocation:I

    const/4 v6, 0x0

    const/16 v7, 0x1e

    if-ne v5, v7, :cond_0

    sub-int v0, v2, v0

    .line 120
    invoke-virtual {v4, v6, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v1

    .line 122
    invoke-virtual {v4, v6, v6, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mDrawLocation:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    sub-int/2addr v3, v0

    .line 124
    invoke-virtual {v4, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 128
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWidth()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mFinalWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public setWidth(II)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
