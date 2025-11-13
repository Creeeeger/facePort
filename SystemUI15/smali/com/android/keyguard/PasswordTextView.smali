.class public Lcom/android/keyguard/PasswordTextView;
.super Lcom/android/keyguard/BaseSecPasswordTextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field public final mCharPadding:I

.field public final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field public final mDotSize:I

.field public final mGravity:I

.field public final mPM:Landroid/os/PowerManager;

.field public final mTextChars:Ljava/util/ArrayList;

.field public mTextHeightRaw:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/BaseSecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    sget-object p3, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/16 p4, 0x13

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    const/16 v1, 0x14

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p3, Lcom/android/systemui/res/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x4

    const/4 p4, 0x0

    :try_start_1
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    const/16 p3, 0x11

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070c87

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070c86

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    const/4 p3, -0x1

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const p3, 0x1040364

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    iget-object p1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setWillNotDraw(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public getCharBounds()Landroid/graphics/Rect;
    .locals 4

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "0"

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getTransformedText()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-char v3, v3, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public onAppend(CI)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le p2, v2, :cond_0

    new-instance v2, Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;I)V

    iput-char p1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    iput-char p1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    :goto_0
    iget-object p1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-boolean v4, p1, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    if-nez v4, :cond_2

    iget-object v5, v2, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-nez v5, :cond_2

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-nez v4, :cond_4

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iget-object v6, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_6

    iget-boolean v6, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v1

    :goto_4
    const-wide/16 v7, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v2, v7, v8}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    :cond_7
    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    new-array v10, v0, [F

    aput v4, v10, v3

    aput v9, v10, v1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, v2, Lcom/android/keyguard/PasswordTextView$CharState;->mTextSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, p1, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v10, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    sub-float v10, v9, v10

    mul-float/2addr v10, v5

    float-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_8

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, v2, Lcom/android/keyguard/PasswordTextView$CharState;->mTextTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$8;

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$4;

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, p1, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xa0

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    if-eqz v6, :cond_9

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    new-array v6, v0, [F

    aput v4, v6, v3

    aput v9, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v2, Lcom/android/keyguard/PasswordTextView$CharState;->mWidthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v6, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    sub-float/2addr v9, v6

    mul-float/2addr v9, v5

    float-to-long v5, v9

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    :cond_9
    iget-boolean v4, p1, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v3, v2, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    iget-object v4, v2, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    const-wide/16 v5, 0x514

    invoke-virtual {p1, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    :cond_a
    if-le p2, v1, :cond_c

    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/PasswordTextView$CharState;

    iget-boolean p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-virtual {p2, p1, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v7, v8}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    const-wide/16 p1, 0x1e

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    :cond_c
    :goto_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    return-void
.end method

.method public final onDelete(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/PasswordTextView$CharState;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/PasswordTextView$CharState;

    if-eqz v5, :cond_0

    int-to-float v6, v6

    iget v8, v0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v8, v8

    iget v9, v7, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    float-to-int v6, v8

    :cond_0
    int-to-float v6, v6

    int-to-float v8, v4

    iget v7, v7, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    float-to-int v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    int-to-float v2, v6

    iget v4, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_3

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    int-to-float v4, v2

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    div-float/2addr v2, v9

    sub-float/2addr v5, v2

    cmpl-float v2, v5, v8

    if-lez v2, :cond_4

    move v4, v5

    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v11

    add-int/2addr v11, v10

    int-to-float v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    int-to-float v5, v11

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v2, :cond_9

    iget-object v12, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/PasswordTextView$CharState;

    iget v13, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v14, v13, v8

    if-lez v14, :cond_5

    move v14, v6

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    iget v15, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v15, v15, v8

    if-lez v15, :cond_6

    move v15, v6

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_4
    iget v3, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v3, v5

    iget-object v6, v12, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    if-eqz v14, :cond_7

    int-to-float v14, v7

    div-float v16, v14, v9

    mul-float v16, v16, v13

    add-float v16, v16, v10

    iget v13, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    mul-float/2addr v14, v13

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v14, v13

    add-float v14, v14, v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v13, v3, v9

    add-float/2addr v13, v4

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    iget v13, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    invoke-virtual {v1, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    iget-char v13, v12, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    invoke-static {v13}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v6, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v8, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v13, v3, v9

    add-float/2addr v13, v4

    invoke-virtual {v1, v13, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v13, v6, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    iget v14, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    mul-float/2addr v13, v14

    iget-object v14, v6, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v8, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    iget v6, v6, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v6, v6

    iget v12, v12, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    invoke-static {v6, v12, v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final onReset(Z)V
    .locals 13

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/PasswordTextView$CharState;

    if-gt v3, v1, :cond_0

    mul-int/lit8 v5, v3, 0x2

    goto :goto_1

    :cond_0
    sub-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    :goto_1
    int-to-long v5, v5

    const-wide/16 v7, 0x28

    mul-long/2addr v5, v7

    const-wide/16 v9, 0xc8

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    int-to-long v11, v0

    mul-long/2addr v7, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const-wide/16 v9, 0xa0

    add-long/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    iget-object v5, v4, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    iget-object v6, v4, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v2, v4, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public final onUserActivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-super {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->onUserActivity()V

    return-void
.end method
