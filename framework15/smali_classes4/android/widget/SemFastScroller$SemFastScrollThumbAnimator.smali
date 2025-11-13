.class Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;
.super Ljava/lang/Object;
.source "SemFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemFastScrollThumbAnimator"
.end annotation


# static fields
.field private static final blacklist DEFAULT_SCROLL_BAR_VALUE:F = 0.0f

.field private static final blacklist FAST_SCROLL_BAR_VALUE:F = 1.0f


# instance fields
.field private final blacklist mActivatedColor:I

.field private blacklist mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

.field private final blacklist mColorAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mDefaultColor:I

.field private blacklist mIsDragging:Z

.field private final blacklist mMaxWidthPx:F

.field private final blacklist mMinWidthPx:F

.field private final blacklist mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBgDrawable(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)Landroid/widget/SemFastScrollerBgDrawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxWidthPx(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)F
    .locals 0

    iget p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMaxWidthPx:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinWidthPx(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)F
    .locals 0

    iget p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMinWidthPx:F

    return p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mIsDragging:Z

    const v0, 0x102064b

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/widget/SemFastScrollerBgDrawable;

    iput-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMinWidthPx:F

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMaxWidthPx:F

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_0

    const v3, 0x10604d6

    goto :goto_0

    :cond_0
    const v3, 0x10604d5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-direct {p0, v2, v3}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->setAlphaComponent(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    const/16 v2, 0x99

    invoke-direct {p0, v0, v2}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->setAlphaComponent(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    iget v3, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMinWidthPx:F

    invoke-virtual {v2, v3}, Landroid/widget/SemFastScrollerBgDrawable;->setValue(F)V

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    iget v3, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    invoke-virtual {v2, v3}, Landroid/widget/SemFastScrollerBgDrawable;->setArgb(I)V

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    invoke-virtual {v2}, Landroid/widget/SemFastScrollerBgDrawable;->invalidateSelf()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$1;

    invoke-direct {v5, p0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$1;-><init>(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    iget v5, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v8, v8, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;

    invoke-direct {v3, p0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;-><init>(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist getPrimaryColor(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010433

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    return v1
.end method

.method private blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist setAlphaComponent(II)I
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0xff

    if-gt p2, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p2, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public blacklist setDragging(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mIsDragging:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mIsDragging:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    iget v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    iget v2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :goto_0
    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
