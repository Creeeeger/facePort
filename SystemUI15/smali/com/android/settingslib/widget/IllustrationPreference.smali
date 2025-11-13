.class public Lcom/android/settingslib/widget/IllustrationPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

.field public final mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

.field public mCacheComposition:Z

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

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference$1;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance p1, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference$2;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    const p1, 0x7f0d012c

    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

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

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference$1;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference$2;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p3, p0}, Lcom/android/settingslib/widget/IllustrationPreference$1;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance p3, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {p3, p0}, Lcom/android/settingslib/widget/IllustrationPreference$2;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p3, p0}, Lcom/android/settingslib/widget/IllustrationPreference$1;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    new-instance p3, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {p3, p0}, Lcom/android/settingslib/widget/IllustrationPreference$2;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object p3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f0d012c

    iput v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

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
    .locals 10

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0148

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0713

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0665

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v4, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const v6, 0x7f0a051e

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

    iget v4, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    const/16 v5, 0x8

    const/4 v6, -0x1

    if-lez v4, :cond_f

    sget-object v4, Lcom/android/settingslib/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/widget/flags/FeatureFlagsImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v7, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_8

    :catch_0
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception v7

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v7, "IllustrationPreference"

    const-string v8, "Unable to open Lottie raw resource"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v7, p1, Landroid/graphics/drawable/Animatable;

    if-nez v7, :cond_4

    goto :goto_6

    :cond_4
    instance-of v7, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v7, :cond_5

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    goto :goto_5

    :cond_5
    instance-of v7, p1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v7, :cond_9

    move-object v7, p1

    check-cast v7, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    check-cast v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    check-cast v8, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    goto :goto_5

    :cond_6
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    if-eqz v8, :cond_7

    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v3, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    :cond_7
    iget-object v3, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_9
    :goto_5
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    :goto_6
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    instance-of v3, p1, Landroid/graphics/drawable/Animatable;

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    instance-of v3, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v3, :cond_b

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/Animatable2;

    iget-object v4, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-interface {v3, v4}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_7

    :cond_b
    instance-of v3, p1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v3, :cond_c

    move-object v3, p1

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    iget-object v4, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Lcom/android/settingslib/widget/IllustrationPreference$2;

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    goto :goto_7

    :cond_c
    instance-of v3, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_d

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    :cond_d
    :goto_7
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_8

    :cond_e
    iget p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    new-instance v3, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v2, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_f
    :goto_8
    iget p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    if-ne p1, v6, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07139e

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07139c

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v4, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    int-to-float v0, v3

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v4

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    :goto_9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mLottieDynamicColor:Z

    if-eqz p1, :cond_11

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_11
    return-void
.end method
