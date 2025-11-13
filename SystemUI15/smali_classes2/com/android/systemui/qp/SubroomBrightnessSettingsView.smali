.class public Lcom/android/systemui/qp/SubroomBrightnessSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final SEEK_BAR_MAX_VALUE:I

.field public mBrightness:I

.field public final mBrightnessLevels:[I

.field public final mContext:Landroid/content/Context;

.field public mDualSeekBarThreshold:I

.field public mIsSliderWarning:Z

.field public mMoreIcon:Landroid/widget/ImageView;

.field public mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

.field public mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

.field public mThumbAnimator:Landroid/animation/ValueAnimator;

.field public mThumbThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070167

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightnessLevels:[I

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    iput p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->SEEK_BAR_MAX_VALUE:I

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x49

    const/4 v2, -0x2

    const-string/jumbo v3, "sub_screen_brightness"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow() mBrightness: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    const-string v2, "SubroomBrightnessSettingsView"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    const v1, 0x7f13104b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    const v1, 0x7f060989

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    const v1, 0x7f1312e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIsSliderWarning:Z

    if-eqz p0, :cond_2

    const p0, 0x7f08100a

    goto :goto_0

    :cond_2
    const p0, 0x7f0813ee

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0c55

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->SEEK_BAR_MAX_VALUE:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f1312e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    const v2, 0x7f0a0c61

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f060989

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0xff

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    return-void
.end method

.method public final setDualSeekBarResources(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIsSliderWarning:Z

    if-eq p1, v1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mIsSliderWarning:Z

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0813ee

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const v2, 0x7f0813ef

    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    :cond_4
    return-void
.end method

.method public final setThumbScale(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mThumbThreshold:I

    const/16 v0, 0x2710

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mThumbThreshold:I

    div-int/2addr p1, p0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_2
    :goto_0
    return-void
.end method
