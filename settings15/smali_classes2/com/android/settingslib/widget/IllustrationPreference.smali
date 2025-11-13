.class public Lcom/android/settingslib/widget/IllustrationPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

.field public final mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

.field public mCacheComposition:Z

.field public mContentDescription:Ljava/lang/CharSequence;

.field public mImageDrawable:Landroid/graphics/drawable/Drawable;

.field public mImageResId:I

.field public mLottieDynamicColor:Z

.field public final mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    new-instance p1, Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-direct {p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance p1, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    const p1, 0x7f0d0440

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-direct {v0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init$7(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    new-instance p3, Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-direct {p3}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance p3, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init$7(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    new-instance p3, Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-direct {p3}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance p3, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init$7(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/Animatable2;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    :cond_2
    :goto_0
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method


# virtual methods
.method public final init$7(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f0d0440

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    sget-object v0, Lcom/android/settingslib/widget/preference/illustration/R$styleable;->IllustrationPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mLottieDynamicColor:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0171

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0975

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0905

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const v5, 0x7f0a07c2

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    iget-object v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-lez v3, :cond_6

    :try_start_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v6, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v6

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v6, "IllustrationPreference"

    const-string v7, "Unable to open Lottie raw resource"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {v2}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_5
    iget p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    new-instance v3, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_6
    :goto_5
    iget p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    if-ne p1, v5, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0711f3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x7f0711f1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v5, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    int-to-float v0, v3

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v5

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    :goto_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mLottieDynamicColor:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_8
    return-void
.end method

.method public final setLottieAnimationResId(I)V
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    :cond_3
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method
